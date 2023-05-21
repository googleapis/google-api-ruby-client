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
      
      # Represents the natural speech audio to be processed.
      class GoogleCloudDialogflowCxV3AudioInput
        include Google::Apis::Core::Hashable
      
        # The natural language speech audio to be processed. A single request can
        # contain up to 2 minutes of speech audio data. The transcribed text cannot
        # contain more than 256 bytes. For non-streaming audio detect intent, both `
        # config` and `audio` must be provided. For streaming audio detect intent, `
        # config` must be provided in the first request and `audio` must be provided in
        # all following requests.
        # Corresponds to the JSON property `audio`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :audio
      
        # Instructs the speech recognizer on how to process the audio content.
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3InputAudioConfig]
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
      
      # Metadata returned for the TestCases.BatchRunTestCases long running operation.
      class GoogleCloudDialogflowCxV3BatchRunTestCasesMetadata
        include Google::Apis::Core::Hashable
      
        # The test errors.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3TestError>]
        attr_accessor :errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @errors = args[:errors] if args.key?(:errors)
        end
      end
      
      # The response message for TestCases.BatchRunTestCases.
      class GoogleCloudDialogflowCxV3BatchRunTestCasesResponse
        include Google::Apis::Core::Hashable
      
        # The test case results. The detailed conversation turns are empty in this
        # response.
        # Corresponds to the JSON property `results`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3TestCaseResult>]
        attr_accessor :results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @results = args[:results] if args.key?(:results)
        end
      end
      
      # Represents a result from running a test case in an agent environment.
      class GoogleCloudDialogflowCxV3ContinuousTestResult
        include Google::Apis::Core::Hashable
      
        # The resource name for the continuous test result. Format: `projects//locations/
        # /agents//environments//continuousTestResults/`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The result of this continuous test run, i.e. whether all the tests in this
        # continuous test run pass or not.
        # Corresponds to the JSON property `result`
        # @return [String]
        attr_accessor :result
      
        # Time when the continuous testing run starts.
        # Corresponds to the JSON property `runTime`
        # @return [String]
        attr_accessor :run_time
      
        # A list of individual test case results names in this continuous test run.
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
      
      # This message is used to hold all the Conversation Signals data, which will be
      # converted to JSON and exported to BigQuery.
      class GoogleCloudDialogflowCxV3ConversationSignals
        include Google::Apis::Core::Hashable
      
        # Collection of all signals that were extracted for a single turn of the
        # conversation.
        # Corresponds to the JSON property `turnSignals`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3TurnSignals]
        attr_accessor :turn_signals
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @turn_signals = args[:turn_signals] if args.key?(:turn_signals)
        end
      end
      
      # One interaction between a human and virtual agent. The human provides some
      # input and the virtual agent provides a response.
      class GoogleCloudDialogflowCxV3ConversationTurn
        include Google::Apis::Core::Hashable
      
        # The input from the human user.
        # Corresponds to the JSON property `userInput`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ConversationTurnUserInput]
        attr_accessor :user_input
      
        # The output from the virtual agent.
        # Corresponds to the JSON property `virtualAgentOutput`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput]
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
      
      # The input from the human user.
      class GoogleCloudDialogflowCxV3ConversationTurnUserInput
        include Google::Apis::Core::Hashable
      
        # Whether sentiment analysis is enabled.
        # Corresponds to the JSON property `enableSentimentAnalysis`
        # @return [Boolean]
        attr_accessor :enable_sentiment_analysis
        alias_method :enable_sentiment_analysis?, :enable_sentiment_analysis
      
        # Parameters that need to be injected into the conversation during intent
        # detection.
        # Corresponds to the JSON property `injectedParameters`
        # @return [Hash<String,Object>]
        attr_accessor :injected_parameters
      
        # Represents the query input. It can contain one of: 1. A conversational query
        # in the form of text. 2. An intent query that specifies which intent to trigger.
        # 3. Natural language speech audio to be processed. 4. An event to be triggered.
        # 5. DTMF digits to invoke an intent and fill in parameter value.
        # Corresponds to the JSON property `input`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3QueryInput]
        attr_accessor :input
      
        # If webhooks should be allowed to trigger in response to the user utterance.
        # Often if parameters are injected, webhooks should not be enabled.
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
      
      # The output from the virtual agent.
      class GoogleCloudDialogflowCxV3ConversationTurnVirtualAgentOutput
        include Google::Apis::Core::Hashable
      
        # A Dialogflow CX conversation (session) can be described and visualized as a
        # state machine. The states of a CX session are represented by pages. For each
        # flow, you define many pages, where your combined pages can handle a complete
        # conversation on the topics the flow is designed for. At any given moment,
        # exactly one page is the current page, the current page is considered active,
        # and the flow associated with that page is considered active. Every flow has a
        # special start page. When a flow initially becomes active, the start page page
        # becomes the current page. For each conversational turn, the current page will
        # either stay the same or transition to another page. You configure each page to
        # collect information from the end-user that is relevant for the conversational
        # state represented by the page. For more information, see the [Page guide](
        # https://cloud.google.com/dialogflow/cx/docs/concept/page).
        # Corresponds to the JSON property `currentPage`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3Page]
        attr_accessor :current_page
      
        # Required. Input only. The diagnostic info output for the turn. Required to
        # calculate the testing coverage.
        # Corresponds to the JSON property `diagnosticInfo`
        # @return [Hash<String,Object>]
        attr_accessor :diagnostic_info
      
        # Output only. If this is part of a result conversation turn, the list of
        # differences between the original run and the replay for this output, if any.
        # Corresponds to the JSON property `differences`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3TestRunDifference>]
        attr_accessor :differences
      
        # The session parameters available to the bot at this point.
        # Corresponds to the JSON property `sessionParameters`
        # @return [Hash<String,Object>]
        attr_accessor :session_parameters
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::DialogflowV3beta1::GoogleRpcStatus]
        attr_accessor :status
      
        # The text responses from the agent for the turn.
        # Corresponds to the JSON property `textResponses`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ResponseMessageText>]
        attr_accessor :text_responses
      
        # An intent represents a user's intent to interact with a conversational agent.
        # You can provide information for the Dialogflow API to use to match user input
        # to an intent by adding training phrases (i.e., examples of user input) to your
        # intent.
        # Corresponds to the JSON property `triggeredIntent`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3Intent]
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
      
      # Metadata for CreateDocument operation.
      class GoogleCloudDialogflowCxV3CreateDocumentOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Metadata in google::longrunning::Operation for Knowledge operations.
        # Corresponds to the JSON property `genericMetadata`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata]
        attr_accessor :generic_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @generic_metadata = args[:generic_metadata] if args.key?(:generic_metadata)
        end
      end
      
      # Metadata associated with the long running operation for Versions.CreateVersion.
      class GoogleCloudDialogflowCxV3CreateVersionOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Name of the created version. Format: `projects//locations//agents//flows//
        # versions/`.
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
      
      # Metadata for DeleteDocument operation.
      class GoogleCloudDialogflowCxV3DeleteDocumentOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Metadata in google::longrunning::Operation for Knowledge operations.
        # Corresponds to the JSON property `genericMetadata`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata]
        attr_accessor :generic_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @generic_metadata = args[:generic_metadata] if args.key?(:generic_metadata)
        end
      end
      
      # Metadata returned for the Environments.DeployFlow long running operation.
      class GoogleCloudDialogflowCxV3DeployFlowMetadata
        include Google::Apis::Core::Hashable
      
        # Errors of running deployment tests.
        # Corresponds to the JSON property `testErrors`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3TestError>]
        attr_accessor :test_errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @test_errors = args[:test_errors] if args.key?(:test_errors)
        end
      end
      
      # The response message for Environments.DeployFlow.
      class GoogleCloudDialogflowCxV3DeployFlowResponse
        include Google::Apis::Core::Hashable
      
        # The name of the flow version Deployment. Format: `projects//locations//agents//
        # environments//deployments/`.
        # Corresponds to the JSON property `deployment`
        # @return [String]
        attr_accessor :deployment
      
        # Represents an environment for an agent. You can create multiple versions of
        # your agent and publish them to separate environments. When you edit an agent,
        # you are editing the draft agent. At any point, you can save the draft agent as
        # an agent version, which is an immutable snapshot of your agent. When you save
        # the draft agent, it is published to the default environment. When you create
        # agent versions, you can publish them to custom environments. You can create a
        # variety of custom environments for testing, development, production, etc.
        # Corresponds to the JSON property `environment`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3Environment]
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
      
      # Represents the input for dtmf event.
      class GoogleCloudDialogflowCxV3DtmfInput
        include Google::Apis::Core::Hashable
      
        # The dtmf digits.
        # Corresponds to the JSON property `digits`
        # @return [String]
        attr_accessor :digits
      
        # The finish digit (if any).
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
      
      # Represents an environment for an agent. You can create multiple versions of
      # your agent and publish them to separate environments. When you edit an agent,
      # you are editing the draft agent. At any point, you can save the draft agent as
      # an agent version, which is an immutable snapshot of your agent. When you save
      # the draft agent, it is published to the default environment. When you create
      # agent versions, you can publish them to custom environments. You can create a
      # variety of custom environments for testing, development, production, etc.
      class GoogleCloudDialogflowCxV3Environment
        include Google::Apis::Core::Hashable
      
        # The human-readable description of the environment. The maximum length is 500
        # characters. If exceeded, the request is rejected.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The human-readable name of the environment (unique in an agent).
        # Limit of 64 characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The name of the environment. Format: `projects//locations//agents//
        # environments/`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The configuration for continuous tests.
        # Corresponds to the JSON property `testCasesConfig`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig]
        attr_accessor :test_cases_config
      
        # Output only. Update time of this environment.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # A list of configurations for flow versions. You should include version configs
        # for all flows that are reachable from `Start Flow` in the agent. Otherwise, an
        # error will be returned.
        # Corresponds to the JSON property `versionConfigs`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3EnvironmentVersionConfig>]
        attr_accessor :version_configs
      
        # Configuration for webhooks.
        # Corresponds to the JSON property `webhookConfig`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3EnvironmentWebhookConfig]
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
      
      # The configuration for continuous tests.
      class GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig
        include Google::Apis::Core::Hashable
      
        # Whether to run test cases in TestCasesConfig.test_cases periodically. Default
        # false. If set to true, run once a day.
        # Corresponds to the JSON property `enableContinuousRun`
        # @return [Boolean]
        attr_accessor :enable_continuous_run
        alias_method :enable_continuous_run?, :enable_continuous_run
      
        # Whether to run test cases in TestCasesConfig.test_cases before deploying a
        # flow version to the environment. Default false.
        # Corresponds to the JSON property `enablePredeploymentRun`
        # @return [Boolean]
        attr_accessor :enable_predeployment_run
        alias_method :enable_predeployment_run?, :enable_predeployment_run
      
        # A list of test case names to run. They should be under the same agent. Format
        # of each test case name: `projects//locations/ /agents//testCases/`
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
      
      # Configuration for the version.
      class GoogleCloudDialogflowCxV3EnvironmentVersionConfig
        include Google::Apis::Core::Hashable
      
        # Required. Format: projects//locations//agents//flows//versions/.
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
      
      # Configuration for webhooks.
      class GoogleCloudDialogflowCxV3EnvironmentWebhookConfig
        include Google::Apis::Core::Hashable
      
        # The list of webhooks to override for the agent environment. The webhook must
        # exist in the agent. You can override fields in `generic_web_service` and `
        # service_directory`.
        # Corresponds to the JSON property `webhookOverrides`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3Webhook>]
        attr_accessor :webhook_overrides
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @webhook_overrides = args[:webhook_overrides] if args.key?(:webhook_overrides)
        end
      end
      
      # An event handler specifies an event that can be handled during a session. When
      # the specified event happens, the following actions are taken in order: * If
      # there is a `trigger_fulfillment` associated with the event, it will be called.
      # * If there is a `target_page` associated with the event, the session will
      # transition into the specified page. * If there is a `target_flow` associated
      # with the event, the session will transition into the specified flow.
      class GoogleCloudDialogflowCxV3EventHandler
        include Google::Apis::Core::Hashable
      
        # Required. The name of the event to handle.
        # Corresponds to the JSON property `event`
        # @return [String]
        attr_accessor :event
      
        # Output only. The unique identifier of this event handler.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The target flow to transition to. Format: `projects//locations//agents//flows/`
        # .
        # Corresponds to the JSON property `targetFlow`
        # @return [String]
        attr_accessor :target_flow
      
        # The target page to transition to. Format: `projects//locations//agents//flows//
        # pages/`.
        # Corresponds to the JSON property `targetPage`
        # @return [String]
        attr_accessor :target_page
      
        # A fulfillment can do one or more of the following actions at the same time: *
        # Generate rich message responses. * Set parameter values. * Call the webhook.
        # Fulfillments can be called at various stages in the Page or Form lifecycle.
        # For example, when a DetectIntentRequest drives a session to enter a new page,
        # the page's entry fulfillment can add a static response to the QueryResult in
        # the returning DetectIntentResponse, call the webhook (for example, to load
        # user data from a database), or both.
        # Corresponds to the JSON property `triggerFulfillment`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3Fulfillment]
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
          @trigger_fulfillment = args[:trigger_fulfillment] if args.key?(:trigger_fulfillment)
        end
      end
      
      # Represents the event to trigger.
      class GoogleCloudDialogflowCxV3EventInput
        include Google::Apis::Core::Hashable
      
        # Name of the event.
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
      
      # The response message for Agents.ExportAgent.
      class GoogleCloudDialogflowCxV3ExportAgentResponse
        include Google::Apis::Core::Hashable
      
        # Uncompressed raw byte content for agent.
        # Corresponds to the JSON property `agentContent`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :agent_content
      
        # The URI to a file containing the exported agent. This field is populated if `
        # agent_uri` is specified in ExportAgentRequest.
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
      
      # The response message for Flows.ExportFlow.
      class GoogleCloudDialogflowCxV3ExportFlowResponse
        include Google::Apis::Core::Hashable
      
        # Uncompressed raw byte content for flow.
        # Corresponds to the JSON property `flowContent`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :flow_content
      
        # The URI to a file containing the exported flow. This field is populated only
        # if `flow_uri` is specified in ExportFlowRequest.
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
      
      # Metadata returned for the TestCases.ExportTestCases long running operation.
      # This message currently has no fields.
      class GoogleCloudDialogflowCxV3ExportTestCasesMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The response message for TestCases.ExportTestCases.
      class GoogleCloudDialogflowCxV3ExportTestCasesResponse
        include Google::Apis::Core::Hashable
      
        # Uncompressed raw byte content for test cases.
        # Corresponds to the JSON property `content`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :content
      
        # The URI to a file containing the exported test cases. This field is populated
        # only if `gcs_uri` is specified in ExportTestCasesRequest.
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
      
      # A form is a data model that groups related parameters that can be collected
      # from the user. The process in which the agent prompts the user and collects
      # parameter values from the user is called form filling. A form can be added to
      # a page. When form filling is done, the filled parameters will be written to
      # the session.
      class GoogleCloudDialogflowCxV3Form
        include Google::Apis::Core::Hashable
      
        # Parameters to collect from the user.
        # Corresponds to the JSON property `parameters`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3FormParameter>]
        attr_accessor :parameters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parameters = args[:parameters] if args.key?(:parameters)
        end
      end
      
      # Represents a form parameter.
      class GoogleCloudDialogflowCxV3FormParameter
        include Google::Apis::Core::Hashable
      
        # The default value of an optional parameter. If the parameter is required, the
        # default value will be ignored.
        # Corresponds to the JSON property `defaultValue`
        # @return [Object]
        attr_accessor :default_value
      
        # Required. The human-readable name of the parameter, unique within the form.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. The entity type of the parameter. Format: `projects/-/locations/-/
        # agents/-/entityTypes/` for system entity types (for example, `projects/-/
        # locations/-/agents/-/entityTypes/sys.date`), or `projects//locations//agents//
        # entityTypes/` for developer entity types.
        # Corresponds to the JSON property `entityType`
        # @return [String]
        attr_accessor :entity_type
      
        # Configuration for how the filling of a parameter should be handled.
        # Corresponds to the JSON property `fillBehavior`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3FormParameterFillBehavior]
        attr_accessor :fill_behavior
      
        # Indicates whether the parameter represents a list of values.
        # Corresponds to the JSON property `isList`
        # @return [Boolean]
        attr_accessor :is_list
        alias_method :is_list?, :is_list
      
        # Indicates whether the parameter content should be redacted in log. If
        # redaction is enabled, the parameter content will be replaced by parameter name
        # during logging. Note: the parameter content is subject to redaction if either
        # parameter level redaction or entity type level redaction is enabled.
        # Corresponds to the JSON property `redact`
        # @return [Boolean]
        attr_accessor :redact
        alias_method :redact?, :redact
      
        # Indicates whether the parameter is required. Optional parameters will not
        # trigger prompts; however, they are filled if the user specifies them. Required
        # parameters must be filled before form filling concludes.
        # Corresponds to the JSON property `required`
        # @return [Boolean]
        attr_accessor :required
        alias_method :required?, :required
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_value = args[:default_value] if args.key?(:default_value)
          @display_name = args[:display_name] if args.key?(:display_name)
          @entity_type = args[:entity_type] if args.key?(:entity_type)
          @fill_behavior = args[:fill_behavior] if args.key?(:fill_behavior)
          @is_list = args[:is_list] if args.key?(:is_list)
          @redact = args[:redact] if args.key?(:redact)
          @required = args[:required] if args.key?(:required)
        end
      end
      
      # Configuration for how the filling of a parameter should be handled.
      class GoogleCloudDialogflowCxV3FormParameterFillBehavior
        include Google::Apis::Core::Hashable
      
        # A fulfillment can do one or more of the following actions at the same time: *
        # Generate rich message responses. * Set parameter values. * Call the webhook.
        # Fulfillments can be called at various stages in the Page or Form lifecycle.
        # For example, when a DetectIntentRequest drives a session to enter a new page,
        # the page's entry fulfillment can add a static response to the QueryResult in
        # the returning DetectIntentResponse, call the webhook (for example, to load
        # user data from a database), or both.
        # Corresponds to the JSON property `initialPromptFulfillment`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3Fulfillment]
        attr_accessor :initial_prompt_fulfillment
      
        # The handlers for parameter-level events, used to provide reprompt for the
        # parameter or transition to a different page/flow. The supported events are: * `
        # sys.no-match-`, where N can be from 1 to 6 * `sys.no-match-default` * `sys.no-
        # input-`, where N can be from 1 to 6 * `sys.no-input-default` * `sys.invalid-
        # parameter` `initial_prompt_fulfillment` provides the first prompt for the
        # parameter. If the user's response does not fill the parameter, a no-match/no-
        # input event will be triggered, and the fulfillment associated with the `sys.no-
        # match-1`/`sys.no-input-1` handler (if defined) will be called to provide a
        # prompt. The `sys.no-match-2`/`sys.no-input-2` handler (if defined) will
        # respond to the next no-match/no-input event, and so on. A `sys.no-match-
        # default` or `sys.no-input-default` handler will be used to handle all
        # following no-match/no-input events after all numbered no-match/no-input
        # handlers for the parameter are consumed. A `sys.invalid-parameter` handler can
        # be defined to handle the case where the parameter values have been `
        # invalidated` by webhook. For example, if the user's response fill the
        # parameter, however the parameter was invalidated by webhook, the fulfillment
        # associated with the `sys.invalid-parameter` handler (if defined) will be
        # called to provide a prompt. If the event handler for the corresponding event
        # can't be found on the parameter, `initial_prompt_fulfillment` will be re-
        # prompted.
        # Corresponds to the JSON property `repromptEventHandlers`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3EventHandler>]
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
      
      # A fulfillment can do one or more of the following actions at the same time: *
      # Generate rich message responses. * Set parameter values. * Call the webhook.
      # Fulfillments can be called at various stages in the Page or Form lifecycle.
      # For example, when a DetectIntentRequest drives a session to enter a new page,
      # the page's entry fulfillment can add a static response to the QueryResult in
      # the returning DetectIntentResponse, call the webhook (for example, to load
      # user data from a database), or both.
      class GoogleCloudDialogflowCxV3Fulfillment
        include Google::Apis::Core::Hashable
      
        # Conditional cases for this fulfillment.
        # Corresponds to the JSON property `conditionalCases`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3FulfillmentConditionalCases>]
        attr_accessor :conditional_cases
      
        # The list of rich message responses to present to the user.
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ResponseMessage>]
        attr_accessor :messages
      
        # Whether Dialogflow should return currently queued fulfillment response
        # messages in streaming APIs. If a webhook is specified, it happens before
        # Dialogflow invokes webhook. Warning: 1) This flag only affects streaming API.
        # Responses are still queued and returned once in non-streaming API. 2) The flag
        # can be enabled in any fulfillment but only the first 3 partial responses will
        # be returned. You may only want to apply it to fulfillments that have slow
        # webhooks.
        # Corresponds to the JSON property `returnPartialResponses`
        # @return [Boolean]
        attr_accessor :return_partial_responses
        alias_method :return_partial_responses?, :return_partial_responses
      
        # Set parameter values before executing the webhook.
        # Corresponds to the JSON property `setParameterActions`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3FulfillmentSetParameterAction>]
        attr_accessor :set_parameter_actions
      
        # The value of this field will be populated in the WebhookRequest `
        # fulfillmentInfo.tag` field by Dialogflow when the associated webhook is called.
        # The tag is typically used by the webhook service to identify which
        # fulfillment is being called, but it could be used for other purposes. This
        # field is required if `webhook` is specified.
        # Corresponds to the JSON property `tag`
        # @return [String]
        attr_accessor :tag
      
        # The webhook to call. Format: `projects//locations//agents//webhooks/`.
        # Corresponds to the JSON property `webhook`
        # @return [String]
        attr_accessor :webhook
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conditional_cases = args[:conditional_cases] if args.key?(:conditional_cases)
          @messages = args[:messages] if args.key?(:messages)
          @return_partial_responses = args[:return_partial_responses] if args.key?(:return_partial_responses)
          @set_parameter_actions = args[:set_parameter_actions] if args.key?(:set_parameter_actions)
          @tag = args[:tag] if args.key?(:tag)
          @webhook = args[:webhook] if args.key?(:webhook)
        end
      end
      
      # A list of cascading if-else conditions. Cases are mutually exclusive. The
      # first one with a matching condition is selected, all the rest ignored.
      class GoogleCloudDialogflowCxV3FulfillmentConditionalCases
        include Google::Apis::Core::Hashable
      
        # A list of cascading if-else conditions.
        # Corresponds to the JSON property `cases`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase>]
        attr_accessor :cases
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cases = args[:cases] if args.key?(:cases)
        end
      end
      
      # Each case has a Boolean condition. When it is evaluated to be True, the
      # corresponding messages will be selected and evaluated recursively.
      class GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase
        include Google::Apis::Core::Hashable
      
        # A list of case content.
        # Corresponds to the JSON property `caseContent`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent>]
        attr_accessor :case_content
      
        # The condition to activate and select this case. Empty means the condition is
        # always true. The condition is evaluated against form parameters or session
        # parameters. See the [conditions reference](https://cloud.google.com/dialogflow/
        # cx/docs/reference/condition).
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
      
      # The list of messages or conditional cases to activate for this case.
      class GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent
        include Google::Apis::Core::Hashable
      
        # A list of cascading if-else conditions. Cases are mutually exclusive. The
        # first one with a matching condition is selected, all the rest ignored.
        # Corresponds to the JSON property `additionalCases`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3FulfillmentConditionalCases]
        attr_accessor :additional_cases
      
        # Represents a response message that can be returned by a conversational agent.
        # Response messages are also used for output audio synthesis. The approach is as
        # follows: * If at least one OutputAudioText response is present, then all
        # OutputAudioText responses are linearly concatenated, and the result is used
        # for output audio synthesis. * If the OutputAudioText responses are a mixture
        # of text and SSML, then the concatenated result is treated as SSML; otherwise,
        # the result is treated as either text or SSML as appropriate. The agent
        # designer should ideally use either text or SSML consistently throughout the
        # bot design. * Otherwise, all Text responses are linearly concatenated, and the
        # result is used for output audio synthesis. This approach allows for more
        # sophisticated user experience scenarios, where the text displayed to the user
        # may differ from what is heard.
        # Corresponds to the JSON property `message`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ResponseMessage]
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
      
      # Setting a parameter value.
      class GoogleCloudDialogflowCxV3FulfillmentSetParameterAction
        include Google::Apis::Core::Hashable
      
        # Display name of the parameter.
        # Corresponds to the JSON property `parameter`
        # @return [String]
        attr_accessor :parameter
      
        # The new value of the parameter. A null value clears the parameter.
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
      
      # Metadata in google::longrunning::Operation for Knowledge operations.
      class GoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Required. Output only. The current state of this operation.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Metadata for ImportDocuments operation.
      class GoogleCloudDialogflowCxV3ImportDocumentsOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Metadata in google::longrunning::Operation for Knowledge operations.
        # Corresponds to the JSON property `genericMetadata`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata]
        attr_accessor :generic_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @generic_metadata = args[:generic_metadata] if args.key?(:generic_metadata)
        end
      end
      
      # Response message for Documents.ImportDocuments.
      class GoogleCloudDialogflowCxV3ImportDocumentsResponse
        include Google::Apis::Core::Hashable
      
        # Includes details about skipped documents or any other warnings.
        # Corresponds to the JSON property `warnings`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleRpcStatus>]
        attr_accessor :warnings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @warnings = args[:warnings] if args.key?(:warnings)
        end
      end
      
      # The response message for Flows.ImportFlow.
      class GoogleCloudDialogflowCxV3ImportFlowResponse
        include Google::Apis::Core::Hashable
      
        # The unique identifier of the new flow. Format: `projects//locations//agents//
        # flows/`.
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
      
      # Metadata returned for the TestCases.ImportTestCases long running operation.
      class GoogleCloudDialogflowCxV3ImportTestCasesMetadata
        include Google::Apis::Core::Hashable
      
        # Errors for failed test cases.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3TestCaseError>]
        attr_accessor :errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @errors = args[:errors] if args.key?(:errors)
        end
      end
      
      # The response message for TestCases.ImportTestCases.
      class GoogleCloudDialogflowCxV3ImportTestCasesResponse
        include Google::Apis::Core::Hashable
      
        # The unique identifiers of the new test cases. Format: `projects//locations//
        # agents//testCases/`.
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
      
      # Instructs the speech recognizer on how to process the audio content.
      class GoogleCloudDialogflowCxV3InputAudioConfig
        include Google::Apis::Core::Hashable
      
        # Required. Audio encoding of the audio content to process.
        # Corresponds to the JSON property `audioEncoding`
        # @return [String]
        attr_accessor :audio_encoding
      
        # Optional. If `true`, Dialogflow returns SpeechWordInfo in
        # StreamingRecognitionResult with information about the recognized speech words,
        # e.g. start and end time offsets. If false or unspecified, Speech doesn't
        # return any word-level information.
        # Corresponds to the JSON property `enableWordInfo`
        # @return [Boolean]
        attr_accessor :enable_word_info
        alias_method :enable_word_info?, :enable_word_info
      
        # Optional. Which Speech model to select for the given request. Select the model
        # best suited to your domain to get best results. If a model is not explicitly
        # specified, then we auto-select a model based on the parameters in the
        # InputAudioConfig. If enhanced speech model is enabled for the agent and an
        # enhanced version of the specified model for the language does not exist, then
        # the speech is recognized using the standard version of the specified model.
        # Refer to [Cloud Speech API documentation](https://cloud.google.com/speech-to-
        # text/docs/basics#select-model) for more details. If you specify a model, the
        # following models typically have the best performance: - phone_call (best for
        # Agent Assist and telephony) - latest_short (best for Dialogflow non-telephony)
        # - command_and_search (best for very short utterances and commands)
        # Corresponds to the JSON property `model`
        # @return [String]
        attr_accessor :model
      
        # Optional. Which variant of the Speech model to use.
        # Corresponds to the JSON property `modelVariant`
        # @return [String]
        attr_accessor :model_variant
      
        # Optional. A list of strings containing words and phrases that the speech
        # recognizer should recognize with higher likelihood. See [the Cloud Speech
        # documentation](https://cloud.google.com/speech-to-text/docs/basics#phrase-
        # hints) for more details.
        # Corresponds to the JSON property `phraseHints`
        # @return [Array<String>]
        attr_accessor :phrase_hints
      
        # Sample rate (in Hertz) of the audio content sent in the query. Refer to [Cloud
        # Speech API documentation](https://cloud.google.com/speech-to-text/docs/basics)
        # for more details.
        # Corresponds to the JSON property `sampleRateHertz`
        # @return [Fixnum]
        attr_accessor :sample_rate_hertz
      
        # Optional. If `false` (default), recognition does not cease until the client
        # closes the stream. If `true`, the recognizer will detect a single spoken
        # utterance in input audio. Recognition ceases when it detects the audio's voice
        # has stopped or paused. In this case, once a detected intent is received, the
        # client should close the stream and start a new request with a new stream as
        # needed. Note: This setting is relevant only for streaming methods.
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
          @enable_word_info = args[:enable_word_info] if args.key?(:enable_word_info)
          @model = args[:model] if args.key?(:model)
          @model_variant = args[:model_variant] if args.key?(:model_variant)
          @phrase_hints = args[:phrase_hints] if args.key?(:phrase_hints)
          @sample_rate_hertz = args[:sample_rate_hertz] if args.key?(:sample_rate_hertz)
          @single_utterance = args[:single_utterance] if args.key?(:single_utterance)
        end
      end
      
      # An intent represents a user's intent to interact with a conversational agent.
      # You can provide information for the Dialogflow API to use to match user input
      # to an intent by adding training phrases (i.e., examples of user input) to your
      # intent.
      class GoogleCloudDialogflowCxV3Intent
        include Google::Apis::Core::Hashable
      
        # Human readable description for better understanding an intent like its scope,
        # content, result etc. Maximum character limit: 140 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The human-readable name of the intent, unique within the agent.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Indicates whether this is a fallback intent. Currently only default fallback
        # intent is allowed in the agent, which is added upon agent creation. Adding
        # training phrases to fallback intent is useful in the case of requests that are
        # mistakenly matched, since training phrases assigned to fallback intents act as
        # negative examples that triggers no-match event.
        # Corresponds to the JSON property `isFallback`
        # @return [Boolean]
        attr_accessor :is_fallback
        alias_method :is_fallback?, :is_fallback
      
        # The key/value metadata to label an intent. Labels can contain lowercase
        # letters, digits and the symbols '-' and '_'. International characters are
        # allowed, including letters from unicase alphabets. Keys must start with a
        # letter. Keys and values can be no longer than 63 characters and no more than
        # 128 bytes. Prefix "sys-" is reserved for Dialogflow defined labels. Currently
        # allowed Dialogflow defined labels include: * sys-head * sys-contextual The
        # above labels do not require value. "sys-head" means the intent is a head
        # intent. "sys.contextual" means the intent is a contextual intent.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The unique identifier of the intent. Required for the Intents.UpdateIntent
        # method. Intents.CreateIntent populates the name automatically. Format: `
        # projects//locations//agents//intents/`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The collection of parameters associated with the intent.
        # Corresponds to the JSON property `parameters`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3IntentParameter>]
        attr_accessor :parameters
      
        # The priority of this intent. Higher numbers represent higher priorities. - If
        # the supplied value is unspecified or 0, the service translates the value to
        # 500,000, which corresponds to the `Normal` priority in the console. - If the
        # supplied value is negative, the intent is ignored in runtime detect intent
        # requests.
        # Corresponds to the JSON property `priority`
        # @return [Fixnum]
        attr_accessor :priority
      
        # The collection of training phrases the agent is trained on to identify the
        # intent.
        # Corresponds to the JSON property `trainingPhrases`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3IntentTrainingPhrase>]
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
      
      # Represents the intent to trigger programmatically rather than as a result of
      # natural language processing.
      class GoogleCloudDialogflowCxV3IntentInput
        include Google::Apis::Core::Hashable
      
        # Required. The unique identifier of the intent. Format: `projects//locations//
        # agents//intents/`.
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
      
      # Represents an intent parameter.
      class GoogleCloudDialogflowCxV3IntentParameter
        include Google::Apis::Core::Hashable
      
        # Required. The entity type of the parameter. Format: `projects/-/locations/-/
        # agents/-/entityTypes/` for system entity types (for example, `projects/-/
        # locations/-/agents/-/entityTypes/sys.date`), or `projects//locations//agents//
        # entityTypes/` for developer entity types.
        # Corresponds to the JSON property `entityType`
        # @return [String]
        attr_accessor :entity_type
      
        # Required. The unique identifier of the parameter. This field is used by
        # training phrases to annotate their parts.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Indicates whether the parameter represents a list of values.
        # Corresponds to the JSON property `isList`
        # @return [Boolean]
        attr_accessor :is_list
        alias_method :is_list?, :is_list
      
        # Indicates whether the parameter content should be redacted in log. If
        # redaction is enabled, the parameter content will be replaced by parameter name
        # during logging. Note: the parameter content is subject to redaction if either
        # parameter level redaction or entity type level redaction is enabled.
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
      
      # Represents an example that the agent is trained on to identify the intent.
      class GoogleCloudDialogflowCxV3IntentTrainingPhrase
        include Google::Apis::Core::Hashable
      
        # Output only. The unique identifier of the training phrase.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Required. The ordered list of training phrase parts. The parts are
        # concatenated in order to form the training phrase. Note: The API does not
        # automatically annotate training phrases like the Dialogflow Console does. Note:
        # Do not forget to include whitespace at part boundaries, so the training
        # phrase is well formatted when the parts are concatenated. If the training
        # phrase does not need to be annotated with parameters, you just need a single
        # part with only the Part.text field set. If you want to annotate the training
        # phrase, you must create multiple parts, where the fields of each part are
        # populated in one of two ways: - `Part.text` is set to a part of the phrase
        # that has no parameters. - `Part.text` is set to a part of the phrase that you
        # want to annotate, and the `parameter_id` field is set.
        # Corresponds to the JSON property `parts`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3IntentTrainingPhrasePart>]
        attr_accessor :parts
      
        # Indicates how many times this example was added to the intent.
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
      
      # Represents a part of a training phrase.
      class GoogleCloudDialogflowCxV3IntentTrainingPhrasePart
        include Google::Apis::Core::Hashable
      
        # The parameter used to annotate this part of the training phrase. This field is
        # required for annotated parts of the training phrase.
        # Corresponds to the JSON property `parameterId`
        # @return [String]
        attr_accessor :parameter_id
      
        # Required. The text for this part.
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
      
      # A Dialogflow CX conversation (session) can be described and visualized as a
      # state machine. The states of a CX session are represented by pages. For each
      # flow, you define many pages, where your combined pages can handle a complete
      # conversation on the topics the flow is designed for. At any given moment,
      # exactly one page is the current page, the current page is considered active,
      # and the flow associated with that page is considered active. Every flow has a
      # special start page. When a flow initially becomes active, the start page page
      # becomes the current page. For each conversational turn, the current page will
      # either stay the same or transition to another page. You configure each page to
      # collect information from the end-user that is relevant for the conversational
      # state represented by the page. For more information, see the [Page guide](
      # https://cloud.google.com/dialogflow/cx/docs/concept/page).
      class GoogleCloudDialogflowCxV3Page
        include Google::Apis::Core::Hashable
      
        # Required. The human-readable name of the page, unique within the flow.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # A fulfillment can do one or more of the following actions at the same time: *
        # Generate rich message responses. * Set parameter values. * Call the webhook.
        # Fulfillments can be called at various stages in the Page or Form lifecycle.
        # For example, when a DetectIntentRequest drives a session to enter a new page,
        # the page's entry fulfillment can add a static response to the QueryResult in
        # the returning DetectIntentResponse, call the webhook (for example, to load
        # user data from a database), or both.
        # Corresponds to the JSON property `entryFulfillment`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3Fulfillment]
        attr_accessor :entry_fulfillment
      
        # Handlers associated with the page to handle events such as webhook errors, no
        # match or no input.
        # Corresponds to the JSON property `eventHandlers`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3EventHandler>]
        attr_accessor :event_handlers
      
        # A form is a data model that groups related parameters that can be collected
        # from the user. The process in which the agent prompts the user and collects
        # parameter values from the user is called form filling. A form can be added to
        # a page. When form filling is done, the filled parameters will be written to
        # the session.
        # Corresponds to the JSON property `form`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3Form]
        attr_accessor :form
      
        # The unique identifier of the page. Required for the Pages.UpdatePage method.
        # Pages.CreatePage populates the name automatically. Format: `projects//
        # locations//agents//flows//pages/`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Ordered list of `TransitionRouteGroups` associated with the page. Transition
        # route groups must be unique within a page. * If multiple transition routes
        # within a page scope refer to the same intent, then the precedence order is:
        # page's transition route -> page's transition route group -> flow's transition
        # routes. * If multiple transition route groups within a page contain the same
        # intent, then the first group in the ordered list takes precedence. Format:`
        # projects//locations//agents//flows//transitionRouteGroups/`.
        # Corresponds to the JSON property `transitionRouteGroups`
        # @return [Array<String>]
        attr_accessor :transition_route_groups
      
        # A list of transitions for the transition rules of this page. They route the
        # conversation to another page in the same flow, or another flow. When we are in
        # a certain page, the TransitionRoutes are evalauted in the following order: *
        # TransitionRoutes defined in the page with intent specified. * TransitionRoutes
        # defined in the transition route groups with intent specified. *
        # TransitionRoutes defined in flow with intent specified. * TransitionRoutes
        # defined in the transition route groups with intent specified. *
        # TransitionRoutes defined in the page with only condition specified. *
        # TransitionRoutes defined in the transition route groups with only condition
        # specified.
        # Corresponds to the JSON property `transitionRoutes`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3TransitionRoute>]
        attr_accessor :transition_routes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @entry_fulfillment = args[:entry_fulfillment] if args.key?(:entry_fulfillment)
          @event_handlers = args[:event_handlers] if args.key?(:event_handlers)
          @form = args[:form] if args.key?(:form)
          @name = args[:name] if args.key?(:name)
          @transition_route_groups = args[:transition_route_groups] if args.key?(:transition_route_groups)
          @transition_routes = args[:transition_routes] if args.key?(:transition_routes)
        end
      end
      
      # Represents page information communicated to and from the webhook.
      class GoogleCloudDialogflowCxV3PageInfo
        include Google::Apis::Core::Hashable
      
        # Always present for WebhookRequest. Ignored for WebhookResponse. The unique
        # identifier of the current page. Format: `projects//locations//agents//flows//
        # pages/`.
        # Corresponds to the JSON property `currentPage`
        # @return [String]
        attr_accessor :current_page
      
        # Always present for WebhookRequest. Ignored for WebhookResponse. The display
        # name of the current page.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Represents form information.
        # Corresponds to the JSON property `formInfo`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3PageInfoFormInfo]
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
      
      # Represents form information.
      class GoogleCloudDialogflowCxV3PageInfoFormInfo
        include Google::Apis::Core::Hashable
      
        # Optional for both WebhookRequest and WebhookResponse. The parameters contained
        # in the form. Note that the webhook cannot add or remove any form parameter.
        # Corresponds to the JSON property `parameterInfo`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo>]
        attr_accessor :parameter_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parameter_info = args[:parameter_info] if args.key?(:parameter_info)
        end
      end
      
      # Represents parameter information.
      class GoogleCloudDialogflowCxV3PageInfoFormInfoParameterInfo
        include Google::Apis::Core::Hashable
      
        # Always present for WebhookRequest. Required for WebhookResponse. The human-
        # readable name of the parameter, unique within the form. This field cannot be
        # modified by the webhook.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional for WebhookRequest. Ignored for WebhookResponse. Indicates if the
        # parameter value was just collected on the last conversation turn.
        # Corresponds to the JSON property `justCollected`
        # @return [Boolean]
        attr_accessor :just_collected
        alias_method :just_collected?, :just_collected
      
        # Optional for both WebhookRequest and WebhookResponse. Indicates whether the
        # parameter is required. Optional parameters will not trigger prompts; however,
        # they are filled if the user specifies them. Required parameters must be filled
        # before form filling concludes.
        # Corresponds to the JSON property `required`
        # @return [Boolean]
        attr_accessor :required
        alias_method :required?, :required
      
        # Always present for WebhookRequest. Required for WebhookResponse. The state of
        # the parameter. This field can be set to INVALID by the webhook to invalidate
        # the parameter; other values set by the webhook will be ignored.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Optional for both WebhookRequest and WebhookResponse. The value of the
        # parameter. This field can be set by the webhook to change the parameter value.
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
      
      # Represents the query input. It can contain one of: 1. A conversational query
      # in the form of text. 2. An intent query that specifies which intent to trigger.
      # 3. Natural language speech audio to be processed. 4. An event to be triggered.
      # 5. DTMF digits to invoke an intent and fill in parameter value.
      class GoogleCloudDialogflowCxV3QueryInput
        include Google::Apis::Core::Hashable
      
        # Represents the natural speech audio to be processed.
        # Corresponds to the JSON property `audio`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3AudioInput]
        attr_accessor :audio
      
        # Represents the input for dtmf event.
        # Corresponds to the JSON property `dtmf`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3DtmfInput]
        attr_accessor :dtmf
      
        # Represents the event to trigger.
        # Corresponds to the JSON property `event`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3EventInput]
        attr_accessor :event
      
        # Represents the intent to trigger programmatically rather than as a result of
        # natural language processing.
        # Corresponds to the JSON property `intent`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3IntentInput]
        attr_accessor :intent
      
        # Required. The language of the input. See [Language Support](https://cloud.
        # google.com/dialogflow/cx/docs/reference/language) for a list of the currently
        # supported language codes. Note that queries in the same session do not
        # necessarily need to specify the same language.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Represents the natural language text to be processed.
        # Corresponds to the JSON property `text`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3TextInput]
        attr_accessor :text
      
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
        end
      end
      
      # Metadata for ReloadDocument operation.
      class GoogleCloudDialogflowCxV3ReloadDocumentOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Metadata in google::longrunning::Operation for Knowledge operations.
        # Corresponds to the JSON property `genericMetadata`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata]
        attr_accessor :generic_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @generic_metadata = args[:generic_metadata] if args.key?(:generic_metadata)
        end
      end
      
      # Represents a response message that can be returned by a conversational agent.
      # Response messages are also used for output audio synthesis. The approach is as
      # follows: * If at least one OutputAudioText response is present, then all
      # OutputAudioText responses are linearly concatenated, and the result is used
      # for output audio synthesis. * If the OutputAudioText responses are a mixture
      # of text and SSML, then the concatenated result is treated as SSML; otherwise,
      # the result is treated as either text or SSML as appropriate. The agent
      # designer should ideally use either text or SSML consistently throughout the
      # bot design. * Otherwise, all Text responses are linearly concatenated, and the
      # result is used for output audio synthesis. This approach allows for more
      # sophisticated user experience scenarios, where the text displayed to the user
      # may differ from what is heard.
      class GoogleCloudDialogflowCxV3ResponseMessage
        include Google::Apis::Core::Hashable
      
        # The channel which the response is associated with. Clients can specify the
        # channel via QueryParameters.channel, and only associated channel response will
        # be returned.
        # Corresponds to the JSON property `channel`
        # @return [String]
        attr_accessor :channel
      
        # Indicates that the conversation succeeded, i.e., the bot handled the issue
        # that the customer talked to it about. Dialogflow only uses this to determine
        # which conversations should be counted as successful and doesn't process the
        # metadata in this message in any way. Note that Dialogflow also considers
        # conversations that get to the conversation end page as successful even if they
        # don't return ConversationSuccess. You may set this, for example: * In the
        # entry_fulfillment of a Page if entering the page indicates that the
        # conversation succeeded. * In a webhook response when you determine that you
        # handled the customer issue.
        # Corresponds to the JSON property `conversationSuccess`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ResponseMessageConversationSuccess]
        attr_accessor :conversation_success
      
        # Indicates that interaction with the Dialogflow agent has ended. This message
        # is generated by Dialogflow only and not supposed to be defined by the user.
        # Corresponds to the JSON property `endInteraction`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ResponseMessageEndInteraction]
        attr_accessor :end_interaction
      
        # Indicates that the conversation should be handed off to a live agent.
        # Dialogflow only uses this to determine which conversations were handed off to
        # a human agent for measurement purposes. What else to do with this signal is up
        # to you and your handoff procedures. You may set this, for example: * In the
        # entry_fulfillment of a Page if entering the page indicates something went
        # extremely wrong in the conversation. * In a webhook response when you
        # determine that the customer issue can only be handled by a human.
        # Corresponds to the JSON property `liveAgentHandoff`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff]
        attr_accessor :live_agent_handoff
      
        # Represents an audio message that is composed of both segments synthesized from
        # the Dialogflow agent prompts and ones hosted externally at the specified URIs.
        # The external URIs are specified via play_audio. This message is generated by
        # Dialogflow only and not supposed to be defined by the user.
        # Corresponds to the JSON property `mixedAudio`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ResponseMessageMixedAudio]
        attr_accessor :mixed_audio
      
        # A text or ssml response that is preferentially used for TTS output audio
        # synthesis, as described in the comment on the ResponseMessage message.
        # Corresponds to the JSON property `outputAudioText`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ResponseMessageOutputAudioText]
        attr_accessor :output_audio_text
      
        # Returns a response containing a custom, platform-specific payload.
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # Specifies an audio clip to be played by the client as part of the response.
        # Corresponds to the JSON property `playAudio`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ResponseMessagePlayAudio]
        attr_accessor :play_audio
      
        # Represents the signal that telles the client to transfer the phone call
        # connected to the agent to a third-party endpoint.
        # Corresponds to the JSON property `telephonyTransferCall`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCall]
        attr_accessor :telephony_transfer_call
      
        # The text response message.
        # Corresponds to the JSON property `text`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ResponseMessageText]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @channel = args[:channel] if args.key?(:channel)
          @conversation_success = args[:conversation_success] if args.key?(:conversation_success)
          @end_interaction = args[:end_interaction] if args.key?(:end_interaction)
          @live_agent_handoff = args[:live_agent_handoff] if args.key?(:live_agent_handoff)
          @mixed_audio = args[:mixed_audio] if args.key?(:mixed_audio)
          @output_audio_text = args[:output_audio_text] if args.key?(:output_audio_text)
          @payload = args[:payload] if args.key?(:payload)
          @play_audio = args[:play_audio] if args.key?(:play_audio)
          @telephony_transfer_call = args[:telephony_transfer_call] if args.key?(:telephony_transfer_call)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # Indicates that the conversation succeeded, i.e., the bot handled the issue
      # that the customer talked to it about. Dialogflow only uses this to determine
      # which conversations should be counted as successful and doesn't process the
      # metadata in this message in any way. Note that Dialogflow also considers
      # conversations that get to the conversation end page as successful even if they
      # don't return ConversationSuccess. You may set this, for example: * In the
      # entry_fulfillment of a Page if entering the page indicates that the
      # conversation succeeded. * In a webhook response when you determine that you
      # handled the customer issue.
      class GoogleCloudDialogflowCxV3ResponseMessageConversationSuccess
        include Google::Apis::Core::Hashable
      
        # Custom metadata. Dialogflow doesn't impose any structure on this.
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
      
      # Indicates that interaction with the Dialogflow agent has ended. This message
      # is generated by Dialogflow only and not supposed to be defined by the user.
      class GoogleCloudDialogflowCxV3ResponseMessageEndInteraction
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Indicates that the conversation should be handed off to a live agent.
      # Dialogflow only uses this to determine which conversations were handed off to
      # a human agent for measurement purposes. What else to do with this signal is up
      # to you and your handoff procedures. You may set this, for example: * In the
      # entry_fulfillment of a Page if entering the page indicates something went
      # extremely wrong in the conversation. * In a webhook response when you
      # determine that the customer issue can only be handled by a human.
      class GoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff
        include Google::Apis::Core::Hashable
      
        # Custom metadata for your handoff procedure. Dialogflow doesn't impose any
        # structure on this.
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
      
      # Represents an audio message that is composed of both segments synthesized from
      # the Dialogflow agent prompts and ones hosted externally at the specified URIs.
      # The external URIs are specified via play_audio. This message is generated by
      # Dialogflow only and not supposed to be defined by the user.
      class GoogleCloudDialogflowCxV3ResponseMessageMixedAudio
        include Google::Apis::Core::Hashable
      
        # Segments this audio response is composed of.
        # Corresponds to the JSON property `segments`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment>]
        attr_accessor :segments
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @segments = args[:segments] if args.key?(:segments)
        end
      end
      
      # Represents one segment of audio.
      class GoogleCloudDialogflowCxV3ResponseMessageMixedAudioSegment
        include Google::Apis::Core::Hashable
      
        # Output only. Whether the playback of this segment can be interrupted by the
        # end user's speech and the client should then start the next Dialogflow request.
        # Corresponds to the JSON property `allowPlaybackInterruption`
        # @return [Boolean]
        attr_accessor :allow_playback_interruption
        alias_method :allow_playback_interruption?, :allow_playback_interruption
      
        # Raw audio synthesized from the Dialogflow agent's response using the output
        # config specified in the request.
        # Corresponds to the JSON property `audio`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :audio
      
        # Client-specific URI that points to an audio clip accessible to the client.
        # Dialogflow does not impose any validation on it.
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
      
      # A text or ssml response that is preferentially used for TTS output audio
      # synthesis, as described in the comment on the ResponseMessage message.
      class GoogleCloudDialogflowCxV3ResponseMessageOutputAudioText
        include Google::Apis::Core::Hashable
      
        # Output only. Whether the playback of this message can be interrupted by the
        # end user's speech and the client can then starts the next Dialogflow request.
        # Corresponds to the JSON property `allowPlaybackInterruption`
        # @return [Boolean]
        attr_accessor :allow_playback_interruption
        alias_method :allow_playback_interruption?, :allow_playback_interruption
      
        # The SSML text to be synthesized. For more information, see [SSML](/speech/text-
        # to-speech/docs/ssml).
        # Corresponds to the JSON property `ssml`
        # @return [String]
        attr_accessor :ssml
      
        # The raw text to be synthesized.
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
      
      # Specifies an audio clip to be played by the client as part of the response.
      class GoogleCloudDialogflowCxV3ResponseMessagePlayAudio
        include Google::Apis::Core::Hashable
      
        # Output only. Whether the playback of this message can be interrupted by the
        # end user's speech and the client can then starts the next Dialogflow request.
        # Corresponds to the JSON property `allowPlaybackInterruption`
        # @return [Boolean]
        attr_accessor :allow_playback_interruption
        alias_method :allow_playback_interruption?, :allow_playback_interruption
      
        # Required. URI of the audio clip. Dialogflow does not impose any validation on
        # this value. It is specific to the client that reads it.
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
      
      # Represents the signal that telles the client to transfer the phone call
      # connected to the agent to a third-party endpoint.
      class GoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCall
        include Google::Apis::Core::Hashable
      
        # Transfer the call to a phone number in [E.164 format](https://en.wikipedia.org/
        # wiki/E.164).
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
      
      # The text response message.
      class GoogleCloudDialogflowCxV3ResponseMessageText
        include Google::Apis::Core::Hashable
      
        # Output only. Whether the playback of this message can be interrupted by the
        # end user's speech and the client can then starts the next Dialogflow request.
        # Corresponds to the JSON property `allowPlaybackInterruption`
        # @return [Boolean]
        attr_accessor :allow_playback_interruption
        alias_method :allow_playback_interruption?, :allow_playback_interruption
      
        # Required. A collection of text responses.
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
      
      # Metadata returned for the Environments.RunContinuousTest long running
      # operation.
      class GoogleCloudDialogflowCxV3RunContinuousTestMetadata
        include Google::Apis::Core::Hashable
      
        # The test errors.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3TestError>]
        attr_accessor :errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @errors = args[:errors] if args.key?(:errors)
        end
      end
      
      # The response message for Environments.RunContinuousTest.
      class GoogleCloudDialogflowCxV3RunContinuousTestResponse
        include Google::Apis::Core::Hashable
      
        # Represents a result from running a test case in an agent environment.
        # Corresponds to the JSON property `continuousTestResult`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ContinuousTestResult]
        attr_accessor :continuous_test_result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @continuous_test_result = args[:continuous_test_result] if args.key?(:continuous_test_result)
        end
      end
      
      # Metadata returned for the TestCases.RunTestCase long running operation. This
      # message currently has no fields.
      class GoogleCloudDialogflowCxV3RunTestCaseMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The response message for TestCases.RunTestCase.
      class GoogleCloudDialogflowCxV3RunTestCaseResponse
        include Google::Apis::Core::Hashable
      
        # Represents a result from running a test case in an agent environment.
        # Corresponds to the JSON property `result`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3TestCaseResult]
        attr_accessor :result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @result = args[:result] if args.key?(:result)
        end
      end
      
      # Represents session information communicated to and from the webhook.
      class GoogleCloudDialogflowCxV3SessionInfo
        include Google::Apis::Core::Hashable
      
        # Optional for WebhookRequest. Optional for WebhookResponse. All parameters
        # collected from forms and intents during the session. Parameters can be created,
        # updated, or removed by the webhook. To remove a parameter from the session,
        # the webhook should explicitly set the parameter value to null in
        # WebhookResponse. The map is keyed by parameters' display names.
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,Object>]
        attr_accessor :parameters
      
        # Always present for WebhookRequest. Ignored for WebhookResponse. The unique
        # identifier of the session. This field can be used by the webhook to identify a
        # session. Format: `projects//locations//agents//sessions/` or `projects//
        # locations//agents//environments//sessions/` if environment is specified.
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
      
      # Represents a test case.
      class GoogleCloudDialogflowCxV3TestCase
        include Google::Apis::Core::Hashable
      
        # Output only. When the test was created.
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # Required. The human-readable name of the test case, unique within the agent.
        # Limit of 200 characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Represents a result from running a test case in an agent environment.
        # Corresponds to the JSON property `lastTestResult`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3TestCaseResult]
        attr_accessor :last_test_result
      
        # The unique identifier of the test case. TestCases.CreateTestCase will populate
        # the name automatically. Otherwise use format: `projects//locations//agents/ /
        # testCases/`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Additional freeform notes about the test case. Limit of 400 characters.
        # Corresponds to the JSON property `notes`
        # @return [String]
        attr_accessor :notes
      
        # Tags are short descriptions that users may apply to test cases for
        # organizational and filtering purposes. Each tag should start with "#" and has
        # a limit of 30 characters.
        # Corresponds to the JSON property `tags`
        # @return [Array<String>]
        attr_accessor :tags
      
        # The conversation turns uttered when the test case was created, in
        # chronological order. These include the canonical set of agent utterances that
        # should occur when the agent is working properly.
        # Corresponds to the JSON property `testCaseConversationTurns`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ConversationTurn>]
        attr_accessor :test_case_conversation_turns
      
        # Represents configurations for a test case.
        # Corresponds to the JSON property `testConfig`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3TestConfig]
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
      
      # Error info for importing a test.
      class GoogleCloudDialogflowCxV3TestCaseError
        include Google::Apis::Core::Hashable
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::DialogflowV3beta1::GoogleRpcStatus]
        attr_accessor :status
      
        # Represents a test case.
        # Corresponds to the JSON property `testCase`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3TestCase]
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
      
      # Represents a result from running a test case in an agent environment.
      class GoogleCloudDialogflowCxV3TestCaseResult
        include Google::Apis::Core::Hashable
      
        # The conversation turns uttered during the test case replay in chronological
        # order.
        # Corresponds to the JSON property `conversationTurns`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ConversationTurn>]
        attr_accessor :conversation_turns
      
        # Environment where the test was run. If not set, it indicates the draft
        # environment.
        # Corresponds to the JSON property `environment`
        # @return [String]
        attr_accessor :environment
      
        # The resource name for the test case result. Format: `projects//locations//
        # agents//testCases/ /results/`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Whether the test case passed in the agent environment.
        # Corresponds to the JSON property `testResult`
        # @return [String]
        attr_accessor :test_result
      
        # The time that the test was run.
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
      
      # Represents configurations for a test case.
      class GoogleCloudDialogflowCxV3TestConfig
        include Google::Apis::Core::Hashable
      
        # Flow name to start the test case with. Format: `projects//locations//agents//
        # flows/`. Only one of `flow` and `page` should be set to indicate the starting
        # point of the test case. If both are set, `page` takes precedence over `flow`.
        # If neither is set, the test case will start with start page on the default
        # start flow.
        # Corresponds to the JSON property `flow`
        # @return [String]
        attr_accessor :flow
      
        # The page to start the test case with. Format: `projects//locations//agents//
        # flows//pages/`. Only one of `flow` and `page` should be set to indicate the
        # starting point of the test case. If both are set, `page` takes precedence over
        # `flow`. If neither is set, the test case will start with start page on the
        # default start flow.
        # Corresponds to the JSON property `page`
        # @return [String]
        attr_accessor :page
      
        # Session parameters to be compared when calculating differences.
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
      
      # Error info for running a test.
      class GoogleCloudDialogflowCxV3TestError
        include Google::Apis::Core::Hashable
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::DialogflowV3beta1::GoogleRpcStatus]
        attr_accessor :status
      
        # The test case resource name.
        # Corresponds to the JSON property `testCase`
        # @return [String]
        attr_accessor :test_case
      
        # The timestamp when the test was completed.
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
      
      # The description of differences between original and replayed agent output.
      class GoogleCloudDialogflowCxV3TestRunDifference
        include Google::Apis::Core::Hashable
      
        # A description of the diff, showing the actual output vs expected output.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The type of diff.
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
      
      # Represents the natural language text to be processed.
      class GoogleCloudDialogflowCxV3TextInput
        include Google::Apis::Core::Hashable
      
        # Required. The UTF-8 encoded natural language text to be processed. Text length
        # must not exceed 256 characters.
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
      
      # A transition route specifies a intent that can be matched and/or a data
      # condition that can be evaluated during a session. When a specified transition
      # is matched, the following actions are taken in order: * If there is a `
      # trigger_fulfillment` associated with the transition, it will be called. * If
      # there is a `target_page` associated with the transition, the session will
      # transition into the specified page. * If there is a `target_flow` associated
      # with the transition, the session will transition into the specified flow.
      class GoogleCloudDialogflowCxV3TransitionRoute
        include Google::Apis::Core::Hashable
      
        # The condition to evaluate against form parameters or session parameters. See
        # the [conditions reference](https://cloud.google.com/dialogflow/cx/docs/
        # reference/condition). At least one of `intent` or `condition` must be
        # specified. When both `intent` and `condition` are specified, the transition
        # can only happen when both are fulfilled.
        # Corresponds to the JSON property `condition`
        # @return [String]
        attr_accessor :condition
      
        # The unique identifier of an Intent. Format: `projects//locations//agents//
        # intents/`. Indicates that the transition can only happen when the given intent
        # is matched. At least one of `intent` or `condition` must be specified. When
        # both `intent` and `condition` are specified, the transition can only happen
        # when both are fulfilled.
        # Corresponds to the JSON property `intent`
        # @return [String]
        attr_accessor :intent
      
        # Output only. The unique identifier of this transition route.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The target flow to transition to. Format: `projects//locations//agents//flows/`
        # .
        # Corresponds to the JSON property `targetFlow`
        # @return [String]
        attr_accessor :target_flow
      
        # The target page to transition to. Format: `projects//locations//agents//flows//
        # pages/`.
        # Corresponds to the JSON property `targetPage`
        # @return [String]
        attr_accessor :target_page
      
        # A fulfillment can do one or more of the following actions at the same time: *
        # Generate rich message responses. * Set parameter values. * Call the webhook.
        # Fulfillments can be called at various stages in the Page or Form lifecycle.
        # For example, when a DetectIntentRequest drives a session to enter a new page,
        # the page's entry fulfillment can add a static response to the QueryResult in
        # the returning DetectIntentResponse, call the webhook (for example, to load
        # user data from a database), or both.
        # Corresponds to the JSON property `triggerFulfillment`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3Fulfillment]
        attr_accessor :trigger_fulfillment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition = args[:condition] if args.key?(:condition)
          @intent = args[:intent] if args.key?(:intent)
          @name = args[:name] if args.key?(:name)
          @target_flow = args[:target_flow] if args.key?(:target_flow)
          @target_page = args[:target_page] if args.key?(:target_page)
          @trigger_fulfillment = args[:trigger_fulfillment] if args.key?(:trigger_fulfillment)
        end
      end
      
      # Collection of all signals that were extracted for a single turn of the
      # conversation.
      class GoogleCloudDialogflowCxV3TurnSignals
        include Google::Apis::Core::Hashable
      
        # Whether agent responded with LiveAgentHandoff fulfillment.
        # Corresponds to the JSON property `agentEscalated`
        # @return [Boolean]
        attr_accessor :agent_escalated
        alias_method :agent_escalated?, :agent_escalated
      
        # Whether user was using DTMF input.
        # Corresponds to the JSON property `dtmfUsed`
        # @return [Boolean]
        attr_accessor :dtmf_used
        alias_method :dtmf_used?, :dtmf_used
      
        # Failure reasons of the turn.
        # Corresponds to the JSON property `failureReasons`
        # @return [Array<String>]
        attr_accessor :failure_reasons
      
        # Whether NLU predicted NO_MATCH.
        # Corresponds to the JSON property `noMatch`
        # @return [Boolean]
        attr_accessor :no_match
        alias_method :no_match?, :no_match
      
        # Whether user provided no input.
        # Corresponds to the JSON property `noUserInput`
        # @return [Boolean]
        attr_accessor :no_user_input
        alias_method :no_user_input?, :no_user_input
      
        # Whether turn resulted in End Session page.
        # Corresponds to the JSON property `reachedEndPage`
        # @return [Boolean]
        attr_accessor :reached_end_page
        alias_method :reached_end_page?, :reached_end_page
      
        # Sentiment magnitude of the user utterance if [sentiment](https://cloud.google.
        # com/dialogflow/cx/docs/concept/sentiment) was enabled.
        # Corresponds to the JSON property `sentimentMagnitude`
        # @return [Float]
        attr_accessor :sentiment_magnitude
      
        # Sentiment score of the user utterance if [sentiment](https://cloud.google.com/
        # dialogflow/cx/docs/concept/sentiment) was enabled.
        # Corresponds to the JSON property `sentimentScore`
        # @return [Float]
        attr_accessor :sentiment_score
      
        # Whether user was specifically asking for a live agent.
        # Corresponds to the JSON property `userEscalated`
        # @return [Boolean]
        attr_accessor :user_escalated
        alias_method :user_escalated?, :user_escalated
      
        # Human-readable statuses of the webhooks triggered during this turn.
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
      
      # Metadata for UpdateDocument operation.
      class GoogleCloudDialogflowCxV3UpdateDocumentOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Metadata in google::longrunning::Operation for Knowledge operations.
        # Corresponds to the JSON property `genericMetadata`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata]
        attr_accessor :generic_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @generic_metadata = args[:generic_metadata] if args.key?(:generic_metadata)
        end
      end
      
      # Webhooks host the developer's business logic. During a session, webhooks allow
      # the developer to use the data extracted by Dialogflow's natural language
      # processing to generate dynamic responses, validate collected data, or trigger
      # actions on the backend.
      class GoogleCloudDialogflowCxV3Webhook
        include Google::Apis::Core::Hashable
      
        # Indicates whether the webhook is disabled.
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # Required. The human-readable name of the webhook, unique within the agent.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Represents configuration for a generic web service.
        # Corresponds to the JSON property `genericWebService`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3WebhookGenericWebService]
        attr_accessor :generic_web_service
      
        # The unique identifier of the webhook. Required for the Webhooks.UpdateWebhook
        # method. Webhooks.CreateWebhook populates the name automatically. Format: `
        # projects//locations//agents//webhooks/`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Represents configuration for a [Service Directory](https://cloud.google.com/
        # service-directory) service.
        # Corresponds to the JSON property `serviceDirectory`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig]
        attr_accessor :service_directory
      
        # Webhook execution timeout. Execution is considered failed if Dialogflow doesn'
        # t receive a response from webhook at the end of the timeout period. Defaults
        # to 5 seconds, maximum allowed timeout is 30 seconds.
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
      
      # Represents configuration for a generic web service.
      class GoogleCloudDialogflowCxV3WebhookGenericWebService
        include Google::Apis::Core::Hashable
      
        # Optional. Specifies a list of allowed custom CA certificates (in DER format)
        # for HTTPS verification. This overrides the default SSL trust store. If this is
        # empty or unspecified, Dialogflow will use Google's default trust store to
        # verify certificates. N.B. Make sure the HTTPS server certificates are signed
        # with "subject alt name". For instance a certificate can be self-signed using
        # the following command, ``` openssl x509 -req -days 200 -in example.com.csr \ -
        # signkey example.com.key \ -out example.com.crt \ -extfile <(printf "\
        # nsubjectAltName='DNS:www.example.com'") ```
        # Corresponds to the JSON property `allowedCaCerts`
        # @return [Array<String>]
        attr_accessor :allowed_ca_certs
      
        # Optional. HTTP method for the flexible webhook calls. Standard webhook always
        # uses POST.
        # Corresponds to the JSON property `httpMethod`
        # @return [String]
        attr_accessor :http_method
      
        # Optional. Maps the values extracted from specific fields of the flexible
        # webhook response into session parameters. - Key: session parameter name -
        # Value: field path in the webhook response
        # Corresponds to the JSON property `parameterMapping`
        # @return [Hash<String,String>]
        attr_accessor :parameter_mapping
      
        # The password for HTTP Basic authentication.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # Optional. Defines a custom JSON object as request body to send to flexible
        # webhook.
        # Corresponds to the JSON property `requestBody`
        # @return [String]
        attr_accessor :request_body
      
        # The HTTP request headers to send together with webhook requests.
        # Corresponds to the JSON property `requestHeaders`
        # @return [Hash<String,String>]
        attr_accessor :request_headers
      
        # Required. The webhook URI for receiving POST requests. It must use https
        # protocol.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        # The user name for HTTP Basic authentication.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        # Optional. Type of the webhook.
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
          @parameter_mapping = args[:parameter_mapping] if args.key?(:parameter_mapping)
          @password = args[:password] if args.key?(:password)
          @request_body = args[:request_body] if args.key?(:request_body)
          @request_headers = args[:request_headers] if args.key?(:request_headers)
          @uri = args[:uri] if args.key?(:uri)
          @username = args[:username] if args.key?(:username)
          @webhook_type = args[:webhook_type] if args.key?(:webhook_type)
        end
      end
      
      # The request message for a webhook call. The request is sent as a JSON object
      # and the field names will be presented in camel cases. You may see undocumented
      # fields in an actual request. These fields are used internally by Dialogflow
      # and should be ignored.
      class GoogleCloudDialogflowCxV3WebhookRequest
        include Google::Apis::Core::Hashable
      
        # Always present. The unique identifier of the DetectIntentResponse that will be
        # returned to the API caller.
        # Corresponds to the JSON property `detectIntentResponseId`
        # @return [String]
        attr_accessor :detect_intent_response_id
      
        # If DTMF was provided as input, this field will contain the DTMF digits.
        # Corresponds to the JSON property `dtmfDigits`
        # @return [String]
        attr_accessor :dtmf_digits
      
        # Represents fulfillment information communicated to the webhook.
        # Corresponds to the JSON property `fulfillmentInfo`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3WebhookRequestFulfillmentInfo]
        attr_accessor :fulfillment_info
      
        # Represents intent information communicated to the webhook.
        # Corresponds to the JSON property `intentInfo`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3WebhookRequestIntentInfo]
        attr_accessor :intent_info
      
        # The language code specified in the original request.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # The list of rich message responses to present to the user. Webhook can choose
        # to append or replace this list in WebhookResponse.fulfillment_response;
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ResponseMessage>]
        attr_accessor :messages
      
        # Represents page information communicated to and from the webhook.
        # Corresponds to the JSON property `pageInfo`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3PageInfo]
        attr_accessor :page_info
      
        # Custom data set in QueryParameters.payload.
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # Represents the result of sentiment analysis.
        # Corresponds to the JSON property `sentimentAnalysisResult`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3WebhookRequestSentimentAnalysisResult]
        attr_accessor :sentiment_analysis_result
      
        # Represents session information communicated to and from the webhook.
        # Corresponds to the JSON property `sessionInfo`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3SessionInfo]
        attr_accessor :session_info
      
        # If natural language text was provided as input, this field will contain a copy
        # of the text.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # If natural language speech audio was provided as input, this field will
        # contain the transcript for the audio.
        # Corresponds to the JSON property `transcript`
        # @return [String]
        attr_accessor :transcript
      
        # If an event was provided as input, this field will contain the name of the
        # event.
        # Corresponds to the JSON property `triggerEvent`
        # @return [String]
        attr_accessor :trigger_event
      
        # If an intent was provided as input, this field will contain a copy of the
        # intent identifier. Format: `projects//locations//agents//intents/`.
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
      
      # Represents fulfillment information communicated to the webhook.
      class GoogleCloudDialogflowCxV3WebhookRequestFulfillmentInfo
        include Google::Apis::Core::Hashable
      
        # Always present. The value of the Fulfillment.tag field will be populated in
        # this field by Dialogflow when the associated webhook is called. The tag is
        # typically used by the webhook service to identify which fulfillment is being
        # called, but it could be used for other purposes.
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
      
      # Represents intent information communicated to the webhook.
      class GoogleCloudDialogflowCxV3WebhookRequestIntentInfo
        include Google::Apis::Core::Hashable
      
        # The confidence of the matched intent. Values range from 0.0 (completely
        # uncertain) to 1.0 (completely certain).
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # Always present. The display name of the last matched intent.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Always present. The unique identifier of the last matched intent. Format: `
        # projects//locations//agents//intents/`.
        # Corresponds to the JSON property `lastMatchedIntent`
        # @return [String]
        attr_accessor :last_matched_intent
      
        # Parameters identified as a result of intent matching. This is a map of the
        # name of the identified parameter to the value of the parameter identified from
        # the user's utterance. All parameters defined in the matched intent that are
        # identified will be surfaced here.
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3WebhookRequestIntentInfoIntentParameterValue>]
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
      
      # Represents a value for an intent parameter.
      class GoogleCloudDialogflowCxV3WebhookRequestIntentInfoIntentParameterValue
        include Google::Apis::Core::Hashable
      
        # Always present. Original text value extracted from user utterance.
        # Corresponds to the JSON property `originalValue`
        # @return [String]
        attr_accessor :original_value
      
        # Always present. Structured value for the parameter extracted from user
        # utterance.
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
      
      # Represents the result of sentiment analysis.
      class GoogleCloudDialogflowCxV3WebhookRequestSentimentAnalysisResult
        include Google::Apis::Core::Hashable
      
        # A non-negative number in the [0, +inf) range, which represents the absolute
        # magnitude of sentiment, regardless of score (positive or negative).
        # Corresponds to the JSON property `magnitude`
        # @return [Float]
        attr_accessor :magnitude
      
        # Sentiment score between -1.0 (negative sentiment) and 1.0 (positive sentiment).
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
      
      # The response message for a webhook call.
      class GoogleCloudDialogflowCxV3WebhookResponse
        include Google::Apis::Core::Hashable
      
        # Represents a fulfillment response to the user.
        # Corresponds to the JSON property `fulfillmentResponse`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse]
        attr_accessor :fulfillment_response
      
        # Represents page information communicated to and from the webhook.
        # Corresponds to the JSON property `pageInfo`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3PageInfo]
        attr_accessor :page_info
      
        # Value to append directly to QueryResult.webhook_payloads.
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # Represents session information communicated to and from the webhook.
        # Corresponds to the JSON property `sessionInfo`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3SessionInfo]
        attr_accessor :session_info
      
        # The target flow to transition to. Format: `projects//locations//agents//flows/`
        # .
        # Corresponds to the JSON property `targetFlow`
        # @return [String]
        attr_accessor :target_flow
      
        # The target page to transition to. Format: `projects//locations//agents//flows//
        # pages/`.
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
      
      # Represents a fulfillment response to the user.
      class GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse
        include Google::Apis::Core::Hashable
      
        # Merge behavior for `messages`.
        # Corresponds to the JSON property `mergeBehavior`
        # @return [String]
        attr_accessor :merge_behavior
      
        # The list of rich message responses to present to the user.
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3ResponseMessage>]
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
      
      # Represents configuration for a [Service Directory](https://cloud.google.com/
      # service-directory) service.
      class GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig
        include Google::Apis::Core::Hashable
      
        # Represents configuration for a generic web service.
        # Corresponds to the JSON property `genericWebService`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3WebhookGenericWebService]
        attr_accessor :generic_web_service
      
        # Required. The name of [Service Directory](https://cloud.google.com/service-
        # directory) service. Format: `projects//locations//namespaces//services/`. `
        # Location ID` of the service directory must be the same as the location of the
        # agent.
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
      
      # Hierarchical advanced settings for agent/flow/page/fulfillment/parameter.
      # Settings exposed at lower level overrides the settings exposed at higher level.
      # Overriding occurs at the sub-setting level. For example, the
      # playback_interruption_settings at fulfillment level only overrides the
      # playback_interruption_settings at the agent level, leaving other settings at
      # the agent level unchanged. DTMF settings does not override each other. DTMF
      # settings set at different levels define DTMF detections running in parallel.
      # Hierarchy: Agent->Flow->Page->Fulfillment/Parameter.
      class GoogleCloudDialogflowCxV3beta1AdvancedSettings
        include Google::Apis::Core::Hashable
      
        # Google Cloud Storage location for a Dialogflow operation that writes or
        # exports objects (e.g. exported agent or transcripts) outside of Dialogflow.
        # Corresponds to the JSON property `audioExportGcsDestination`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1GcsDestination]
        attr_accessor :audio_export_gcs_destination
      
        # Define behaviors on logging.
        # Corresponds to the JSON property `loggingSettings`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AdvancedSettingsLoggingSettings]
        attr_accessor :logging_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio_export_gcs_destination = args[:audio_export_gcs_destination] if args.key?(:audio_export_gcs_destination)
          @logging_settings = args[:logging_settings] if args.key?(:logging_settings)
        end
      end
      
      # Define behaviors on logging.
      class GoogleCloudDialogflowCxV3beta1AdvancedSettingsLoggingSettings
        include Google::Apis::Core::Hashable
      
        # If true, DF Interaction logging is currently enabled.
        # Corresponds to the JSON property `enableInteractionLogging`
        # @return [Boolean]
        attr_accessor :enable_interaction_logging
        alias_method :enable_interaction_logging?, :enable_interaction_logging
      
        # If true, StackDriver logging is currently enabled.
        # Corresponds to the JSON property `enableStackdriverLogging`
        # @return [Boolean]
        attr_accessor :enable_stackdriver_logging
        alias_method :enable_stackdriver_logging?, :enable_stackdriver_logging
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_interaction_logging = args[:enable_interaction_logging] if args.key?(:enable_interaction_logging)
          @enable_stackdriver_logging = args[:enable_stackdriver_logging] if args.key?(:enable_stackdriver_logging)
        end
      end
      
      # Agents are best described as Natural Language Understanding (NLU) modules that
      # transform user requests into actionable data. You can include agents in your
      # app, product, or service to determine user intent and respond to the user in a
      # natural way. After you create an agent, you can add Intents, Entity Types,
      # Flows, Fulfillments, Webhooks, and so on to manage the conversation flows..
      class GoogleCloudDialogflowCxV3beta1Agent
        include Google::Apis::Core::Hashable
      
        # Hierarchical advanced settings for agent/flow/page/fulfillment/parameter.
        # Settings exposed at lower level overrides the settings exposed at higher level.
        # Overriding occurs at the sub-setting level. For example, the
        # playback_interruption_settings at fulfillment level only overrides the
        # playback_interruption_settings at the agent level, leaving other settings at
        # the agent level unchanged. DTMF settings does not override each other. DTMF
        # settings set at different levels define DTMF detections running in parallel.
        # Hierarchy: Agent->Flow->Page->Fulfillment/Parameter.
        # Corresponds to the JSON property `advancedSettings`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AdvancedSettings]
        attr_accessor :advanced_settings
      
        # The URI of the agent's avatar. Avatars are used throughout the Dialogflow
        # console and in the self-hosted [Web Demo](https://cloud.google.com/dialogflow/
        # docs/integrations/web-demo) integration.
        # Corresponds to the JSON property `avatarUri`
        # @return [String]
        attr_accessor :avatar_uri
      
        # Required. Immutable. The default language of the agent as a language tag. See [
        # Language Support](https://cloud.google.com/dialogflow/cx/docs/reference/
        # language) for a list of the currently supported language codes. This field
        # cannot be set by the Agents.UpdateAgent method.
        # Corresponds to the JSON property `defaultLanguageCode`
        # @return [String]
        attr_accessor :default_language_code
      
        # The description of the agent. The maximum length is 500 characters. If
        # exceeded, the request is rejected.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The human-readable name of the agent, unique within the location.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Indicates if automatic spell correction is enabled in detect intent requests.
        # Corresponds to the JSON property `enableSpellCorrection`
        # @return [Boolean]
        attr_accessor :enable_spell_correction
        alias_method :enable_spell_correction?, :enable_spell_correction
      
        # Indicates if stackdriver logging is enabled for the agent. Please use agent.
        # advanced_settings instead.
        # Corresponds to the JSON property `enableStackdriverLogging`
        # @return [Boolean]
        attr_accessor :enable_stackdriver_logging
        alias_method :enable_stackdriver_logging?, :enable_stackdriver_logging
      
        # Indicates whether the agent is locked for changes. If the agent is locked,
        # modifications to the agent will be rejected except for RestoreAgent.
        # Corresponds to the JSON property `locked`
        # @return [Boolean]
        attr_accessor :locked
        alias_method :locked?, :locked
      
        # The unique identifier of the agent. Required for the Agents.UpdateAgent method.
        # Agents.CreateAgent populates the name automatically. Format: `projects//
        # locations//agents/`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Name of the SecuritySettings reference for the agent. Format: `projects//
        # locations//securitySettings/`.
        # Corresponds to the JSON property `securitySettings`
        # @return [String]
        attr_accessor :security_settings
      
        # Settings related to speech recognition.
        # Corresponds to the JSON property `speechToTextSettings`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SpeechToTextSettings]
        attr_accessor :speech_to_text_settings
      
        # Immutable. Name of the start flow in this agent. A start flow will be
        # automatically created when the agent is created, and can only be deleted by
        # deleting the agent. Format: `projects//locations//agents//flows/`.
        # Corresponds to the JSON property `startFlow`
        # @return [String]
        attr_accessor :start_flow
      
        # The list of all languages supported by the agent (except for the `
        # default_language_code`).
        # Corresponds to the JSON property `supportedLanguageCodes`
        # @return [Array<String>]
        attr_accessor :supported_language_codes
      
        # Settings related to speech synthesizing.
        # Corresponds to the JSON property `textToSpeechSettings`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TextToSpeechSettings]
        attr_accessor :text_to_speech_settings
      
        # Required. The time zone of the agent from the [time zone database](https://www.
        # iana.org/time-zones), e.g., America/New_York, Europe/Paris.
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advanced_settings = args[:advanced_settings] if args.key?(:advanced_settings)
          @avatar_uri = args[:avatar_uri] if args.key?(:avatar_uri)
          @default_language_code = args[:default_language_code] if args.key?(:default_language_code)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @enable_spell_correction = args[:enable_spell_correction] if args.key?(:enable_spell_correction)
          @enable_stackdriver_logging = args[:enable_stackdriver_logging] if args.key?(:enable_stackdriver_logging)
          @locked = args[:locked] if args.key?(:locked)
          @name = args[:name] if args.key?(:name)
          @security_settings = args[:security_settings] if args.key?(:security_settings)
          @speech_to_text_settings = args[:speech_to_text_settings] if args.key?(:speech_to_text_settings)
          @start_flow = args[:start_flow] if args.key?(:start_flow)
          @supported_language_codes = args[:supported_language_codes] if args.key?(:supported_language_codes)
          @text_to_speech_settings = args[:text_to_speech_settings] if args.key?(:text_to_speech_settings)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
        end
      end
      
      # The response message for Agents.GetAgentValidationResult.
      class GoogleCloudDialogflowCxV3beta1AgentValidationResult
        include Google::Apis::Core::Hashable
      
        # Contains all flow validation results.
        # Corresponds to the JSON property `flowValidationResults`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FlowValidationResult>]
        attr_accessor :flow_validation_results
      
        # The unique identifier of the agent validation result. Format: `projects//
        # locations//agents//validationResult`.
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
      
      # Represents the natural speech audio to be processed.
      class GoogleCloudDialogflowCxV3beta1AudioInput
        include Google::Apis::Core::Hashable
      
        # The natural language speech audio to be processed. A single request can
        # contain up to 2 minutes of speech audio data. The transcribed text cannot
        # contain more than 256 bytes. For non-streaming audio detect intent, both `
        # config` and `audio` must be provided. For streaming audio detect intent, `
        # config` must be provided in the first request and `audio` must be provided in
        # all following requests.
        # Corresponds to the JSON property `audio`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :audio
      
        # Instructs the speech recognizer on how to process the audio content.
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1InputAudioConfig]
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
      
      # The request message for TestCases.BatchDeleteTestCases.
      class GoogleCloudDialogflowCxV3beta1BatchDeleteTestCasesRequest
        include Google::Apis::Core::Hashable
      
        # Required. Format of test case names: `projects//locations/ /agents//testCases/`
        # .
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
      
      # Metadata returned for the TestCases.BatchRunTestCases long running operation.
      class GoogleCloudDialogflowCxV3beta1BatchRunTestCasesMetadata
        include Google::Apis::Core::Hashable
      
        # The test errors.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestError>]
        attr_accessor :errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @errors = args[:errors] if args.key?(:errors)
        end
      end
      
      # The request message for TestCases.BatchRunTestCases.
      class GoogleCloudDialogflowCxV3beta1BatchRunTestCasesRequest
        include Google::Apis::Core::Hashable
      
        # Optional. If not set, draft environment is assumed. Format: `projects//
        # locations//agents//environments/`.
        # Corresponds to the JSON property `environment`
        # @return [String]
        attr_accessor :environment
      
        # Required. Format: `projects//locations//agents//testCases/`.
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
      
      # The response message for TestCases.BatchRunTestCases.
      class GoogleCloudDialogflowCxV3beta1BatchRunTestCasesResponse
        include Google::Apis::Core::Hashable
      
        # The test case results. The detailed conversation turns are empty in this
        # response.
        # Corresponds to the JSON property `results`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCaseResult>]
        attr_accessor :results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @results = args[:results] if args.key?(:results)
        end
      end
      
      # The response message for TestCases.CalculateCoverage.
      class GoogleCloudDialogflowCxV3beta1CalculateCoverageResponse
        include Google::Apis::Core::Hashable
      
        # The agent to calculate coverage for. Format: `projects//locations//agents/`.
        # Corresponds to the JSON property `agent`
        # @return [String]
        attr_accessor :agent
      
        # Intent coverage represents the percentage of all possible intents in the agent
        # that are triggered in any of a parent's test cases.
        # Corresponds to the JSON property `intentCoverage`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1IntentCoverage]
        attr_accessor :intent_coverage
      
        # Transition route group coverage represents the percentage of all possible
        # transition routes present within any of a parent's test cases. The results are
        # grouped by the transition route group.
        # Corresponds to the JSON property `routeGroupCoverage`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverage]
        attr_accessor :route_group_coverage
      
        # Transition coverage represents the percentage of all possible page transitions
        # (page-level transition routes and event handlers, excluding transition route
        # groups) present within any of a parent's test cases.
        # Corresponds to the JSON property `transitionCoverage`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionCoverage]
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
      
      # Changelogs represents a change made to a given agent.
      class GoogleCloudDialogflowCxV3beta1Changelog
        include Google::Apis::Core::Hashable
      
        # The action of the change.
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # The timestamp of the change.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The affected resource display name of the change.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The unique identifier of the changelog. Format: `projects//locations//agents//
        # changelogs/`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The affected resource name of the change.
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        # The affected resource type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Email address of the authenticated user.
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
          @name = args[:name] if args.key?(:name)
          @resource = args[:resource] if args.key?(:resource)
          @type = args[:type] if args.key?(:type)
          @user_email = args[:user_email] if args.key?(:user_email)
        end
      end
      
      # The request message for Versions.CompareVersions.
      class GoogleCloudDialogflowCxV3beta1CompareVersionsRequest
        include Google::Apis::Core::Hashable
      
        # The language to compare the flow versions for. If not specified, the agent's
        # default language is used. [Many languages](https://cloud.google.com/dialogflow/
        # docs/reference/language) are supported. Note: languages must be enabled in the
        # agent before they can be used.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Required. Name of the target flow version to compare with the base version.
        # Use version ID `0` to indicate the draft version of the specified flow. Format:
        # `projects//locations//agents//flows//versions/`.
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
      
      # The response message for Versions.CompareVersions.
      class GoogleCloudDialogflowCxV3beta1CompareVersionsResponse
        include Google::Apis::Core::Hashable
      
        # JSON representation of the base version content.
        # Corresponds to the JSON property `baseVersionContentJson`
        # @return [String]
        attr_accessor :base_version_content_json
      
        # The timestamp when the two version compares.
        # Corresponds to the JSON property `compareTime`
        # @return [String]
        attr_accessor :compare_time
      
        # JSON representation of the target version content.
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
      
      # Represents a result from running a test case in an agent environment.
      class GoogleCloudDialogflowCxV3beta1ContinuousTestResult
        include Google::Apis::Core::Hashable
      
        # The resource name for the continuous test result. Format: `projects//locations/
        # /agents//environments//continuousTestResults/`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The result of this continuous test run, i.e. whether all the tests in this
        # continuous test run pass or not.
        # Corresponds to the JSON property `result`
        # @return [String]
        attr_accessor :result
      
        # Time when the continuous testing run starts.
        # Corresponds to the JSON property `runTime`
        # @return [String]
        attr_accessor :run_time
      
        # A list of individual test case results names in this continuous test run.
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
      
      # This message is used to hold all the Conversation Signals data, which will be
      # converted to JSON and exported to BigQuery.
      class GoogleCloudDialogflowCxV3beta1ConversationSignals
        include Google::Apis::Core::Hashable
      
        # Collection of all signals that were extracted for a single turn of the
        # conversation.
        # Corresponds to the JSON property `turnSignals`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TurnSignals]
        attr_accessor :turn_signals
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @turn_signals = args[:turn_signals] if args.key?(:turn_signals)
        end
      end
      
      # One interaction between a human and virtual agent. The human provides some
      # input and the virtual agent provides a response.
      class GoogleCloudDialogflowCxV3beta1ConversationTurn
        include Google::Apis::Core::Hashable
      
        # The input from the human user.
        # Corresponds to the JSON property `userInput`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ConversationTurnUserInput]
        attr_accessor :user_input
      
        # The output from the virtual agent.
        # Corresponds to the JSON property `virtualAgentOutput`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput]
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
      
      # The input from the human user.
      class GoogleCloudDialogflowCxV3beta1ConversationTurnUserInput
        include Google::Apis::Core::Hashable
      
        # Whether sentiment analysis is enabled.
        # Corresponds to the JSON property `enableSentimentAnalysis`
        # @return [Boolean]
        attr_accessor :enable_sentiment_analysis
        alias_method :enable_sentiment_analysis?, :enable_sentiment_analysis
      
        # Parameters that need to be injected into the conversation during intent
        # detection.
        # Corresponds to the JSON property `injectedParameters`
        # @return [Hash<String,Object>]
        attr_accessor :injected_parameters
      
        # Represents the query input. It can contain one of: 1. A conversational query
        # in the form of text. 2. An intent query that specifies which intent to trigger.
        # 3. Natural language speech audio to be processed. 4. An event to be triggered.
        # 5. DTMF digits to invoke an intent and fill in parameter value.
        # Corresponds to the JSON property `input`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1QueryInput]
        attr_accessor :input
      
        # If webhooks should be allowed to trigger in response to the user utterance.
        # Often if parameters are injected, webhooks should not be enabled.
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
      
      # The output from the virtual agent.
      class GoogleCloudDialogflowCxV3beta1ConversationTurnVirtualAgentOutput
        include Google::Apis::Core::Hashable
      
        # A Dialogflow CX conversation (session) can be described and visualized as a
        # state machine. The states of a CX session are represented by pages. For each
        # flow, you define many pages, where your combined pages can handle a complete
        # conversation on the topics the flow is designed for. At any given moment,
        # exactly one page is the current page, the current page is considered active,
        # and the flow associated with that page is considered active. Every flow has a
        # special start page. When a flow initially becomes active, the start page page
        # becomes the current page. For each conversational turn, the current page will
        # either stay the same or transition to another page. You configure each page to
        # collect information from the end-user that is relevant for the conversational
        # state represented by the page. For more information, see the [Page guide](
        # https://cloud.google.com/dialogflow/cx/docs/concept/page).
        # Corresponds to the JSON property `currentPage`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Page]
        attr_accessor :current_page
      
        # Required. Input only. The diagnostic info output for the turn. Required to
        # calculate the testing coverage.
        # Corresponds to the JSON property `diagnosticInfo`
        # @return [Hash<String,Object>]
        attr_accessor :diagnostic_info
      
        # Output only. If this is part of a result conversation turn, the list of
        # differences between the original run and the replay for this output, if any.
        # Corresponds to the JSON property `differences`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestRunDifference>]
        attr_accessor :differences
      
        # The session parameters available to the bot at this point.
        # Corresponds to the JSON property `sessionParameters`
        # @return [Hash<String,Object>]
        attr_accessor :session_parameters
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::DialogflowV3beta1::GoogleRpcStatus]
        attr_accessor :status
      
        # The text responses from the agent for the turn.
        # Corresponds to the JSON property `textResponses`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ResponseMessageText>]
        attr_accessor :text_responses
      
        # An intent represents a user's intent to interact with a conversational agent.
        # You can provide information for the Dialogflow API to use to match user input
        # to an intent by adding training phrases (i.e., examples of user input) to your
        # intent.
        # Corresponds to the JSON property `triggeredIntent`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Intent]
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
      
      # Metadata for CreateDocument operation.
      class GoogleCloudDialogflowCxV3beta1CreateDocumentOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Metadata in google::longrunning::Operation for Knowledge operations.
        # Corresponds to the JSON property `genericMetadata`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata]
        attr_accessor :generic_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @generic_metadata = args[:generic_metadata] if args.key?(:generic_metadata)
        end
      end
      
      # Metadata associated with the long running operation for Versions.CreateVersion.
      class GoogleCloudDialogflowCxV3beta1CreateVersionOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Name of the created version. Format: `projects//locations//agents//flows//
        # versions/`.
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
      
      # Metadata for DeleteDocument operation.
      class GoogleCloudDialogflowCxV3beta1DeleteDocumentOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Metadata in google::longrunning::Operation for Knowledge operations.
        # Corresponds to the JSON property `genericMetadata`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata]
        attr_accessor :generic_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @generic_metadata = args[:generic_metadata] if args.key?(:generic_metadata)
        end
      end
      
      # Metadata returned for the Environments.DeployFlow long running operation.
      class GoogleCloudDialogflowCxV3beta1DeployFlowMetadata
        include Google::Apis::Core::Hashable
      
        # Errors of running deployment tests.
        # Corresponds to the JSON property `testErrors`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestError>]
        attr_accessor :test_errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @test_errors = args[:test_errors] if args.key?(:test_errors)
        end
      end
      
      # The request message for Environments.DeployFlow.
      class GoogleCloudDialogflowCxV3beta1DeployFlowRequest
        include Google::Apis::Core::Hashable
      
        # Required. The flow version to deploy. Format: `projects//locations//agents//
        # flows//versions/`.
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
      
      # The response message for Environments.DeployFlow.
      class GoogleCloudDialogflowCxV3beta1DeployFlowResponse
        include Google::Apis::Core::Hashable
      
        # The name of the flow version deployment. Format: `projects//locations//agents//
        # environments//deployments/`.
        # Corresponds to the JSON property `deployment`
        # @return [String]
        attr_accessor :deployment
      
        # Represents an environment for an agent. You can create multiple versions of
        # your agent and publish them to separate environments. When you edit an agent,
        # you are editing the draft agent. At any point, you can save the draft agent as
        # an agent version, which is an immutable snapshot of your agent. When you save
        # the draft agent, it is published to the default environment. When you create
        # agent versions, you can publish them to custom environments. You can create a
        # variety of custom environments for testing, development, production, etc.
        # Corresponds to the JSON property `environment`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Environment]
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
      
      # Represents a deployment in an environment. A deployment happens when a flow
      # version configured to be active in the environment. You can configure running
      # pre-deployment steps, e.g. running validation test cases, experiment auto-
      # rollout, etc.
      class GoogleCloudDialogflowCxV3beta1Deployment
        include Google::Apis::Core::Hashable
      
        # End time of this deployment.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The name of the flow version for this deployment. Format: projects//locations//
        # agents//flows//versions/.
        # Corresponds to the JSON property `flowVersion`
        # @return [String]
        attr_accessor :flow_version
      
        # The name of the deployment. Format: projects//locations//agents//environments//
        # deployments/.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Result of the deployment.
        # Corresponds to the JSON property `result`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DeploymentResult]
        attr_accessor :result
      
        # Start time of this deployment.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # The current state of the deployment.
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
      
      # Result of the deployment.
      class GoogleCloudDialogflowCxV3beta1DeploymentResult
        include Google::Apis::Core::Hashable
      
        # Results of test cases running before the deployment. Format: `projects//
        # locations//agents//testCases//results/`.
        # Corresponds to the JSON property `deploymentTestResults`
        # @return [Array<String>]
        attr_accessor :deployment_test_results
      
        # The name of the experiment triggered by this deployment. Format: projects//
        # locations//agents//environments//experiments/.
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
      
      # The request to detect user's intent.
      class GoogleCloudDialogflowCxV3beta1DetectIntentRequest
        include Google::Apis::Core::Hashable
      
        # Instructs the speech synthesizer how to generate the output audio content.
        # Corresponds to the JSON property `outputAudioConfig`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1OutputAudioConfig]
        attr_accessor :output_audio_config
      
        # Represents the query input. It can contain one of: 1. A conversational query
        # in the form of text. 2. An intent query that specifies which intent to trigger.
        # 3. Natural language speech audio to be processed. 4. An event to be triggered.
        # 5. DTMF digits to invoke an intent and fill in parameter value.
        # Corresponds to the JSON property `queryInput`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1QueryInput]
        attr_accessor :query_input
      
        # Represents the parameters of a conversational query.
        # Corresponds to the JSON property `queryParams`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1QueryParameters]
        attr_accessor :query_params
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @output_audio_config = args[:output_audio_config] if args.key?(:output_audio_config)
          @query_input = args[:query_input] if args.key?(:query_input)
          @query_params = args[:query_params] if args.key?(:query_params)
        end
      end
      
      # The message returned from the DetectIntent method.
      class GoogleCloudDialogflowCxV3beta1DetectIntentResponse
        include Google::Apis::Core::Hashable
      
        # Indicates whether the partial response can be cancelled when a later response
        # arrives. e.g. if the agent specified some music as partial response, it can be
        # cancelled.
        # Corresponds to the JSON property `allowCancellation`
        # @return [Boolean]
        attr_accessor :allow_cancellation
        alias_method :allow_cancellation?, :allow_cancellation
      
        # The audio data bytes encoded as specified in the request. Note: The output
        # audio is generated based on the values of default platform text responses
        # found in the `query_result.response_messages` field. If multiple default text
        # responses exist, they will be concatenated when generating audio. If no
        # default platform text responses exist, the generated audio content will be
        # empty. In some scenarios, multiple output audio fields may be present in the
        # response structure. In these cases, only the top-most-level audio output has
        # content.
        # Corresponds to the JSON property `outputAudio`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :output_audio
      
        # Instructs the speech synthesizer how to generate the output audio content.
        # Corresponds to the JSON property `outputAudioConfig`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1OutputAudioConfig]
        attr_accessor :output_audio_config
      
        # Represents the result of a conversational query.
        # Corresponds to the JSON property `queryResult`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1QueryResult]
        attr_accessor :query_result
      
        # Output only. The unique identifier of the response. It can be used to locate a
        # response in the training example set or for reporting issues.
        # Corresponds to the JSON property `responseId`
        # @return [String]
        attr_accessor :response_id
      
        # Response type.
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
      
      # Represents the input for dtmf event.
      class GoogleCloudDialogflowCxV3beta1DtmfInput
        include Google::Apis::Core::Hashable
      
        # The dtmf digits.
        # Corresponds to the JSON property `digits`
        # @return [String]
        attr_accessor :digits
      
        # The finish digit (if any).
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
      
      # Entities are extracted from user input and represent parameters that are
      # meaningful to your application. For example, a date range, a proper name such
      # as a geographic location or landmark, and so on. Entities represent actionable
      # data for your application. When you define an entity, you can also include
      # synonyms that all map to that entity. For example, "soft drink", "soda", "pop",
      # and so on. There are three types of entities: * **System** - entities that
      # are defined by the Dialogflow API for common data types such as date, time,
      # currency, and so on. A system entity is represented by the `EntityType` type. *
      # **Custom** - entities that are defined by you that represent actionable data
      # that is meaningful to your application. For example, you could define a `pizza.
      # sauce` entity for red or white pizza sauce, a `pizza.cheese` entity for the
      # different types of cheese on a pizza, a `pizza.topping` entity for different
      # toppings, and so on. A custom entity is represented by the `EntityType` type. *
      # **User** - entities that are built for an individual user such as favorites,
      # preferences, playlists, and so on. A user entity is represented by the
      # SessionEntityType type. For more information about entity types, see the [
      # Dialogflow documentation](https://cloud.google.com/dialogflow/docs/entities-
      # overview).
      class GoogleCloudDialogflowCxV3beta1EntityType
        include Google::Apis::Core::Hashable
      
        # Indicates whether the entity type can be automatically expanded.
        # Corresponds to the JSON property `autoExpansionMode`
        # @return [String]
        attr_accessor :auto_expansion_mode
      
        # Required. The human-readable name of the entity type, unique within the agent.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Enables fuzzy entity extraction during classification.
        # Corresponds to the JSON property `enableFuzzyExtraction`
        # @return [Boolean]
        attr_accessor :enable_fuzzy_extraction
        alias_method :enable_fuzzy_extraction?, :enable_fuzzy_extraction
      
        # The collection of entity entries associated with the entity type.
        # Corresponds to the JSON property `entities`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EntityTypeEntity>]
        attr_accessor :entities
      
        # Collection of exceptional words and phrases that shouldn't be matched. For
        # example, if you have a size entity type with entry `giant`(an adjective), you
        # might consider adding `giants`(a noun) as an exclusion. If the kind of entity
        # type is `KIND_MAP`, then the phrases specified by entities and excluded
        # phrases should be mutually exclusive.
        # Corresponds to the JSON property `excludedPhrases`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase>]
        attr_accessor :excluded_phrases
      
        # Required. Indicates the kind of entity type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The unique identifier of the entity type. Required for EntityTypes.
        # UpdateEntityType. Format: `projects//locations//agents//entityTypes/`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Indicates whether parameters of the entity type should be redacted in log. If
        # redaction is enabled, page parameters and intent parameters referring to the
        # entity type will be replaced by parameter name during logging.
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
      
      # An **entity entry** for an associated entity type.
      class GoogleCloudDialogflowCxV3beta1EntityTypeEntity
        include Google::Apis::Core::Hashable
      
        # Required. A collection of value synonyms. For example, if the entity type is *
        # vegetable*, and `value` is *scallions*, a synonym could be *green onions*. For
        # `KIND_LIST` entity types: * This collection must contain exactly one synonym
        # equal to `value`.
        # Corresponds to the JSON property `synonyms`
        # @return [Array<String>]
        attr_accessor :synonyms
      
        # Required. The primary value associated with this entity entry. For example, if
        # the entity type is *vegetable*, the value could be *scallions*. For `KIND_MAP`
        # entity types: * A canonical value to be used in place of synonyms. For `
        # KIND_LIST` entity types: * A string that can contain references to other
        # entity types (with or without aliases).
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
      
      # An excluded entity phrase that should not be matched.
      class GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhrase
        include Google::Apis::Core::Hashable
      
        # Required. The word or phrase to be excluded.
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
      
      # Represents an environment for an agent. You can create multiple versions of
      # your agent and publish them to separate environments. When you edit an agent,
      # you are editing the draft agent. At any point, you can save the draft agent as
      # an agent version, which is an immutable snapshot of your agent. When you save
      # the draft agent, it is published to the default environment. When you create
      # agent versions, you can publish them to custom environments. You can create a
      # variety of custom environments for testing, development, production, etc.
      class GoogleCloudDialogflowCxV3beta1Environment
        include Google::Apis::Core::Hashable
      
        # The human-readable description of the environment. The maximum length is 500
        # characters. If exceeded, the request is rejected.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The human-readable name of the environment (unique in an agent).
        # Limit of 64 characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The name of the environment. Format: `projects//locations//agents//
        # environments/`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The configuration for continuous tests.
        # Corresponds to the JSON property `testCasesConfig`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EnvironmentTestCasesConfig]
        attr_accessor :test_cases_config
      
        # Output only. Update time of this environment.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # A list of configurations for flow versions. You should include version configs
        # for all flows that are reachable from `Start Flow` in the agent. Otherwise, an
        # error will be returned.
        # Corresponds to the JSON property `versionConfigs`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig>]
        attr_accessor :version_configs
      
        # Configuration for webhooks.
        # Corresponds to the JSON property `webhookConfig`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig]
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
      
      # The configuration for continuous tests.
      class GoogleCloudDialogflowCxV3beta1EnvironmentTestCasesConfig
        include Google::Apis::Core::Hashable
      
        # Whether to run test cases in TestCasesConfig.test_cases periodically. Default
        # false. If set to true, run once a day.
        # Corresponds to the JSON property `enableContinuousRun`
        # @return [Boolean]
        attr_accessor :enable_continuous_run
        alias_method :enable_continuous_run?, :enable_continuous_run
      
        # Whether to run test cases in TestCasesConfig.test_cases before deploying a
        # flow version to the environment. Default false.
        # Corresponds to the JSON property `enablePredeploymentRun`
        # @return [Boolean]
        attr_accessor :enable_predeployment_run
        alias_method :enable_predeployment_run?, :enable_predeployment_run
      
        # A list of test case names to run. They should be under the same agent. Format
        # of each test case name: `projects//locations/ /agents//testCases/`
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
      
      # Configuration for the version.
      class GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig
        include Google::Apis::Core::Hashable
      
        # Required. Format: projects//locations//agents//flows//versions/.
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
      
      # Configuration for webhooks.
      class GoogleCloudDialogflowCxV3beta1EnvironmentWebhookConfig
        include Google::Apis::Core::Hashable
      
        # The list of webhooks to override for the agent environment. The webhook must
        # exist in the agent. You can override fields in `generic_web_service` and `
        # service_directory`.
        # Corresponds to the JSON property `webhookOverrides`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Webhook>]
        attr_accessor :webhook_overrides
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @webhook_overrides = args[:webhook_overrides] if args.key?(:webhook_overrides)
        end
      end
      
      # An event handler specifies an event that can be handled during a session. When
      # the specified event happens, the following actions are taken in order: * If
      # there is a `trigger_fulfillment` associated with the event, it will be called.
      # * If there is a `target_page` associated with the event, the session will
      # transition into the specified page. * If there is a `target_flow` associated
      # with the event, the session will transition into the specified flow.
      class GoogleCloudDialogflowCxV3beta1EventHandler
        include Google::Apis::Core::Hashable
      
        # Required. The name of the event to handle.
        # Corresponds to the JSON property `event`
        # @return [String]
        attr_accessor :event
      
        # Output only. The unique identifier of this event handler.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The target flow to transition to. Format: `projects//locations//agents//flows/`
        # .
        # Corresponds to the JSON property `targetFlow`
        # @return [String]
        attr_accessor :target_flow
      
        # The target page to transition to. Format: `projects//locations//agents//flows//
        # pages/`.
        # Corresponds to the JSON property `targetPage`
        # @return [String]
        attr_accessor :target_page
      
        # A fulfillment can do one or more of the following actions at the same time: *
        # Generate rich message responses. * Set parameter values. * Call the webhook.
        # Fulfillments can be called at various stages in the Page or Form lifecycle.
        # For example, when a DetectIntentRequest drives a session to enter a new page,
        # the page's entry fulfillment can add a static response to the QueryResult in
        # the returning DetectIntentResponse, call the webhook (for example, to load
        # user data from a database), or both.
        # Corresponds to the JSON property `triggerFulfillment`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Fulfillment]
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
          @trigger_fulfillment = args[:trigger_fulfillment] if args.key?(:trigger_fulfillment)
        end
      end
      
      # Represents the event to trigger.
      class GoogleCloudDialogflowCxV3beta1EventInput
        include Google::Apis::Core::Hashable
      
        # Name of the event.
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
      
      # Represents an experiment in an environment.
      class GoogleCloudDialogflowCxV3beta1Experiment
        include Google::Apis::Core::Hashable
      
        # Creation time of this experiment.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Definition of the experiment.
        # Corresponds to the JSON property `definition`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ExperimentDefinition]
        attr_accessor :definition
      
        # The human-readable description of the experiment.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The human-readable name of the experiment (unique in an environment).
        # Limit of 64 characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # End time of this experiment.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Maximum number of days to run the experiment. If auto-rollout is not enabled,
        # default value and maximum will be 30 days. If auto-rollout is enabled, default
        # value and maximum will be 6 days.
        # Corresponds to the JSON property `experimentLength`
        # @return [String]
        attr_accessor :experiment_length
      
        # Last update time of this experiment.
        # Corresponds to the JSON property `lastUpdateTime`
        # @return [String]
        attr_accessor :last_update_time
      
        # The name of the experiment. Format: projects//locations//agents//environments//
        # experiments/..
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The inference result which includes an objective metric to optimize and the
        # confidence interval.
        # Corresponds to the JSON property `result`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ExperimentResult]
        attr_accessor :result
      
        # The configuration for auto rollout.
        # Corresponds to the JSON property `rolloutConfig`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1RolloutConfig]
        attr_accessor :rollout_config
      
        # The reason why rollout has failed. Should only be set when state is
        # ROLLOUT_FAILED.
        # Corresponds to the JSON property `rolloutFailureReason`
        # @return [String]
        attr_accessor :rollout_failure_reason
      
        # State of the auto-rollout process.
        # Corresponds to the JSON property `rolloutState`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1RolloutState]
        attr_accessor :rollout_state
      
        # Start time of this experiment.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # The current state of the experiment. Transition triggered by Experiments.
        # StartExperiment: DRAFT->RUNNING. Transition triggered by Experiments.
        # CancelExperiment: DRAFT->DONE or RUNNING->DONE.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # The history of updates to the experiment variants.
        # Corresponds to the JSON property `variantsHistory`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1VariantsHistory>]
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
      
      # Definition of the experiment.
      class GoogleCloudDialogflowCxV3beta1ExperimentDefinition
        include Google::Apis::Core::Hashable
      
        # The condition defines which subset of sessions are selected for this
        # experiment. If not specified, all sessions are eligible. E.g. "query_input.
        # language_code=en" See the [conditions reference](https://cloud.google.com/
        # dialogflow/cx/docs/reference/condition).
        # Corresponds to the JSON property `condition`
        # @return [String]
        attr_accessor :condition
      
        # A list of flow version variants.
        # Corresponds to the JSON property `versionVariants`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1VersionVariants]
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
      
      # The inference result which includes an objective metric to optimize and the
      # confidence interval.
      class GoogleCloudDialogflowCxV3beta1ExperimentResult
        include Google::Apis::Core::Hashable
      
        # The last time the experiment's stats data was updated. Will have default value
        # if stats have never been computed for this experiment.
        # Corresponds to the JSON property `lastUpdateTime`
        # @return [String]
        attr_accessor :last_update_time
      
        # Version variants and metrics.
        # Corresponds to the JSON property `versionMetrics`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetrics>]
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
      
      # A confidence interval is a range of possible values for the experiment
      # objective you are trying to measure.
      class GoogleCloudDialogflowCxV3beta1ExperimentResultConfidenceInterval
        include Google::Apis::Core::Hashable
      
        # The confidence level used to construct the interval, i.e. there is X% chance
        # that the true value is within this interval.
        # Corresponds to the JSON property `confidenceLevel`
        # @return [Float]
        attr_accessor :confidence_level
      
        # Lower bound of the interval.
        # Corresponds to the JSON property `lowerBound`
        # @return [Float]
        attr_accessor :lower_bound
      
        # The percent change between an experiment metric's value and the value for its
        # control.
        # Corresponds to the JSON property `ratio`
        # @return [Float]
        attr_accessor :ratio
      
        # Upper bound of the interval.
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
      
      # Metric and corresponding confidence intervals.
      class GoogleCloudDialogflowCxV3beta1ExperimentResultMetric
        include Google::Apis::Core::Hashable
      
        # A confidence interval is a range of possible values for the experiment
        # objective you are trying to measure.
        # Corresponds to the JSON property `confidenceInterval`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ExperimentResultConfidenceInterval]
        attr_accessor :confidence_interval
      
        # Count value of a metric.
        # Corresponds to the JSON property `count`
        # @return [Float]
        attr_accessor :count
      
        # Count-based metric type. Only one of type or count_type is specified in each
        # Metric.
        # Corresponds to the JSON property `countType`
        # @return [String]
        attr_accessor :count_type
      
        # Ratio value of a metric.
        # Corresponds to the JSON property `ratio`
        # @return [Float]
        attr_accessor :ratio
      
        # Ratio-based metric type. Only one of type or count_type is specified in each
        # Metric.
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
      
      # Version variant and associated metrics.
      class GoogleCloudDialogflowCxV3beta1ExperimentResultVersionMetrics
        include Google::Apis::Core::Hashable
      
        # The metrics and corresponding confidence intervals in the inference result.
        # Corresponds to the JSON property `metrics`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ExperimentResultMetric>]
        attr_accessor :metrics
      
        # Number of sessions that were allocated to this version.
        # Corresponds to the JSON property `sessionCount`
        # @return [Fixnum]
        attr_accessor :session_count
      
        # The name of the flow Version. Format: `projects//locations//agents//flows//
        # versions/`.
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
      
      # The request message for Agents.ExportAgent.
      class GoogleCloudDialogflowCxV3beta1ExportAgentRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The [Google Cloud Storage](https://cloud.google.com/storage/docs/)
        # URI to export the agent to. The format of this URI must be `gs:///`. If left
        # unspecified, the serialized agent is returned inline. Dialogflow performs a
        # write operation for the Cloud Storage object on the caller's behalf, so your
        # request authentication must have write permissions for the object. For more
        # information, see [Dialogflow access control](https://cloud.google.com/
        # dialogflow/cx/docs/concept/access-control#storage).
        # Corresponds to the JSON property `agentUri`
        # @return [String]
        attr_accessor :agent_uri
      
        # Optional. The data format of the exported agent. If not specified, `BLOB` is
        # assumed.
        # Corresponds to the JSON property `dataFormat`
        # @return [String]
        attr_accessor :data_format
      
        # Optional. Environment name. If not set, draft environment is assumed. Format: `
        # projects//locations//agents//environments/`.
        # Corresponds to the JSON property `environment`
        # @return [String]
        attr_accessor :environment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_uri = args[:agent_uri] if args.key?(:agent_uri)
          @data_format = args[:data_format] if args.key?(:data_format)
          @environment = args[:environment] if args.key?(:environment)
        end
      end
      
      # The response message for Agents.ExportAgent.
      class GoogleCloudDialogflowCxV3beta1ExportAgentResponse
        include Google::Apis::Core::Hashable
      
        # Uncompressed raw byte content for agent.
        # Corresponds to the JSON property `agentContent`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :agent_content
      
        # The URI to a file containing the exported agent. This field is populated if `
        # agent_uri` is specified in ExportAgentRequest.
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
      
      # The request message for Flows.ExportFlow.
      class GoogleCloudDialogflowCxV3beta1ExportFlowRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The [Google Cloud Storage](https://cloud.google.com/storage/docs/)
        # URI to export the flow to. The format of this URI must be `gs:///`. If left
        # unspecified, the serialized flow is returned inline. Dialogflow performs a
        # write operation for the Cloud Storage object on the caller's behalf, so your
        # request authentication must have write permissions for the object. For more
        # information, see [Dialogflow access control](https://cloud.google.com/
        # dialogflow/cx/docs/concept/access-control#storage).
        # Corresponds to the JSON property `flowUri`
        # @return [String]
        attr_accessor :flow_uri
      
        # Optional. Whether to export flows referenced by the specified flow.
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
      
      # The response message for Flows.ExportFlow.
      class GoogleCloudDialogflowCxV3beta1ExportFlowResponse
        include Google::Apis::Core::Hashable
      
        # Uncompressed raw byte content for flow.
        # Corresponds to the JSON property `flowContent`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :flow_content
      
        # The URI to a file containing the exported flow. This field is populated only
        # if `flow_uri` is specified in ExportFlowRequest.
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
      
      # Metadata returned for the TestCases.ExportTestCases long running operation.
      # This message currently has no fields.
      class GoogleCloudDialogflowCxV3beta1ExportTestCasesMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The request message for TestCases.ExportTestCases.
      class GoogleCloudDialogflowCxV3beta1ExportTestCasesRequest
        include Google::Apis::Core::Hashable
      
        # The data format of the exported test cases. If not specified, `BLOB` is
        # assumed.
        # Corresponds to the JSON property `dataFormat`
        # @return [String]
        attr_accessor :data_format
      
        # The filter expression used to filter exported test cases, see [API Filtering](
        # https://aip.dev/160). The expression is case insensitive and supports the
        # following syntax: name = [OR name = ] ... For example: * "name = t1 OR name =
        # t2" matches the test case with the exact resource name "t1" or "t2".
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # The [Google Cloud Storage](https://cloud.google.com/storage/docs/) URI to
        # export the test cases to. The format of this URI must be `gs:///`. If
        # unspecified, the serialized test cases is returned inline. Dialogflow performs
        # a write operation for the Cloud Storage object on the caller's behalf, so your
        # request authentication must have write permissions for the object. For more
        # information, see [Dialogflow access control](https://cloud.google.com/
        # dialogflow/cx/docs/concept/access-control#storage).
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
      
      # The response message for TestCases.ExportTestCases.
      class GoogleCloudDialogflowCxV3beta1ExportTestCasesResponse
        include Google::Apis::Core::Hashable
      
        # Uncompressed raw byte content for test cases.
        # Corresponds to the JSON property `content`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :content
      
        # The URI to a file containing the exported test cases. This field is populated
        # only if `gcs_uri` is specified in ExportTestCasesRequest.
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
      
      # Flows represents the conversation flows when you build your chatbot agent. A
      # flow consists of many pages connected by the transition routes. Conversations
      # always start with the built-in Start Flow (with an all-0 ID). Transition
      # routes can direct the conversation session from the current flow (parent flow)
      # to another flow (sub flow). When the sub flow is finished, Dialogflow will
      # bring the session back to the parent flow, where the sub flow is started.
      # Usually, when a transition route is followed by a matched intent, the intent
      # will be "consumed". This means the intent won't activate more transition
      # routes. However, when the followed transition route moves the conversation
      # session into a different flow, the matched intent can be carried over and to
      # be consumed in the target flow.
      class GoogleCloudDialogflowCxV3beta1Flow
        include Google::Apis::Core::Hashable
      
        # The description of the flow. The maximum length is 500 characters. If exceeded,
        # the request is rejected.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The human-readable name of the flow.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # A flow's event handlers serve two purposes: * They are responsible for
        # handling events (e.g. no match, webhook errors) in the flow. * They are
        # inherited by every page's event handlers, which can be used to handle common
        # events regardless of the current page. Event handlers defined in the page have
        # higher priority than those defined in the flow. Unlike transition_routes,
        # these handlers are evaluated on a first-match basis. The first one that
        # matches the event get executed, with the rest being ignored.
        # Corresponds to the JSON property `eventHandlers`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EventHandler>]
        attr_accessor :event_handlers
      
        # The unique identifier of the flow. Format: `projects//locations//agents//flows/
        # `.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Settings related to NLU.
        # Corresponds to the JSON property `nluSettings`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1NluSettings]
        attr_accessor :nlu_settings
      
        # A flow's transition route group serve two purposes: * They are responsible for
        # matching the user's first utterances in the flow. * They are inherited by
        # every page's transition route groups. Transition route groups defined in the
        # page have higher priority than those defined in the flow. Format:`projects//
        # locations//agents//flows//transitionRouteGroups/`.
        # Corresponds to the JSON property `transitionRouteGroups`
        # @return [Array<String>]
        attr_accessor :transition_route_groups
      
        # A flow's transition routes serve two purposes: * They are responsible for
        # matching the user's first utterances in the flow. * They are inherited by
        # every page's transition routes and can support use cases such as the user
        # saying "help" or "can I talk to a human?", which can be handled in a common
        # way regardless of the current page. Transition routes defined in the page have
        # higher priority than those defined in the flow. TransitionRoutes are evalauted
        # in the following order: * TransitionRoutes with intent specified. *
        # TransitionRoutes with only condition specified. TransitionRoutes with intent
        # specified are inherited by pages in the flow.
        # Corresponds to the JSON property `transitionRoutes`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRoute>]
        attr_accessor :transition_routes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @event_handlers = args[:event_handlers] if args.key?(:event_handlers)
          @name = args[:name] if args.key?(:name)
          @nlu_settings = args[:nlu_settings] if args.key?(:nlu_settings)
          @transition_route_groups = args[:transition_route_groups] if args.key?(:transition_route_groups)
          @transition_routes = args[:transition_routes] if args.key?(:transition_routes)
        end
      end
      
      # The response message for Flows.GetFlowValidationResult.
      class GoogleCloudDialogflowCxV3beta1FlowValidationResult
        include Google::Apis::Core::Hashable
      
        # The unique identifier of the flow validation result. Format: `projects//
        # locations//agents//flows//validationResult`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Last time the flow was validated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Contains all validation messages.
        # Corresponds to the JSON property `validationMessages`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ValidationMessage>]
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
      
      # A form is a data model that groups related parameters that can be collected
      # from the user. The process in which the agent prompts the user and collects
      # parameter values from the user is called form filling. A form can be added to
      # a page. When form filling is done, the filled parameters will be written to
      # the session.
      class GoogleCloudDialogflowCxV3beta1Form
        include Google::Apis::Core::Hashable
      
        # Parameters to collect from the user.
        # Corresponds to the JSON property `parameters`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FormParameter>]
        attr_accessor :parameters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parameters = args[:parameters] if args.key?(:parameters)
        end
      end
      
      # Represents a form parameter.
      class GoogleCloudDialogflowCxV3beta1FormParameter
        include Google::Apis::Core::Hashable
      
        # The default value of an optional parameter. If the parameter is required, the
        # default value will be ignored.
        # Corresponds to the JSON property `defaultValue`
        # @return [Object]
        attr_accessor :default_value
      
        # Required. The human-readable name of the parameter, unique within the form.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. The entity type of the parameter. Format: `projects/-/locations/-/
        # agents/-/entityTypes/` for system entity types (for example, `projects/-/
        # locations/-/agents/-/entityTypes/sys.date`), or `projects//locations//agents//
        # entityTypes/` for developer entity types.
        # Corresponds to the JSON property `entityType`
        # @return [String]
        attr_accessor :entity_type
      
        # Configuration for how the filling of a parameter should be handled.
        # Corresponds to the JSON property `fillBehavior`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FormParameterFillBehavior]
        attr_accessor :fill_behavior
      
        # Indicates whether the parameter represents a list of values.
        # Corresponds to the JSON property `isList`
        # @return [Boolean]
        attr_accessor :is_list
        alias_method :is_list?, :is_list
      
        # Indicates whether the parameter content should be redacted in log. If
        # redaction is enabled, the parameter content will be replaced by parameter name
        # during logging. Note: the parameter content is subject to redaction if either
        # parameter level redaction or entity type level redaction is enabled.
        # Corresponds to the JSON property `redact`
        # @return [Boolean]
        attr_accessor :redact
        alias_method :redact?, :redact
      
        # Indicates whether the parameter is required. Optional parameters will not
        # trigger prompts; however, they are filled if the user specifies them. Required
        # parameters must be filled before form filling concludes.
        # Corresponds to the JSON property `required`
        # @return [Boolean]
        attr_accessor :required
        alias_method :required?, :required
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_value = args[:default_value] if args.key?(:default_value)
          @display_name = args[:display_name] if args.key?(:display_name)
          @entity_type = args[:entity_type] if args.key?(:entity_type)
          @fill_behavior = args[:fill_behavior] if args.key?(:fill_behavior)
          @is_list = args[:is_list] if args.key?(:is_list)
          @redact = args[:redact] if args.key?(:redact)
          @required = args[:required] if args.key?(:required)
        end
      end
      
      # Configuration for how the filling of a parameter should be handled.
      class GoogleCloudDialogflowCxV3beta1FormParameterFillBehavior
        include Google::Apis::Core::Hashable
      
        # A fulfillment can do one or more of the following actions at the same time: *
        # Generate rich message responses. * Set parameter values. * Call the webhook.
        # Fulfillments can be called at various stages in the Page or Form lifecycle.
        # For example, when a DetectIntentRequest drives a session to enter a new page,
        # the page's entry fulfillment can add a static response to the QueryResult in
        # the returning DetectIntentResponse, call the webhook (for example, to load
        # user data from a database), or both.
        # Corresponds to the JSON property `initialPromptFulfillment`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Fulfillment]
        attr_accessor :initial_prompt_fulfillment
      
        # The handlers for parameter-level events, used to provide reprompt for the
        # parameter or transition to a different page/flow. The supported events are: * `
        # sys.no-match-`, where N can be from 1 to 6 * `sys.no-match-default` * `sys.no-
        # input-`, where N can be from 1 to 6 * `sys.no-input-default` * `sys.invalid-
        # parameter` `initial_prompt_fulfillment` provides the first prompt for the
        # parameter. If the user's response does not fill the parameter, a no-match/no-
        # input event will be triggered, and the fulfillment associated with the `sys.no-
        # match-1`/`sys.no-input-1` handler (if defined) will be called to provide a
        # prompt. The `sys.no-match-2`/`sys.no-input-2` handler (if defined) will
        # respond to the next no-match/no-input event, and so on. A `sys.no-match-
        # default` or `sys.no-input-default` handler will be used to handle all
        # following no-match/no-input events after all numbered no-match/no-input
        # handlers for the parameter are consumed. A `sys.invalid-parameter` handler can
        # be defined to handle the case where the parameter values have been `
        # invalidated` by webhook. For example, if the user's response fill the
        # parameter, however the parameter was invalidated by webhook, the fulfillment
        # associated with the `sys.invalid-parameter` handler (if defined) will be
        # called to provide a prompt. If the event handler for the corresponding event
        # can't be found on the parameter, `initial_prompt_fulfillment` will be re-
        # prompted.
        # Corresponds to the JSON property `repromptEventHandlers`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EventHandler>]
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
      
      # Request of FulfillIntent
      class GoogleCloudDialogflowCxV3beta1FulfillIntentRequest
        include Google::Apis::Core::Hashable
      
        # Represents one match result of MatchIntent.
        # Corresponds to the JSON property `match`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Match]
        attr_accessor :match
      
        # Request of MatchIntent.
        # Corresponds to the JSON property `matchIntentRequest`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1MatchIntentRequest]
        attr_accessor :match_intent_request
      
        # Instructs the speech synthesizer how to generate the output audio content.
        # Corresponds to the JSON property `outputAudioConfig`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1OutputAudioConfig]
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
      
      # Response of FulfillIntent
      class GoogleCloudDialogflowCxV3beta1FulfillIntentResponse
        include Google::Apis::Core::Hashable
      
        # The audio data bytes encoded as specified in the request. Note: The output
        # audio is generated based on the values of default platform text responses
        # found in the `query_result.response_messages` field. If multiple default text
        # responses exist, they will be concatenated when generating audio. If no
        # default platform text responses exist, the generated audio content will be
        # empty. In some scenarios, multiple output audio fields may be present in the
        # response structure. In these cases, only the top-most-level audio output has
        # content.
        # Corresponds to the JSON property `outputAudio`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :output_audio
      
        # Instructs the speech synthesizer how to generate the output audio content.
        # Corresponds to the JSON property `outputAudioConfig`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1OutputAudioConfig]
        attr_accessor :output_audio_config
      
        # Represents the result of a conversational query.
        # Corresponds to the JSON property `queryResult`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1QueryResult]
        attr_accessor :query_result
      
        # Output only. The unique identifier of the response. It can be used to locate a
        # response in the training example set or for reporting issues.
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
      
      # A fulfillment can do one or more of the following actions at the same time: *
      # Generate rich message responses. * Set parameter values. * Call the webhook.
      # Fulfillments can be called at various stages in the Page or Form lifecycle.
      # For example, when a DetectIntentRequest drives a session to enter a new page,
      # the page's entry fulfillment can add a static response to the QueryResult in
      # the returning DetectIntentResponse, call the webhook (for example, to load
      # user data from a database), or both.
      class GoogleCloudDialogflowCxV3beta1Fulfillment
        include Google::Apis::Core::Hashable
      
        # Conditional cases for this fulfillment.
        # Corresponds to the JSON property `conditionalCases`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases>]
        attr_accessor :conditional_cases
      
        # The list of rich message responses to present to the user.
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ResponseMessage>]
        attr_accessor :messages
      
        # Whether Dialogflow should return currently queued fulfillment response
        # messages in streaming APIs. If a webhook is specified, it happens before
        # Dialogflow invokes webhook. Warning: 1) This flag only affects streaming API.
        # Responses are still queued and returned once in non-streaming API. 2) The flag
        # can be enabled in any fulfillment but only the first 3 partial responses will
        # be returned. You may only want to apply it to fulfillments that have slow
        # webhooks.
        # Corresponds to the JSON property `returnPartialResponses`
        # @return [Boolean]
        attr_accessor :return_partial_responses
        alias_method :return_partial_responses?, :return_partial_responses
      
        # Set parameter values before executing the webhook.
        # Corresponds to the JSON property `setParameterActions`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction>]
        attr_accessor :set_parameter_actions
      
        # The value of this field will be populated in the WebhookRequest `
        # fulfillmentInfo.tag` field by Dialogflow when the associated webhook is called.
        # The tag is typically used by the webhook service to identify which
        # fulfillment is being called, but it could be used for other purposes. This
        # field is required if `webhook` is specified.
        # Corresponds to the JSON property `tag`
        # @return [String]
        attr_accessor :tag
      
        # The webhook to call. Format: `projects//locations//agents//webhooks/`.
        # Corresponds to the JSON property `webhook`
        # @return [String]
        attr_accessor :webhook
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conditional_cases = args[:conditional_cases] if args.key?(:conditional_cases)
          @messages = args[:messages] if args.key?(:messages)
          @return_partial_responses = args[:return_partial_responses] if args.key?(:return_partial_responses)
          @set_parameter_actions = args[:set_parameter_actions] if args.key?(:set_parameter_actions)
          @tag = args[:tag] if args.key?(:tag)
          @webhook = args[:webhook] if args.key?(:webhook)
        end
      end
      
      # A list of cascading if-else conditions. Cases are mutually exclusive. The
      # first one with a matching condition is selected, all the rest ignored.
      class GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases
        include Google::Apis::Core::Hashable
      
        # A list of cascading if-else conditions.
        # Corresponds to the JSON property `cases`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase>]
        attr_accessor :cases
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cases = args[:cases] if args.key?(:cases)
        end
      end
      
      # Each case has a Boolean condition. When it is evaluated to be True, the
      # corresponding messages will be selected and evaluated recursively.
      class GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase
        include Google::Apis::Core::Hashable
      
        # A list of case content.
        # Corresponds to the JSON property `caseContent`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent>]
        attr_accessor :case_content
      
        # The condition to activate and select this case. Empty means the condition is
        # always true. The condition is evaluated against form parameters or session
        # parameters. See the [conditions reference](https://cloud.google.com/dialogflow/
        # cx/docs/reference/condition).
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
      
      # The list of messages or conditional cases to activate for this case.
      class GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent
        include Google::Apis::Core::Hashable
      
        # A list of cascading if-else conditions. Cases are mutually exclusive. The
        # first one with a matching condition is selected, all the rest ignored.
        # Corresponds to the JSON property `additionalCases`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases]
        attr_accessor :additional_cases
      
        # Represents a response message that can be returned by a conversational agent.
        # Response messages are also used for output audio synthesis. The approach is as
        # follows: * If at least one OutputAudioText response is present, then all
        # OutputAudioText responses are linearly concatenated, and the result is used
        # for output audio synthesis. * If the OutputAudioText responses are a mixture
        # of text and SSML, then the concatenated result is treated as SSML; otherwise,
        # the result is treated as either text or SSML as appropriate. The agent
        # designer should ideally use either text or SSML consistently throughout the
        # bot design. * Otherwise, all Text responses are linearly concatenated, and the
        # result is used for output audio synthesis. This approach allows for more
        # sophisticated user experience scenarios, where the text displayed to the user
        # may differ from what is heard.
        # Corresponds to the JSON property `message`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ResponseMessage]
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
      
      # Setting a parameter value.
      class GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction
        include Google::Apis::Core::Hashable
      
        # Display name of the parameter.
        # Corresponds to the JSON property `parameter`
        # @return [String]
        attr_accessor :parameter
      
        # The new value of the parameter. A null value clears the parameter.
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
      
      # Google Cloud Storage location for a Dialogflow operation that writes or
      # exports objects (e.g. exported agent or transcripts) outside of Dialogflow.
      class GoogleCloudDialogflowCxV3beta1GcsDestination
        include Google::Apis::Core::Hashable
      
        # Required. The Google Cloud Storage URI for the exported objects. A URI is of
        # the form: `gs://bucket/object-name-or-prefix` Whether a full object name, or
        # just a prefix, its usage depends on the Dialogflow operation.
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
      
      # Metadata in google::longrunning::Operation for Knowledge operations.
      class GoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Required. Output only. The current state of this operation.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Metadata for ImportDocuments operation.
      class GoogleCloudDialogflowCxV3beta1ImportDocumentsOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Metadata in google::longrunning::Operation for Knowledge operations.
        # Corresponds to the JSON property `genericMetadata`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata]
        attr_accessor :generic_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @generic_metadata = args[:generic_metadata] if args.key?(:generic_metadata)
        end
      end
      
      # Response message for Documents.ImportDocuments.
      class GoogleCloudDialogflowCxV3beta1ImportDocumentsResponse
        include Google::Apis::Core::Hashable
      
        # Includes details about skipped documents or any other warnings.
        # Corresponds to the JSON property `warnings`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleRpcStatus>]
        attr_accessor :warnings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @warnings = args[:warnings] if args.key?(:warnings)
        end
      end
      
      # The request message for Flows.ImportFlow.
      class GoogleCloudDialogflowCxV3beta1ImportFlowRequest
        include Google::Apis::Core::Hashable
      
        # Uncompressed raw byte content for flow.
        # Corresponds to the JSON property `flowContent`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :flow_content
      
        # The [Google Cloud Storage](https://cloud.google.com/storage/docs/) URI to
        # import flow from. The format of this URI must be `gs:///`. Dialogflow performs
        # a read operation for the Cloud Storage object on the caller's behalf, so your
        # request authentication must have read permissions for the object. For more
        # information, see [Dialogflow access control](https://cloud.google.com/
        # dialogflow/cx/docs/concept/access-control#storage).
        # Corresponds to the JSON property `flowUri`
        # @return [String]
        attr_accessor :flow_uri
      
        # Flow import mode. If not specified, `KEEP` is assumed.
        # Corresponds to the JSON property `importOption`
        # @return [String]
        attr_accessor :import_option
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @flow_content = args[:flow_content] if args.key?(:flow_content)
          @flow_uri = args[:flow_uri] if args.key?(:flow_uri)
          @import_option = args[:import_option] if args.key?(:import_option)
        end
      end
      
      # The response message for Flows.ImportFlow.
      class GoogleCloudDialogflowCxV3beta1ImportFlowResponse
        include Google::Apis::Core::Hashable
      
        # The unique identifier of the new flow. Format: `projects//locations//agents//
        # flows/`.
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
      
      # Metadata returned for the TestCases.ImportTestCases long running operation.
      class GoogleCloudDialogflowCxV3beta1ImportTestCasesMetadata
        include Google::Apis::Core::Hashable
      
        # Errors for failed test cases.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCaseError>]
        attr_accessor :errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @errors = args[:errors] if args.key?(:errors)
        end
      end
      
      # The request message for TestCases.ImportTestCases.
      class GoogleCloudDialogflowCxV3beta1ImportTestCasesRequest
        include Google::Apis::Core::Hashable
      
        # Uncompressed raw byte content for test cases.
        # Corresponds to the JSON property `content`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :content
      
        # The [Google Cloud Storage](https://cloud.google.com/storage/docs/) URI to
        # import test cases from. The format of this URI must be `gs:///`. Dialogflow
        # performs a read operation for the Cloud Storage object on the caller's behalf,
        # so your request authentication must have read permissions for the object. For
        # more information, see [Dialogflow access control](https://cloud.google.com/
        # dialogflow/cx/docs/concept/access-control#storage).
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
      
      # The response message for TestCases.ImportTestCases.
      class GoogleCloudDialogflowCxV3beta1ImportTestCasesResponse
        include Google::Apis::Core::Hashable
      
        # The unique identifiers of the new test cases. Format: `projects//locations//
        # agents//testCases/`.
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
      
      # Instructs the speech recognizer on how to process the audio content.
      class GoogleCloudDialogflowCxV3beta1InputAudioConfig
        include Google::Apis::Core::Hashable
      
        # Required. Audio encoding of the audio content to process.
        # Corresponds to the JSON property `audioEncoding`
        # @return [String]
        attr_accessor :audio_encoding
      
        # Optional. If `true`, Dialogflow returns SpeechWordInfo in
        # StreamingRecognitionResult with information about the recognized speech words,
        # e.g. start and end time offsets. If false or unspecified, Speech doesn't
        # return any word-level information.
        # Corresponds to the JSON property `enableWordInfo`
        # @return [Boolean]
        attr_accessor :enable_word_info
        alias_method :enable_word_info?, :enable_word_info
      
        # Optional. Which Speech model to select for the given request. Select the model
        # best suited to your domain to get best results. If a model is not explicitly
        # specified, then we auto-select a model based on the parameters in the
        # InputAudioConfig. If enhanced speech model is enabled for the agent and an
        # enhanced version of the specified model for the language does not exist, then
        # the speech is recognized using the standard version of the specified model.
        # Refer to [Cloud Speech API documentation](https://cloud.google.com/speech-to-
        # text/docs/basics#select-model) for more details. If you specify a model, the
        # following models typically have the best performance: - phone_call (best for
        # Agent Assist and telephony) - latest_short (best for Dialogflow non-telephony)
        # - command_and_search (best for very short utterances and commands)
        # Corresponds to the JSON property `model`
        # @return [String]
        attr_accessor :model
      
        # Optional. Which variant of the Speech model to use.
        # Corresponds to the JSON property `modelVariant`
        # @return [String]
        attr_accessor :model_variant
      
        # Optional. A list of strings containing words and phrases that the speech
        # recognizer should recognize with higher likelihood. See [the Cloud Speech
        # documentation](https://cloud.google.com/speech-to-text/docs/basics#phrase-
        # hints) for more details.
        # Corresponds to the JSON property `phraseHints`
        # @return [Array<String>]
        attr_accessor :phrase_hints
      
        # Sample rate (in Hertz) of the audio content sent in the query. Refer to [Cloud
        # Speech API documentation](https://cloud.google.com/speech-to-text/docs/basics)
        # for more details.
        # Corresponds to the JSON property `sampleRateHertz`
        # @return [Fixnum]
        attr_accessor :sample_rate_hertz
      
        # Optional. If `false` (default), recognition does not cease until the client
        # closes the stream. If `true`, the recognizer will detect a single spoken
        # utterance in input audio. Recognition ceases when it detects the audio's voice
        # has stopped or paused. In this case, once a detected intent is received, the
        # client should close the stream and start a new request with a new stream as
        # needed. Note: This setting is relevant only for streaming methods.
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
          @enable_word_info = args[:enable_word_info] if args.key?(:enable_word_info)
          @model = args[:model] if args.key?(:model)
          @model_variant = args[:model_variant] if args.key?(:model_variant)
          @phrase_hints = args[:phrase_hints] if args.key?(:phrase_hints)
          @sample_rate_hertz = args[:sample_rate_hertz] if args.key?(:sample_rate_hertz)
          @single_utterance = args[:single_utterance] if args.key?(:single_utterance)
        end
      end
      
      # An intent represents a user's intent to interact with a conversational agent.
      # You can provide information for the Dialogflow API to use to match user input
      # to an intent by adding training phrases (i.e., examples of user input) to your
      # intent.
      class GoogleCloudDialogflowCxV3beta1Intent
        include Google::Apis::Core::Hashable
      
        # Human readable description for better understanding an intent like its scope,
        # content, result etc. Maximum character limit: 140 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The human-readable name of the intent, unique within the agent.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Indicates whether this is a fallback intent. Currently only default fallback
        # intent is allowed in the agent, which is added upon agent creation. Adding
        # training phrases to fallback intent is useful in the case of requests that are
        # mistakenly matched, since training phrases assigned to fallback intents act as
        # negative examples that triggers no-match event.
        # Corresponds to the JSON property `isFallback`
        # @return [Boolean]
        attr_accessor :is_fallback
        alias_method :is_fallback?, :is_fallback
      
        # The key/value metadata to label an intent. Labels can contain lowercase
        # letters, digits and the symbols '-' and '_'. International characters are
        # allowed, including letters from unicase alphabets. Keys must start with a
        # letter. Keys and values can be no longer than 63 characters and no more than
        # 128 bytes. Prefix "sys-" is reserved for Dialogflow defined labels. Currently
        # allowed Dialogflow defined labels include: * sys-head * sys-contextual The
        # above labels do not require value. "sys-head" means the intent is a head
        # intent. "sys-contextual" means the intent is a contextual intent.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The unique identifier of the intent. Required for the Intents.UpdateIntent
        # method. Intents.CreateIntent populates the name automatically. Format: `
        # projects//locations//agents//intents/`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The collection of parameters associated with the intent.
        # Corresponds to the JSON property `parameters`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1IntentParameter>]
        attr_accessor :parameters
      
        # The priority of this intent. Higher numbers represent higher priorities. - If
        # the supplied value is unspecified or 0, the service translates the value to
        # 500,000, which corresponds to the `Normal` priority in the console. - If the
        # supplied value is negative, the intent is ignored in runtime detect intent
        # requests.
        # Corresponds to the JSON property `priority`
        # @return [Fixnum]
        attr_accessor :priority
      
        # The collection of training phrases the agent is trained on to identify the
        # intent.
        # Corresponds to the JSON property `trainingPhrases`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase>]
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
      
      # Intent coverage represents the percentage of all possible intents in the agent
      # that are triggered in any of a parent's test cases.
      class GoogleCloudDialogflowCxV3beta1IntentCoverage
        include Google::Apis::Core::Hashable
      
        # The percent of intents in the agent that are covered.
        # Corresponds to the JSON property `coverageScore`
        # @return [Float]
        attr_accessor :coverage_score
      
        # The list of Intents present in the agent
        # Corresponds to the JSON property `intents`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1IntentCoverageIntent>]
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
      
      # The agent's intent.
      class GoogleCloudDialogflowCxV3beta1IntentCoverageIntent
        include Google::Apis::Core::Hashable
      
        # Whether the intent is covered by at least one of the agent's test cases.
        # Corresponds to the JSON property `covered`
        # @return [Boolean]
        attr_accessor :covered
        alias_method :covered?, :covered
      
        # The intent full resource name
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
      
      # Represents the intent to trigger programmatically rather than as a result of
      # natural language processing.
      class GoogleCloudDialogflowCxV3beta1IntentInput
        include Google::Apis::Core::Hashable
      
        # Required. The unique identifier of the intent. Format: `projects//locations//
        # agents//intents/`.
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
      
      # Represents an intent parameter.
      class GoogleCloudDialogflowCxV3beta1IntentParameter
        include Google::Apis::Core::Hashable
      
        # Required. The entity type of the parameter. Format: `projects/-/locations/-/
        # agents/-/entityTypes/` for system entity types (for example, `projects/-/
        # locations/-/agents/-/entityTypes/sys.date`), or `projects//locations//agents//
        # entityTypes/` for developer entity types.
        # Corresponds to the JSON property `entityType`
        # @return [String]
        attr_accessor :entity_type
      
        # Required. The unique identifier of the parameter. This field is used by
        # training phrases to annotate their parts.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Indicates whether the parameter represents a list of values.
        # Corresponds to the JSON property `isList`
        # @return [Boolean]
        attr_accessor :is_list
        alias_method :is_list?, :is_list
      
        # Indicates whether the parameter content should be redacted in log. If
        # redaction is enabled, the parameter content will be replaced by parameter name
        # during logging. Note: the parameter content is subject to redaction if either
        # parameter level redaction or entity type level redaction is enabled.
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
      
      # Represents an example that the agent is trained on to identify the intent.
      class GoogleCloudDialogflowCxV3beta1IntentTrainingPhrase
        include Google::Apis::Core::Hashable
      
        # Output only. The unique identifier of the training phrase.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Required. The ordered list of training phrase parts. The parts are
        # concatenated in order to form the training phrase. Note: The API does not
        # automatically annotate training phrases like the Dialogflow Console does. Note:
        # Do not forget to include whitespace at part boundaries, so the training
        # phrase is well formatted when the parts are concatenated. If the training
        # phrase does not need to be annotated with parameters, you just need a single
        # part with only the Part.text field set. If you want to annotate the training
        # phrase, you must create multiple parts, where the fields of each part are
        # populated in one of two ways: - `Part.text` is set to a part of the phrase
        # that has no parameters. - `Part.text` is set to a part of the phrase that you
        # want to annotate, and the `parameter_id` field is set.
        # Corresponds to the JSON property `parts`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart>]
        attr_accessor :parts
      
        # Indicates how many times this example was added to the intent.
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
      
      # Represents a part of a training phrase.
      class GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart
        include Google::Apis::Core::Hashable
      
        # The parameter used to annotate this part of the training phrase. This field is
        # required for annotated parts of the training phrase.
        # Corresponds to the JSON property `parameterId`
        # @return [String]
        attr_accessor :parameter_id
      
        # Required. The text for this part.
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
      
      # The response message for Agents.ListAgents.
      class GoogleCloudDialogflowCxV3beta1ListAgentsResponse
        include Google::Apis::Core::Hashable
      
        # The list of agents. There will be a maximum number of items returned based on
        # the page_size field in the request.
        # Corresponds to the JSON property `agents`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Agent>]
        attr_accessor :agents
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
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
      
      # The response message for Changelogs.ListChangelogs.
      class GoogleCloudDialogflowCxV3beta1ListChangelogsResponse
        include Google::Apis::Core::Hashable
      
        # The list of changelogs. There will be a maximum number of items returned based
        # on the page_size field in the request. The changelogs will be ordered by
        # timestamp.
        # Corresponds to the JSON property `changelogs`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Changelog>]
        attr_accessor :changelogs
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
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
      
      # The response message for Environments.ListTestCaseResults.
      class GoogleCloudDialogflowCxV3beta1ListContinuousTestResultsResponse
        include Google::Apis::Core::Hashable
      
        # The list of continuous test results.
        # Corresponds to the JSON property `continuousTestResults`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ContinuousTestResult>]
        attr_accessor :continuous_test_results
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
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
      
      # The response message for Deployments.ListDeployments.
      class GoogleCloudDialogflowCxV3beta1ListDeploymentsResponse
        include Google::Apis::Core::Hashable
      
        # The list of deployments. There will be a maximum number of items returned
        # based on the page_size field in the request. The list may in some cases be
        # empty or contain fewer entries than page_size even if this isn't the last page.
        # Corresponds to the JSON property `deployments`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Deployment>]
        attr_accessor :deployments
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
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
      
      # The response message for EntityTypes.ListEntityTypes.
      class GoogleCloudDialogflowCxV3beta1ListEntityTypesResponse
        include Google::Apis::Core::Hashable
      
        # The list of entity types. There will be a maximum number of items returned
        # based on the page_size field in the request.
        # Corresponds to the JSON property `entityTypes`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EntityType>]
        attr_accessor :entity_types
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
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
      
      # The response message for Environments.ListEnvironments.
      class GoogleCloudDialogflowCxV3beta1ListEnvironmentsResponse
        include Google::Apis::Core::Hashable
      
        # The list of environments. There will be a maximum number of items returned
        # based on the page_size field in the request. The list may in some cases be
        # empty or contain fewer entries than page_size even if this isn't the last page.
        # Corresponds to the JSON property `environments`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Environment>]
        attr_accessor :environments
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
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
      
      # The response message for Experiments.ListExperiments.
      class GoogleCloudDialogflowCxV3beta1ListExperimentsResponse
        include Google::Apis::Core::Hashable
      
        # The list of experiments. There will be a maximum number of items returned
        # based on the page_size field in the request. The list may in some cases be
        # empty or contain fewer entries than page_size even if this isn't the last page.
        # Corresponds to the JSON property `experiments`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Experiment>]
        attr_accessor :experiments
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
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
      
      # The response message for Flows.ListFlows.
      class GoogleCloudDialogflowCxV3beta1ListFlowsResponse
        include Google::Apis::Core::Hashable
      
        # The list of flows. There will be a maximum number of items returned based on
        # the page_size field in the request.
        # Corresponds to the JSON property `flows`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Flow>]
        attr_accessor :flows
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
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
      
      # The response message for Intents.ListIntents.
      class GoogleCloudDialogflowCxV3beta1ListIntentsResponse
        include Google::Apis::Core::Hashable
      
        # The list of intents. There will be a maximum number of items returned based on
        # the page_size field in the request.
        # Corresponds to the JSON property `intents`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Intent>]
        attr_accessor :intents
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
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
      
      # The response message for Pages.ListPages.
      class GoogleCloudDialogflowCxV3beta1ListPagesResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of pages. There will be a maximum number of items returned based on
        # the page_size field in the request.
        # Corresponds to the JSON property `pages`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Page>]
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
      
      # The response message for SecuritySettings.ListSecuritySettings.
      class GoogleCloudDialogflowCxV3beta1ListSecuritySettingsResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of security settings.
        # Corresponds to the JSON property `securitySettings`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SecuritySettings>]
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
      
      # The response message for SessionEntityTypes.ListSessionEntityTypes.
      class GoogleCloudDialogflowCxV3beta1ListSessionEntityTypesResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of session entity types. There will be a maximum number of items
        # returned based on the page_size field in the request.
        # Corresponds to the JSON property `sessionEntityTypes`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType>]
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
      
      # The response message for TestCases.ListTestCaseResults.
      class GoogleCloudDialogflowCxV3beta1ListTestCaseResultsResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of test case results.
        # Corresponds to the JSON property `testCaseResults`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCaseResult>]
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
      
      # The response message for TestCases.ListTestCases.
      class GoogleCloudDialogflowCxV3beta1ListTestCasesResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of test cases. There will be a maximum number of items returned based
        # on the page_size field in the request.
        # Corresponds to the JSON property `testCases`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCase>]
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
      
      # The response message for TransitionRouteGroups.ListTransitionRouteGroups.
      class GoogleCloudDialogflowCxV3beta1ListTransitionRouteGroupsResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of transition route groups. There will be a maximum number of items
        # returned based on the page_size field in the request. The list may in some
        # cases be empty or contain fewer entries than page_size even if this isn't the
        # last page.
        # Corresponds to the JSON property `transitionRouteGroups`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup>]
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
      
      # The response message for Versions.ListVersions.
      class GoogleCloudDialogflowCxV3beta1ListVersionsResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of versions. There will be a maximum number of items returned based on
        # the page_size field in the request. The list may in some cases be empty or
        # contain fewer entries than page_size even if this isn't the last page.
        # Corresponds to the JSON property `versions`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Version>]
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
      
      # The response message for Webhooks.ListWebhooks.
      class GoogleCloudDialogflowCxV3beta1ListWebhooksResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of webhooks. There will be a maximum number of items returned based
        # on the page_size field in the request.
        # Corresponds to the JSON property `webhooks`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Webhook>]
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
      
      # The request message for Versions.LoadVersion.
      class GoogleCloudDialogflowCxV3beta1LoadVersionRequest
        include Google::Apis::Core::Hashable
      
        # This field is used to prevent accidental overwrite of other agent resources,
        # which can potentially impact other flow's behavior. If `
        # allow_override_agent_resources` is false, conflicted agent-level resources
        # will not be overridden (i.e. intents, entities, webhooks).
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
      
      # The response message for Environments.LookupEnvironmentHistory.
      class GoogleCloudDialogflowCxV3beta1LookupEnvironmentHistoryResponse
        include Google::Apis::Core::Hashable
      
        # Represents a list of snapshots for an environment. Time of the snapshots is
        # stored in `update_time`.
        # Corresponds to the JSON property `environments`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Environment>]
        attr_accessor :environments
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
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
      
      # Represents one match result of MatchIntent.
      class GoogleCloudDialogflowCxV3beta1Match
        include Google::Apis::Core::Hashable
      
        # The confidence of this match. Values range from 0.0 (completely uncertain) to
        # 1.0 (completely certain). This value is for informational purpose only and is
        # only used to help match the best intent within the classification threshold.
        # This value may change for the same end-user expression at any time due to a
        # model retraining or change in implementation.
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # The event that matched the query. Filled for `EVENT`, `NO_MATCH` and `NO_INPUT`
        # match types.
        # Corresponds to the JSON property `event`
        # @return [String]
        attr_accessor :event
      
        # An intent represents a user's intent to interact with a conversational agent.
        # You can provide information for the Dialogflow API to use to match user input
        # to an intent by adding training phrases (i.e., examples of user input) to your
        # intent.
        # Corresponds to the JSON property `intent`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Intent]
        attr_accessor :intent
      
        # Type of this Match.
        # Corresponds to the JSON property `matchType`
        # @return [String]
        attr_accessor :match_type
      
        # The collection of parameters extracted from the query. Depending on your
        # protocol or client library language, this is a map, associative array, symbol
        # table, dictionary, or JSON object composed of a collection of (MapKey,
        # MapValue) pairs: * MapKey type: string * MapKey value: parameter name *
        # MapValue type: If parameter's entity type is a composite entity then use map,
        # otherwise, depending on the parameter value type, it could be one of string,
        # number, boolean, null, list or map. * MapValue value: If parameter's entity
        # type is a composite entity then use map from composite entity property names
        # to property values, otherwise, use parameter value.
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,Object>]
        attr_accessor :parameters
      
        # Final text input which was matched during MatchIntent. This value can be
        # different from original input sent in request because of spelling correction
        # or other processing.
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
      
      # Request of MatchIntent.
      class GoogleCloudDialogflowCxV3beta1MatchIntentRequest
        include Google::Apis::Core::Hashable
      
        # Persist session parameter changes from `query_params`.
        # Corresponds to the JSON property `persistParameterChanges`
        # @return [Boolean]
        attr_accessor :persist_parameter_changes
        alias_method :persist_parameter_changes?, :persist_parameter_changes
      
        # Represents the query input. It can contain one of: 1. A conversational query
        # in the form of text. 2. An intent query that specifies which intent to trigger.
        # 3. Natural language speech audio to be processed. 4. An event to be triggered.
        # 5. DTMF digits to invoke an intent and fill in parameter value.
        # Corresponds to the JSON property `queryInput`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1QueryInput]
        attr_accessor :query_input
      
        # Represents the parameters of a conversational query.
        # Corresponds to the JSON property `queryParams`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1QueryParameters]
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
      
      # Response of MatchIntent.
      class GoogleCloudDialogflowCxV3beta1MatchIntentResponse
        include Google::Apis::Core::Hashable
      
        # A Dialogflow CX conversation (session) can be described and visualized as a
        # state machine. The states of a CX session are represented by pages. For each
        # flow, you define many pages, where your combined pages can handle a complete
        # conversation on the topics the flow is designed for. At any given moment,
        # exactly one page is the current page, the current page is considered active,
        # and the flow associated with that page is considered active. Every flow has a
        # special start page. When a flow initially becomes active, the start page page
        # becomes the current page. For each conversational turn, the current page will
        # either stay the same or transition to another page. You configure each page to
        # collect information from the end-user that is relevant for the conversational
        # state represented by the page. For more information, see the [Page guide](
        # https://cloud.google.com/dialogflow/cx/docs/concept/page).
        # Corresponds to the JSON property `currentPage`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Page]
        attr_accessor :current_page
      
        # Match results, if more than one, ordered descendingly by the confidence we
        # have that the particular intent matches the query.
        # Corresponds to the JSON property `matches`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Match>]
        attr_accessor :matches
      
        # If natural language text was provided as input, this field will contain a copy
        # of the text.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # If natural language speech audio was provided as input, this field will
        # contain the transcript for the audio.
        # Corresponds to the JSON property `transcript`
        # @return [String]
        attr_accessor :transcript
      
        # If an event was provided as input, this field will contain a copy of the event
        # name.
        # Corresponds to the JSON property `triggerEvent`
        # @return [String]
        attr_accessor :trigger_event
      
        # If an intent was provided as input, this field will contain a copy of the
        # intent identifier. Format: `projects//locations//agents//intents/`.
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
      
      # Settings related to NLU.
      class GoogleCloudDialogflowCxV3beta1NluSettings
        include Google::Apis::Core::Hashable
      
        # To filter out false positive results and still get variety in matched natural
        # language inputs for your agent, you can tune the machine learning
        # classification threshold. If the returned score value is less than the
        # threshold value, then a no-match event will be triggered. The score values
        # range from 0.0 (completely uncertain) to 1.0 (completely certain). If set to 0.
        # 0, the default of 0.3 is used.
        # Corresponds to the JSON property `classificationThreshold`
        # @return [Float]
        attr_accessor :classification_threshold
      
        # Indicates NLU model training mode.
        # Corresponds to the JSON property `modelTrainingMode`
        # @return [String]
        attr_accessor :model_training_mode
      
        # Indicates the type of NLU model.
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
      
      # Instructs the speech synthesizer how to generate the output audio content.
      class GoogleCloudDialogflowCxV3beta1OutputAudioConfig
        include Google::Apis::Core::Hashable
      
        # Required. Audio encoding of the synthesized audio content.
        # Corresponds to the JSON property `audioEncoding`
        # @return [String]
        attr_accessor :audio_encoding
      
        # Optional. The synthesis sample rate (in hertz) for this audio. If not provided,
        # then the synthesizer will use the default sample rate based on the audio
        # encoding. If this is different from the voice's natural sample rate, then the
        # synthesizer will honor this request by converting to the desired sample rate (
        # which might result in worse audio quality).
        # Corresponds to the JSON property `sampleRateHertz`
        # @return [Fixnum]
        attr_accessor :sample_rate_hertz
      
        # Configuration of how speech should be synthesized.
        # Corresponds to the JSON property `synthesizeSpeechConfig`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig]
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
      
      # A Dialogflow CX conversation (session) can be described and visualized as a
      # state machine. The states of a CX session are represented by pages. For each
      # flow, you define many pages, where your combined pages can handle a complete
      # conversation on the topics the flow is designed for. At any given moment,
      # exactly one page is the current page, the current page is considered active,
      # and the flow associated with that page is considered active. Every flow has a
      # special start page. When a flow initially becomes active, the start page page
      # becomes the current page. For each conversational turn, the current page will
      # either stay the same or transition to another page. You configure each page to
      # collect information from the end-user that is relevant for the conversational
      # state represented by the page. For more information, see the [Page guide](
      # https://cloud.google.com/dialogflow/cx/docs/concept/page).
      class GoogleCloudDialogflowCxV3beta1Page
        include Google::Apis::Core::Hashable
      
        # Required. The human-readable name of the page, unique within the flow.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # A fulfillment can do one or more of the following actions at the same time: *
        # Generate rich message responses. * Set parameter values. * Call the webhook.
        # Fulfillments can be called at various stages in the Page or Form lifecycle.
        # For example, when a DetectIntentRequest drives a session to enter a new page,
        # the page's entry fulfillment can add a static response to the QueryResult in
        # the returning DetectIntentResponse, call the webhook (for example, to load
        # user data from a database), or both.
        # Corresponds to the JSON property `entryFulfillment`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Fulfillment]
        attr_accessor :entry_fulfillment
      
        # Handlers associated with the page to handle events such as webhook errors, no
        # match or no input.
        # Corresponds to the JSON property `eventHandlers`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EventHandler>]
        attr_accessor :event_handlers
      
        # A form is a data model that groups related parameters that can be collected
        # from the user. The process in which the agent prompts the user and collects
        # parameter values from the user is called form filling. A form can be added to
        # a page. When form filling is done, the filled parameters will be written to
        # the session.
        # Corresponds to the JSON property `form`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Form]
        attr_accessor :form
      
        # The unique identifier of the page. Required for the Pages.UpdatePage method.
        # Pages.CreatePage populates the name automatically. Format: `projects//
        # locations//agents//flows//pages/`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Ordered list of `TransitionRouteGroups` associated with the page. Transition
        # route groups must be unique within a page. * If multiple transition routes
        # within a page scope refer to the same intent, then the precedence order is:
        # page's transition route -> page's transition route group -> flow's transition
        # routes. * If multiple transition route groups within a page contain the same
        # intent, then the first group in the ordered list takes precedence. Format:`
        # projects//locations//agents//flows//transitionRouteGroups/`.
        # Corresponds to the JSON property `transitionRouteGroups`
        # @return [Array<String>]
        attr_accessor :transition_route_groups
      
        # A list of transitions for the transition rules of this page. They route the
        # conversation to another page in the same flow, or another flow. When we are in
        # a certain page, the TransitionRoutes are evalauted in the following order: *
        # TransitionRoutes defined in the page with intent specified. * TransitionRoutes
        # defined in the transition route groups with intent specified. *
        # TransitionRoutes defined in flow with intent specified. * TransitionRoutes
        # defined in the transition route groups with intent specified. *
        # TransitionRoutes defined in the page with only condition specified. *
        # TransitionRoutes defined in the transition route groups with only condition
        # specified.
        # Corresponds to the JSON property `transitionRoutes`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRoute>]
        attr_accessor :transition_routes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @entry_fulfillment = args[:entry_fulfillment] if args.key?(:entry_fulfillment)
          @event_handlers = args[:event_handlers] if args.key?(:event_handlers)
          @form = args[:form] if args.key?(:form)
          @name = args[:name] if args.key?(:name)
          @transition_route_groups = args[:transition_route_groups] if args.key?(:transition_route_groups)
          @transition_routes = args[:transition_routes] if args.key?(:transition_routes)
        end
      end
      
      # Represents page information communicated to and from the webhook.
      class GoogleCloudDialogflowCxV3beta1PageInfo
        include Google::Apis::Core::Hashable
      
        # Always present for WebhookRequest. Ignored for WebhookResponse. The unique
        # identifier of the current page. Format: `projects//locations//agents//flows//
        # pages/`.
        # Corresponds to the JSON property `currentPage`
        # @return [String]
        attr_accessor :current_page
      
        # Always present for WebhookRequest. Ignored for WebhookResponse. The display
        # name of the current page.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Represents form information.
        # Corresponds to the JSON property `formInfo`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PageInfoFormInfo]
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
      
      # Represents form information.
      class GoogleCloudDialogflowCxV3beta1PageInfoFormInfo
        include Google::Apis::Core::Hashable
      
        # Optional for both WebhookRequest and WebhookResponse. The parameters contained
        # in the form. Note that the webhook cannot add or remove any form parameter.
        # Corresponds to the JSON property `parameterInfo`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo>]
        attr_accessor :parameter_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parameter_info = args[:parameter_info] if args.key?(:parameter_info)
        end
      end
      
      # Represents parameter information.
      class GoogleCloudDialogflowCxV3beta1PageInfoFormInfoParameterInfo
        include Google::Apis::Core::Hashable
      
        # Always present for WebhookRequest. Required for WebhookResponse. The human-
        # readable name of the parameter, unique within the form. This field cannot be
        # modified by the webhook.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional for WebhookRequest. Ignored for WebhookResponse. Indicates if the
        # parameter value was just collected on the last conversation turn.
        # Corresponds to the JSON property `justCollected`
        # @return [Boolean]
        attr_accessor :just_collected
        alias_method :just_collected?, :just_collected
      
        # Optional for both WebhookRequest and WebhookResponse. Indicates whether the
        # parameter is required. Optional parameters will not trigger prompts; however,
        # they are filled if the user specifies them. Required parameters must be filled
        # before form filling concludes.
        # Corresponds to the JSON property `required`
        # @return [Boolean]
        attr_accessor :required
        alias_method :required?, :required
      
        # Always present for WebhookRequest. Required for WebhookResponse. The state of
        # the parameter. This field can be set to INVALID by the webhook to invalidate
        # the parameter; other values set by the webhook will be ignored.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Optional for both WebhookRequest and WebhookResponse. The value of the
        # parameter. This field can be set by the webhook to change the parameter value.
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
      
      # Represents the query input. It can contain one of: 1. A conversational query
      # in the form of text. 2. An intent query that specifies which intent to trigger.
      # 3. Natural language speech audio to be processed. 4. An event to be triggered.
      # 5. DTMF digits to invoke an intent and fill in parameter value.
      class GoogleCloudDialogflowCxV3beta1QueryInput
        include Google::Apis::Core::Hashable
      
        # Represents the natural speech audio to be processed.
        # Corresponds to the JSON property `audio`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1AudioInput]
        attr_accessor :audio
      
        # Represents the input for dtmf event.
        # Corresponds to the JSON property `dtmf`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DtmfInput]
        attr_accessor :dtmf
      
        # Represents the event to trigger.
        # Corresponds to the JSON property `event`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EventInput]
        attr_accessor :event
      
        # Represents the intent to trigger programmatically rather than as a result of
        # natural language processing.
        # Corresponds to the JSON property `intent`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1IntentInput]
        attr_accessor :intent
      
        # Required. The language of the input. See [Language Support](https://cloud.
        # google.com/dialogflow/cx/docs/reference/language) for a list of the currently
        # supported language codes. Note that queries in the same session do not
        # necessarily need to specify the same language.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Represents the natural language text to be processed.
        # Corresponds to the JSON property `text`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TextInput]
        attr_accessor :text
      
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
        end
      end
      
      # Represents the parameters of a conversational query.
      class GoogleCloudDialogflowCxV3beta1QueryParameters
        include Google::Apis::Core::Hashable
      
        # Configures whether sentiment analysis should be performed. If not provided,
        # sentiment analysis is not performed.
        # Corresponds to the JSON property `analyzeQueryTextSentiment`
        # @return [Boolean]
        attr_accessor :analyze_query_text_sentiment
        alias_method :analyze_query_text_sentiment?, :analyze_query_text_sentiment
      
        # The channel which this query is for. If specified, only the ResponseMessage
        # associated with the channel will be returned. If no ResponseMessage is
        # associated with the channel, it falls back to the ResponseMessage with
        # unspecified channel. If unspecified, the ResponseMessage with unspecified
        # channel will be returned.
        # Corresponds to the JSON property `channel`
        # @return [String]
        attr_accessor :channel
      
        # The unique identifier of the page to override the current page in the session.
        # Format: `projects//locations//agents//flows//pages/`. If `current_page` is
        # specified, the previous state of the session will be ignored by Dialogflow,
        # including the previous page and the previous session parameters. In most cases,
        # current_page and parameters should be configured together to direct a session
        # to a specific state.
        # Corresponds to the JSON property `currentPage`
        # @return [String]
        attr_accessor :current_page
      
        # Whether to disable webhook calls for this request.
        # Corresponds to the JSON property `disableWebhook`
        # @return [Boolean]
        attr_accessor :disable_webhook
        alias_method :disable_webhook?, :disable_webhook
      
        # A list of flow versions to override for the request. Format: `projects//
        # locations//agents//flows//versions/`. If version 1 of flow X is included in
        # this list, the traffic of flow X will go through version 1 regardless of the
        # version configuration in the environment. Each flow can have at most one
        # version specified in this list.
        # Corresponds to the JSON property `flowVersions`
        # @return [Array<String>]
        attr_accessor :flow_versions
      
        # An object that represents a latitude/longitude pair. This is expressed as a
        # pair of doubles to represent degrees latitude and degrees longitude. Unless
        # specified otherwise, this object must conform to the WGS84 standard. Values
        # must be within normalized ranges.
        # Corresponds to the JSON property `geoLocation`
        # @return [Google::Apis::DialogflowV3beta1::GoogleTypeLatLng]
        attr_accessor :geo_location
      
        # Additional parameters to be put into session parameters. To remove a parameter
        # from the session, clients should explicitly set the parameter value to null.
        # You can reference the session parameters in the agent with the following
        # format: $session.params.parameter-id. Depending on your protocol or client
        # library language, this is a map, associative array, symbol table, dictionary,
        # or JSON object composed of a collection of (MapKey, MapValue) pairs: * MapKey
        # type: string * MapKey value: parameter name * MapValue type: If parameter's
        # entity type is a composite entity then use map, otherwise, depending on the
        # parameter value type, it could be one of string, number, boolean, null, list
        # or map. * MapValue value: If parameter's entity type is a composite entity
        # then use map from composite entity property names to property values,
        # otherwise, use parameter value.
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,Object>]
        attr_accessor :parameters
      
        # This field can be used to pass custom data into the webhook associated with
        # the agent. Arbitrary JSON objects are supported. Some integrations that query
        # a Dialogflow agent may provide additional information in the payload. In
        # particular, for the Dialogflow Phone Gateway integration, this field has the
        # form: ``` ` "telephony": ` "caller_id": "+18558363987" ` ` ```
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # Additional session entity types to replace or extend developer entity types
        # with. The entity synonyms apply to all languages and persist for the session
        # of this query.
        # Corresponds to the JSON property `sessionEntityTypes`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionEntityType>]
        attr_accessor :session_entity_types
      
        # The time zone of this conversational query from the [time zone database](https:
        # //www.iana.org/time-zones), e.g., America/New_York, Europe/Paris. If not
        # provided, the time zone specified in the agent is used.
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        # This field can be used to pass HTTP headers for a webhook call. These headers
        # will be sent to webhook along with the headers that have been configured
        # through Dialogflow web console. The headers defined within this field will
        # overwrite the headers configured through Dialogflow console if there is a
        # conflict. Header names are case-insensitive. Google's specified headers are
        # not allowed. Including: "Host", "Content-Length", "Connection", "From", "User-
        # Agent", "Accept-Encoding", "If-Modified-Since", "If-None-Match", "X-Forwarded-
        # For", etc.
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
          @disable_webhook = args[:disable_webhook] if args.key?(:disable_webhook)
          @flow_versions = args[:flow_versions] if args.key?(:flow_versions)
          @geo_location = args[:geo_location] if args.key?(:geo_location)
          @parameters = args[:parameters] if args.key?(:parameters)
          @payload = args[:payload] if args.key?(:payload)
          @session_entity_types = args[:session_entity_types] if args.key?(:session_entity_types)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
          @webhook_headers = args[:webhook_headers] if args.key?(:webhook_headers)
        end
      end
      
      # Represents the result of a conversational query.
      class GoogleCloudDialogflowCxV3beta1QueryResult
        include Google::Apis::Core::Hashable
      
        # A Dialogflow CX conversation (session) can be described and visualized as a
        # state machine. The states of a CX session are represented by pages. For each
        # flow, you define many pages, where your combined pages can handle a complete
        # conversation on the topics the flow is designed for. At any given moment,
        # exactly one page is the current page, the current page is considered active,
        # and the flow associated with that page is considered active. Every flow has a
        # special start page. When a flow initially becomes active, the start page page
        # becomes the current page. For each conversational turn, the current page will
        # either stay the same or transition to another page. You configure each page to
        # collect information from the end-user that is relevant for the conversational
        # state represented by the page. For more information, see the [Page guide](
        # https://cloud.google.com/dialogflow/cx/docs/concept/page).
        # Corresponds to the JSON property `currentPage`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Page]
        attr_accessor :current_page
      
        # The free-form diagnostic info. For example, this field could contain webhook
        # call latency. The fields of this data can change without notice, so you should
        # not write code that depends on its structure. One of the fields is called "
        # Alternative Matched Intents", which may aid with debugging. The following
        # describes these intent results: - The list is empty if no intent was matched
        # to end-user input. - Only intents that are referenced in the currently active
        # flow are included. - The matched intent is included. - Other intents that
        # could have matched end-user input, but did not match because they are
        # referenced by intent routes that are out of [scope](https://cloud.google.com/
        # dialogflow/cx/docs/concept/handler#scope), are included. - Other intents
        # referenced by intent routes in scope that matched end-user input, but had a
        # lower confidence score.
        # Corresponds to the JSON property `diagnosticInfo`
        # @return [Hash<String,Object>]
        attr_accessor :diagnostic_info
      
        # Represents the input for dtmf event.
        # Corresponds to the JSON property `dtmf`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1DtmfInput]
        attr_accessor :dtmf
      
        # An intent represents a user's intent to interact with a conversational agent.
        # You can provide information for the Dialogflow API to use to match user input
        # to an intent by adding training phrases (i.e., examples of user input) to your
        # intent.
        # Corresponds to the JSON property `intent`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Intent]
        attr_accessor :intent
      
        # The intent detection confidence. Values range from 0.0 (completely uncertain)
        # to 1.0 (completely certain). This value is for informational purpose only and
        # is only used to help match the best intent within the classification threshold.
        # This value may change for the same end-user expression at any time due to a
        # model retraining or change in implementation. This field is deprecated, please
        # use QueryResult.match instead.
        # Corresponds to the JSON property `intentDetectionConfidence`
        # @return [Float]
        attr_accessor :intent_detection_confidence
      
        # The language that was triggered during intent detection. See [Language Support]
        # (https://cloud.google.com/dialogflow/cx/docs/reference/language) for a list of
        # the currently supported language codes.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Represents one match result of MatchIntent.
        # Corresponds to the JSON property `match`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Match]
        attr_accessor :match
      
        # The collected session parameters. Depending on your protocol or client library
        # language, this is a map, associative array, symbol table, dictionary, or JSON
        # object composed of a collection of (MapKey, MapValue) pairs: * MapKey type:
        # string * MapKey value: parameter name * MapValue type: If parameter's entity
        # type is a composite entity then use map, otherwise, depending on the parameter
        # value type, it could be one of string, number, boolean, null, list or map. *
        # MapValue value: If parameter's entity type is a composite entity then use map
        # from composite entity property names to property values, otherwise, use
        # parameter value.
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,Object>]
        attr_accessor :parameters
      
        # The list of rich messages returned to the client. Responses vary from simple
        # text messages to more sophisticated, structured payloads used to drive complex
        # logic.
        # Corresponds to the JSON property `responseMessages`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ResponseMessage>]
        attr_accessor :response_messages
      
        # The result of sentiment analysis. Sentiment analysis inspects user input and
        # identifies the prevailing subjective opinion, especially to determine a user's
        # attitude as positive, negative, or neutral.
        # Corresponds to the JSON property `sentimentAnalysisResult`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SentimentAnalysisResult]
        attr_accessor :sentiment_analysis_result
      
        # If natural language text was provided as input, this field will contain a copy
        # of the text.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # If natural language speech audio was provided as input, this field will
        # contain the transcript for the audio.
        # Corresponds to the JSON property `transcript`
        # @return [String]
        attr_accessor :transcript
      
        # If an event was provided as input, this field will contain the name of the
        # event.
        # Corresponds to the JSON property `triggerEvent`
        # @return [String]
        attr_accessor :trigger_event
      
        # If an intent was provided as input, this field will contain a copy of the
        # intent identifier. Format: `projects//locations//agents//intents/`.
        # Corresponds to the JSON property `triggerIntent`
        # @return [String]
        attr_accessor :trigger_intent
      
        # The list of webhook payload in WebhookResponse.payload, in the order of call
        # sequence. If some webhook call fails or doesn't return any payload, an empty `
        # Struct` would be used instead.
        # Corresponds to the JSON property `webhookPayloads`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :webhook_payloads
      
        # The list of webhook call status in the order of call sequence.
        # Corresponds to the JSON property `webhookStatuses`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleRpcStatus>]
        attr_accessor :webhook_statuses
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @current_page = args[:current_page] if args.key?(:current_page)
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
      
      # Metadata for ReloadDocument operation.
      class GoogleCloudDialogflowCxV3beta1ReloadDocumentOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Metadata in google::longrunning::Operation for Knowledge operations.
        # Corresponds to the JSON property `genericMetadata`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata]
        attr_accessor :generic_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @generic_metadata = args[:generic_metadata] if args.key?(:generic_metadata)
        end
      end
      
      # Resource name and display name.
      class GoogleCloudDialogflowCxV3beta1ResourceName
        include Google::Apis::Core::Hashable
      
        # Display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Name.
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
      
      # Represents a response message that can be returned by a conversational agent.
      # Response messages are also used for output audio synthesis. The approach is as
      # follows: * If at least one OutputAudioText response is present, then all
      # OutputAudioText responses are linearly concatenated, and the result is used
      # for output audio synthesis. * If the OutputAudioText responses are a mixture
      # of text and SSML, then the concatenated result is treated as SSML; otherwise,
      # the result is treated as either text or SSML as appropriate. The agent
      # designer should ideally use either text or SSML consistently throughout the
      # bot design. * Otherwise, all Text responses are linearly concatenated, and the
      # result is used for output audio synthesis. This approach allows for more
      # sophisticated user experience scenarios, where the text displayed to the user
      # may differ from what is heard.
      class GoogleCloudDialogflowCxV3beta1ResponseMessage
        include Google::Apis::Core::Hashable
      
        # The channel which the response is associated with. Clients can specify the
        # channel via QueryParameters.channel, and only associated channel response will
        # be returned.
        # Corresponds to the JSON property `channel`
        # @return [String]
        attr_accessor :channel
      
        # Indicates that the conversation succeeded, i.e., the bot handled the issue
        # that the customer talked to it about. Dialogflow only uses this to determine
        # which conversations should be counted as successful and doesn't process the
        # metadata in this message in any way. Note that Dialogflow also considers
        # conversations that get to the conversation end page as successful even if they
        # don't return ConversationSuccess. You may set this, for example: * In the
        # entry_fulfillment of a Page if entering the page indicates that the
        # conversation succeeded. * In a webhook response when you determine that you
        # handled the customer issue.
        # Corresponds to the JSON property `conversationSuccess`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess]
        attr_accessor :conversation_success
      
        # Indicates that interaction with the Dialogflow agent has ended. This message
        # is generated by Dialogflow only and not supposed to be defined by the user.
        # Corresponds to the JSON property `endInteraction`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction]
        attr_accessor :end_interaction
      
        # Indicates that the conversation should be handed off to a live agent.
        # Dialogflow only uses this to determine which conversations were handed off to
        # a human agent for measurement purposes. What else to do with this signal is up
        # to you and your handoff procedures. You may set this, for example: * In the
        # entry_fulfillment of a Page if entering the page indicates something went
        # extremely wrong in the conversation. * In a webhook response when you
        # determine that the customer issue can only be handled by a human.
        # Corresponds to the JSON property `liveAgentHandoff`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff]
        attr_accessor :live_agent_handoff
      
        # Represents an audio message that is composed of both segments synthesized from
        # the Dialogflow agent prompts and ones hosted externally at the specified URIs.
        # The external URIs are specified via play_audio. This message is generated by
        # Dialogflow only and not supposed to be defined by the user.
        # Corresponds to the JSON property `mixedAudio`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio]
        attr_accessor :mixed_audio
      
        # A text or ssml response that is preferentially used for TTS output audio
        # synthesis, as described in the comment on the ResponseMessage message.
        # Corresponds to the JSON property `outputAudioText`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText]
        attr_accessor :output_audio_text
      
        # Returns a response containing a custom, platform-specific payload.
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # Specifies an audio clip to be played by the client as part of the response.
        # Corresponds to the JSON property `playAudio`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio]
        attr_accessor :play_audio
      
        # Represents the signal that telles the client to transfer the phone call
        # connected to the agent to a third-party endpoint.
        # Corresponds to the JSON property `telephonyTransferCall`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ResponseMessageTelephonyTransferCall]
        attr_accessor :telephony_transfer_call
      
        # The text response message.
        # Corresponds to the JSON property `text`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ResponseMessageText]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @channel = args[:channel] if args.key?(:channel)
          @conversation_success = args[:conversation_success] if args.key?(:conversation_success)
          @end_interaction = args[:end_interaction] if args.key?(:end_interaction)
          @live_agent_handoff = args[:live_agent_handoff] if args.key?(:live_agent_handoff)
          @mixed_audio = args[:mixed_audio] if args.key?(:mixed_audio)
          @output_audio_text = args[:output_audio_text] if args.key?(:output_audio_text)
          @payload = args[:payload] if args.key?(:payload)
          @play_audio = args[:play_audio] if args.key?(:play_audio)
          @telephony_transfer_call = args[:telephony_transfer_call] if args.key?(:telephony_transfer_call)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # Indicates that the conversation succeeded, i.e., the bot handled the issue
      # that the customer talked to it about. Dialogflow only uses this to determine
      # which conversations should be counted as successful and doesn't process the
      # metadata in this message in any way. Note that Dialogflow also considers
      # conversations that get to the conversation end page as successful even if they
      # don't return ConversationSuccess. You may set this, for example: * In the
      # entry_fulfillment of a Page if entering the page indicates that the
      # conversation succeeded. * In a webhook response when you determine that you
      # handled the customer issue.
      class GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess
        include Google::Apis::Core::Hashable
      
        # Custom metadata. Dialogflow doesn't impose any structure on this.
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
      
      # Indicates that interaction with the Dialogflow agent has ended. This message
      # is generated by Dialogflow only and not supposed to be defined by the user.
      class GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Indicates that the conversation should be handed off to a live agent.
      # Dialogflow only uses this to determine which conversations were handed off to
      # a human agent for measurement purposes. What else to do with this signal is up
      # to you and your handoff procedures. You may set this, for example: * In the
      # entry_fulfillment of a Page if entering the page indicates something went
      # extremely wrong in the conversation. * In a webhook response when you
      # determine that the customer issue can only be handled by a human.
      class GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff
        include Google::Apis::Core::Hashable
      
        # Custom metadata for your handoff procedure. Dialogflow doesn't impose any
        # structure on this.
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
      
      # Represents an audio message that is composed of both segments synthesized from
      # the Dialogflow agent prompts and ones hosted externally at the specified URIs.
      # The external URIs are specified via play_audio. This message is generated by
      # Dialogflow only and not supposed to be defined by the user.
      class GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio
        include Google::Apis::Core::Hashable
      
        # Segments this audio response is composed of.
        # Corresponds to the JSON property `segments`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment>]
        attr_accessor :segments
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @segments = args[:segments] if args.key?(:segments)
        end
      end
      
      # Represents one segment of audio.
      class GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudioSegment
        include Google::Apis::Core::Hashable
      
        # Output only. Whether the playback of this segment can be interrupted by the
        # end user's speech and the client should then start the next Dialogflow request.
        # Corresponds to the JSON property `allowPlaybackInterruption`
        # @return [Boolean]
        attr_accessor :allow_playback_interruption
        alias_method :allow_playback_interruption?, :allow_playback_interruption
      
        # Raw audio synthesized from the Dialogflow agent's response using the output
        # config specified in the request.
        # Corresponds to the JSON property `audio`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :audio
      
        # Client-specific URI that points to an audio clip accessible to the client.
        # Dialogflow does not impose any validation on it.
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
      
      # A text or ssml response that is preferentially used for TTS output audio
      # synthesis, as described in the comment on the ResponseMessage message.
      class GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText
        include Google::Apis::Core::Hashable
      
        # Output only. Whether the playback of this message can be interrupted by the
        # end user's speech and the client can then starts the next Dialogflow request.
        # Corresponds to the JSON property `allowPlaybackInterruption`
        # @return [Boolean]
        attr_accessor :allow_playback_interruption
        alias_method :allow_playback_interruption?, :allow_playback_interruption
      
        # The SSML text to be synthesized. For more information, see [SSML](/speech/text-
        # to-speech/docs/ssml).
        # Corresponds to the JSON property `ssml`
        # @return [String]
        attr_accessor :ssml
      
        # The raw text to be synthesized.
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
      
      # Specifies an audio clip to be played by the client as part of the response.
      class GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio
        include Google::Apis::Core::Hashable
      
        # Output only. Whether the playback of this message can be interrupted by the
        # end user's speech and the client can then starts the next Dialogflow request.
        # Corresponds to the JSON property `allowPlaybackInterruption`
        # @return [Boolean]
        attr_accessor :allow_playback_interruption
        alias_method :allow_playback_interruption?, :allow_playback_interruption
      
        # Required. URI of the audio clip. Dialogflow does not impose any validation on
        # this value. It is specific to the client that reads it.
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
      
      # Represents the signal that telles the client to transfer the phone call
      # connected to the agent to a third-party endpoint.
      class GoogleCloudDialogflowCxV3beta1ResponseMessageTelephonyTransferCall
        include Google::Apis::Core::Hashable
      
        # Transfer the call to a phone number in [E.164 format](https://en.wikipedia.org/
        # wiki/E.164).
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
      
      # The text response message.
      class GoogleCloudDialogflowCxV3beta1ResponseMessageText
        include Google::Apis::Core::Hashable
      
        # Output only. Whether the playback of this message can be interrupted by the
        # end user's speech and the client can then starts the next Dialogflow request.
        # Corresponds to the JSON property `allowPlaybackInterruption`
        # @return [Boolean]
        attr_accessor :allow_playback_interruption
        alias_method :allow_playback_interruption?, :allow_playback_interruption
      
        # Required. A collection of text responses.
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
      
      # The request message for Agents.RestoreAgent.
      class GoogleCloudDialogflowCxV3beta1RestoreAgentRequest
        include Google::Apis::Core::Hashable
      
        # Uncompressed raw byte content for agent.
        # Corresponds to the JSON property `agentContent`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :agent_content
      
        # The [Google Cloud Storage](https://cloud.google.com/storage/docs/) URI to
        # restore agent from. The format of this URI must be `gs:///`. Dialogflow
        # performs a read operation for the Cloud Storage object on the caller's behalf,
        # so your request authentication must have read permissions for the object. For
        # more information, see [Dialogflow access control](https://cloud.google.com/
        # dialogflow/cx/docs/concept/access-control#storage).
        # Corresponds to the JSON property `agentUri`
        # @return [String]
        attr_accessor :agent_uri
      
        # Agent restore mode. If not specified, `KEEP` is assumed.
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
          @restore_option = args[:restore_option] if args.key?(:restore_option)
        end
      end
      
      # The configuration for auto rollout.
      class GoogleCloudDialogflowCxV3beta1RolloutConfig
        include Google::Apis::Core::Hashable
      
        # The conditions that are used to evaluate the failure of a rollout step. If not
        # specified, no rollout steps will fail. E.g. "containment_rate < 10% OR
        # average_turn_count < 3". See the [conditions reference](https://cloud.google.
        # com/dialogflow/cx/docs/reference/condition).
        # Corresponds to the JSON property `failureCondition`
        # @return [String]
        attr_accessor :failure_condition
      
        # The conditions that are used to evaluate the success of a rollout step. If not
        # specified, all rollout steps will proceed to the next one unless failure
        # conditions are met. E.g. "containment_rate > 60% AND callback_rate < 20%". See
        # the [conditions reference](https://cloud.google.com/dialogflow/cx/docs/
        # reference/condition).
        # Corresponds to the JSON property `rolloutCondition`
        # @return [String]
        attr_accessor :rollout_condition
      
        # Steps to roll out a flow version. Steps should be sorted by percentage in
        # ascending order.
        # Corresponds to the JSON property `rolloutSteps`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1RolloutConfigRolloutStep>]
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
      
      # A single rollout step with specified traffic allocation.
      class GoogleCloudDialogflowCxV3beta1RolloutConfigRolloutStep
        include Google::Apis::Core::Hashable
      
        # The name of the rollout step;
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The minimum time that this step should last. Should be longer than 1 hour. If
        # not set, the default minimum duration for each step will be 1 hour.
        # Corresponds to the JSON property `minDuration`
        # @return [String]
        attr_accessor :min_duration
      
        # The percentage of traffic allocated to the flow version of this rollout step. (
        # 0%, 100%].
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
      
      # State of the auto-rollout process.
      class GoogleCloudDialogflowCxV3beta1RolloutState
        include Google::Apis::Core::Hashable
      
        # Start time of the current step.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Display name of the current auto rollout step.
        # Corresponds to the JSON property `step`
        # @return [String]
        attr_accessor :step
      
        # Index of the current step in the auto rollout steps list.
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
      
      # Metadata returned for the Environments.RunContinuousTest long running
      # operation.
      class GoogleCloudDialogflowCxV3beta1RunContinuousTestMetadata
        include Google::Apis::Core::Hashable
      
        # The test errors.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestError>]
        attr_accessor :errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @errors = args[:errors] if args.key?(:errors)
        end
      end
      
      # The request message for Environments.RunContinuousTest.
      class GoogleCloudDialogflowCxV3beta1RunContinuousTestRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The response message for Environments.RunContinuousTest.
      class GoogleCloudDialogflowCxV3beta1RunContinuousTestResponse
        include Google::Apis::Core::Hashable
      
        # Represents a result from running a test case in an agent environment.
        # Corresponds to the JSON property `continuousTestResult`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ContinuousTestResult]
        attr_accessor :continuous_test_result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @continuous_test_result = args[:continuous_test_result] if args.key?(:continuous_test_result)
        end
      end
      
      # Metadata returned for the TestCases.RunTestCase long running operation. This
      # message currently has no fields.
      class GoogleCloudDialogflowCxV3beta1RunTestCaseMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The request message for TestCases.RunTestCase.
      class GoogleCloudDialogflowCxV3beta1RunTestCaseRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Environment name. If not set, draft environment is assumed. Format: `
        # projects//locations//agents//environments/`.
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
      
      # The response message for TestCases.RunTestCase.
      class GoogleCloudDialogflowCxV3beta1RunTestCaseResponse
        include Google::Apis::Core::Hashable
      
        # Represents a result from running a test case in an agent environment.
        # Corresponds to the JSON property `result`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCaseResult]
        attr_accessor :result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @result = args[:result] if args.key?(:result)
        end
      end
      
      # Represents the settings related to security issues, such as data redaction and
      # data retention. It may take hours for updates on the settings to propagate to
      # all the related components and take effect.
      class GoogleCloudDialogflowCxV3beta1SecuritySettings
        include Google::Apis::Core::Hashable
      
        # Settings for exporting audio.
        # Corresponds to the JSON property `audioExportSettings`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SecuritySettingsAudioExportSettings]
        attr_accessor :audio_export_settings
      
        # [DLP](https://cloud.google.com/dlp/docs) deidentify template name. Use this
        # template to define de-identification configuration for the content. The `DLP
        # De-identify Templates Reader` role is needed on the Dialogflow service
        # identity service account (has the form `service-PROJECT_NUMBER@gcp-sa-
        # dialogflow.iam.gserviceaccount.com`) for your agent's project. If empty,
        # Dialogflow replaces sensitive info with `[redacted]` text. The template name
        # will have one of the following formats: `projects//locations//
        # deidentifyTemplates/` OR `organizations//locations//deidentifyTemplates/` Note:
        # `deidentify_template` must be located in the same region as the `
        # SecuritySettings`.
        # Corresponds to the JSON property `deidentifyTemplate`
        # @return [String]
        attr_accessor :deidentify_template
      
        # Required. The human-readable name of the security settings, unique within the
        # location.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Settings for exporting conversations to [Insights](https://cloud.google.com/
        # contact-center/insights/docs).
        # Corresponds to the JSON property `insightsExportSettings`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SecuritySettingsInsightsExportSettings]
        attr_accessor :insights_export_settings
      
        # [DLP](https://cloud.google.com/dlp/docs) inspect template name. Use this
        # template to define inspect base settings. The `DLP Inspect Templates Reader`
        # role is needed on the Dialogflow service identity service account (has the
        # form `service-PROJECT_NUMBER@gcp-sa-dialogflow.iam.gserviceaccount.com`) for
        # your agent's project. If empty, we use the default DLP inspect config. The
        # template name will have one of the following formats: `projects//locations//
        # inspectTemplates/` OR `organizations//locations//inspectTemplates/` Note: `
        # inspect_template` must be located in the same region as the `SecuritySettings`.
        # Corresponds to the JSON property `inspectTemplate`
        # @return [String]
        attr_accessor :inspect_template
      
        # Resource name of the settings. Required for the SecuritySettingsService.
        # UpdateSecuritySettings method. SecuritySettingsService.CreateSecuritySettings
        # populates the name automatically. Format: `projects//locations//
        # securitySettings/`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # List of types of data to remove when retention settings triggers purge.
        # Corresponds to the JSON property `purgeDataTypes`
        # @return [Array<String>]
        attr_accessor :purge_data_types
      
        # Defines the data for which Dialogflow applies redaction. Dialogflow does not
        # redact data that it does not have access to – for example, Cloud logging.
        # Corresponds to the JSON property `redactionScope`
        # @return [String]
        attr_accessor :redaction_scope
      
        # Strategy that defines how we do redaction.
        # Corresponds to the JSON property `redactionStrategy`
        # @return [String]
        attr_accessor :redaction_strategy
      
        # Retains data in interaction logging for the specified number of days. This
        # does not apply to Cloud logging, which is owned by the user - not Dialogflow.
        # User must set a value lower than Dialogflow's default 365d TTL (30 days for
        # Agent Assist traffic), higher value will be ignored and use default. Setting a
        # value higher than that has no effect. A missing value or setting to 0 also
        # means we use default TTL.
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
          @retention_window_days = args[:retention_window_days] if args.key?(:retention_window_days)
        end
      end
      
      # Settings for exporting audio.
      class GoogleCloudDialogflowCxV3beta1SecuritySettingsAudioExportSettings
        include Google::Apis::Core::Hashable
      
        # Filename pattern for exported audio.
        # Corresponds to the JSON property `audioExportPattern`
        # @return [String]
        attr_accessor :audio_export_pattern
      
        # File format for exported audio file. Currently only in telephony recordings.
        # Corresponds to the JSON property `audioFormat`
        # @return [String]
        attr_accessor :audio_format
      
        # Enable audio redaction if it is true.
        # Corresponds to the JSON property `enableAudioRedaction`
        # @return [Boolean]
        attr_accessor :enable_audio_redaction
        alias_method :enable_audio_redaction?, :enable_audio_redaction
      
        # Cloud Storage bucket to export audio record to. Setting this field would grant
        # the Storage Object Creator role to the Dialogflow Service Agent. API caller
        # that tries to modify this field should have the permission of storage.buckets.
        # setIamPolicy.
        # Corresponds to the JSON property `gcsBucket`
        # @return [String]
        attr_accessor :gcs_bucket
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio_export_pattern = args[:audio_export_pattern] if args.key?(:audio_export_pattern)
          @audio_format = args[:audio_format] if args.key?(:audio_format)
          @enable_audio_redaction = args[:enable_audio_redaction] if args.key?(:enable_audio_redaction)
          @gcs_bucket = args[:gcs_bucket] if args.key?(:gcs_bucket)
        end
      end
      
      # Settings for exporting conversations to [Insights](https://cloud.google.com/
      # contact-center/insights/docs).
      class GoogleCloudDialogflowCxV3beta1SecuritySettingsInsightsExportSettings
        include Google::Apis::Core::Hashable
      
        # If enabled, we will automatically exports conversations to Insights and
        # Insights runs its analyzers.
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
      
      # The result of sentiment analysis. Sentiment analysis inspects user input and
      # identifies the prevailing subjective opinion, especially to determine a user's
      # attitude as positive, negative, or neutral.
      class GoogleCloudDialogflowCxV3beta1SentimentAnalysisResult
        include Google::Apis::Core::Hashable
      
        # A non-negative number in the [0, +inf) range, which represents the absolute
        # magnitude of sentiment, regardless of score (positive or negative).
        # Corresponds to the JSON property `magnitude`
        # @return [Float]
        attr_accessor :magnitude
      
        # Sentiment score between -1.0 (negative sentiment) and 1.0 (positive sentiment).
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
      
      # Session entity types are referred to as **User** entity types and are entities
      # that are built for an individual user such as favorites, preferences,
      # playlists, and so on. You can redefine a session entity type at the session
      # level to extend or replace a custom entity type at the user session level (we
      # refer to the entity types defined at the agent level as "custom entity types").
      # Note: session entity types apply to all queries, regardless of the language.
      # For more information about entity types, see the [Dialogflow documentation](
      # https://cloud.google.com/dialogflow/docs/entities-overview).
      class GoogleCloudDialogflowCxV3beta1SessionEntityType
        include Google::Apis::Core::Hashable
      
        # Required. The collection of entities to override or supplement the custom
        # entity type.
        # Corresponds to the JSON property `entities`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EntityTypeEntity>]
        attr_accessor :entities
      
        # Required. Indicates whether the additional data should override or supplement
        # the custom entity type definition.
        # Corresponds to the JSON property `entityOverrideMode`
        # @return [String]
        attr_accessor :entity_override_mode
      
        # Required. The unique identifier of the session entity type. Format: `projects//
        # locations//agents//sessions//entityTypes/` or `projects//locations//agents//
        # environments//sessions//entityTypes/`. If `Environment ID` is not specified,
        # we assume default 'draft' environment.
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
      
      # Represents session information communicated to and from the webhook.
      class GoogleCloudDialogflowCxV3beta1SessionInfo
        include Google::Apis::Core::Hashable
      
        # Optional for WebhookRequest. Optional for WebhookResponse. All parameters
        # collected from forms and intents during the session. Parameters can be created,
        # updated, or removed by the webhook. To remove a parameter from the session,
        # the webhook should explicitly set the parameter value to null in
        # WebhookResponse. The map is keyed by parameters' display names.
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,Object>]
        attr_accessor :parameters
      
        # Always present for WebhookRequest. Ignored for WebhookResponse. The unique
        # identifier of the session. This field can be used by the webhook to identify a
        # session. Format: `projects//locations//agents//sessions/` or `projects//
        # locations//agents//environments//sessions/` if environment is specified.
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
      
      # Settings related to speech recognition.
      class GoogleCloudDialogflowCxV3beta1SpeechToTextSettings
        include Google::Apis::Core::Hashable
      
        # Whether to use speech adaptation for speech recognition.
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
      
      # The request message for Experiments.StartExperiment.
      class GoogleCloudDialogflowCxV3beta1StartExperimentRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The request message for Experiments.StopExperiment.
      class GoogleCloudDialogflowCxV3beta1StopExperimentRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Configuration of how speech should be synthesized.
      class GoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig
        include Google::Apis::Core::Hashable
      
        # Optional. An identifier which selects 'audio effects' profiles that are
        # applied on (post synthesized) text to speech. Effects are applied on top of
        # each other in the order they are given.
        # Corresponds to the JSON property `effectsProfileId`
        # @return [Array<String>]
        attr_accessor :effects_profile_id
      
        # Optional. Speaking pitch, in the range [-20.0, 20.0]. 20 means increase 20
        # semitones from the original pitch. -20 means decrease 20 semitones from the
        # original pitch.
        # Corresponds to the JSON property `pitch`
        # @return [Float]
        attr_accessor :pitch
      
        # Optional. Speaking rate/speed, in the range [0.25, 4.0]. 1.0 is the normal
        # native speed supported by the specific voice. 2.0 is twice as fast, and 0.5 is
        # half as fast. If unset(0.0), defaults to the native 1.0 speed. Any other
        # values < 0.25 or > 4.0 will return an error.
        # Corresponds to the JSON property `speakingRate`
        # @return [Float]
        attr_accessor :speaking_rate
      
        # Description of which voice to use for speech synthesis.
        # Corresponds to the JSON property `voice`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1VoiceSelectionParams]
        attr_accessor :voice
      
        # Optional. Volume gain (in dB) of the normal native volume supported by the
        # specific voice, in the range [-96.0, 16.0]. If unset, or set to a value of 0.0
        # (dB), will play at normal native signal amplitude. A value of -6.0 (dB) will
        # play at approximately half the amplitude of the normal native signal amplitude.
        # A value of +6.0 (dB) will play at approximately twice the amplitude of the
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
          @effects_profile_id = args[:effects_profile_id] if args.key?(:effects_profile_id)
          @pitch = args[:pitch] if args.key?(:pitch)
          @speaking_rate = args[:speaking_rate] if args.key?(:speaking_rate)
          @voice = args[:voice] if args.key?(:voice)
          @volume_gain_db = args[:volume_gain_db] if args.key?(:volume_gain_db)
        end
      end
      
      # Represents a test case.
      class GoogleCloudDialogflowCxV3beta1TestCase
        include Google::Apis::Core::Hashable
      
        # Output only. When the test was created.
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # Required. The human-readable name of the test case, unique within the agent.
        # Limit of 200 characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Represents a result from running a test case in an agent environment.
        # Corresponds to the JSON property `lastTestResult`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCaseResult]
        attr_accessor :last_test_result
      
        # The unique identifier of the test case. TestCases.CreateTestCase will populate
        # the name automatically. Otherwise use format: `projects//locations//agents/ /
        # testCases/`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Additional freeform notes about the test case. Limit of 400 characters.
        # Corresponds to the JSON property `notes`
        # @return [String]
        attr_accessor :notes
      
        # Tags are short descriptions that users may apply to test cases for
        # organizational and filtering purposes. Each tag should start with "#" and has
        # a limit of 30 characters.
        # Corresponds to the JSON property `tags`
        # @return [Array<String>]
        attr_accessor :tags
      
        # The conversation turns uttered when the test case was created, in
        # chronological order. These include the canonical set of agent utterances that
        # should occur when the agent is working properly.
        # Corresponds to the JSON property `testCaseConversationTurns`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ConversationTurn>]
        attr_accessor :test_case_conversation_turns
      
        # Represents configurations for a test case.
        # Corresponds to the JSON property `testConfig`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestConfig]
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
      
      # Error info for importing a test.
      class GoogleCloudDialogflowCxV3beta1TestCaseError
        include Google::Apis::Core::Hashable
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::DialogflowV3beta1::GoogleRpcStatus]
        attr_accessor :status
      
        # Represents a test case.
        # Corresponds to the JSON property `testCase`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TestCase]
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
      
      # Represents a result from running a test case in an agent environment.
      class GoogleCloudDialogflowCxV3beta1TestCaseResult
        include Google::Apis::Core::Hashable
      
        # The conversation turns uttered during the test case replay in chronological
        # order.
        # Corresponds to the JSON property `conversationTurns`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ConversationTurn>]
        attr_accessor :conversation_turns
      
        # Environment where the test was run. If not set, it indicates the draft
        # environment.
        # Corresponds to the JSON property `environment`
        # @return [String]
        attr_accessor :environment
      
        # The resource name for the test case result. Format: `projects//locations//
        # agents//testCases/ /results/`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Whether the test case passed in the agent environment.
        # Corresponds to the JSON property `testResult`
        # @return [String]
        attr_accessor :test_result
      
        # The time that the test was run.
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
      
      # Represents configurations for a test case.
      class GoogleCloudDialogflowCxV3beta1TestConfig
        include Google::Apis::Core::Hashable
      
        # Flow name to start the test case with. Format: `projects//locations//agents//
        # flows/`. Only one of `flow` and `page` should be set to indicate the starting
        # point of the test case. If both are set, `page` takes precedence over `flow`.
        # If neither is set, the test case will start with start page on the default
        # start flow.
        # Corresponds to the JSON property `flow`
        # @return [String]
        attr_accessor :flow
      
        # The page to start the test case with. Format: `projects//locations//agents//
        # flows//pages/`. Only one of `flow` and `page` should be set to indicate the
        # starting point of the test case. If both are set, `page` takes precedence over
        # `flow`. If neither is set, the test case will start with start page on the
        # default start flow.
        # Corresponds to the JSON property `page`
        # @return [String]
        attr_accessor :page
      
        # Session parameters to be compared when calculating differences.
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
      
      # Error info for running a test.
      class GoogleCloudDialogflowCxV3beta1TestError
        include Google::Apis::Core::Hashable
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::DialogflowV3beta1::GoogleRpcStatus]
        attr_accessor :status
      
        # The test case resource name.
        # Corresponds to the JSON property `testCase`
        # @return [String]
        attr_accessor :test_case
      
        # The timestamp when the test was completed.
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
      
      # The description of differences between original and replayed agent output.
      class GoogleCloudDialogflowCxV3beta1TestRunDifference
        include Google::Apis::Core::Hashable
      
        # A description of the diff, showing the actual output vs expected output.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The type of diff.
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
      
      # Represents the natural language text to be processed.
      class GoogleCloudDialogflowCxV3beta1TextInput
        include Google::Apis::Core::Hashable
      
        # Required. The UTF-8 encoded natural language text to be processed. Text length
        # must not exceed 256 characters.
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
      
      # Settings related to speech synthesizing.
      class GoogleCloudDialogflowCxV3beta1TextToSpeechSettings
        include Google::Apis::Core::Hashable
      
        # Configuration of how speech should be synthesized, mapping from language (
        # https://cloud.google.com/dialogflow/cx/docs/reference/language) to
        # SynthesizeSpeechConfig. These settings affect: - The synthesize configuration
        # used in [phone gateway](https://cloud.google.com/dialogflow/cx/docs/concept/
        # integration/phone-gateway). - You no longer need to specify OutputAudioConfig.
        # synthesize_speech_config when invoking API calls. Your agent will use the pre-
        # configured options for speech synthesizing.
        # Corresponds to the JSON property `synthesizeSpeechConfigs`
        # @return [Hash<String,Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SynthesizeSpeechConfig>]
        attr_accessor :synthesize_speech_configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @synthesize_speech_configs = args[:synthesize_speech_configs] if args.key?(:synthesize_speech_configs)
        end
      end
      
      # The request message for Flows.TrainFlow.
      class GoogleCloudDialogflowCxV3beta1TrainFlowRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Transition coverage represents the percentage of all possible page transitions
      # (page-level transition routes and event handlers, excluding transition route
      # groups) present within any of a parent's test cases.
      class GoogleCloudDialogflowCxV3beta1TransitionCoverage
        include Google::Apis::Core::Hashable
      
        # The percent of transitions in the agent that are covered.
        # Corresponds to the JSON property `coverageScore`
        # @return [Float]
        attr_accessor :coverage_score
      
        # The list of Transitions present in the agent.
        # Corresponds to the JSON property `transitions`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionCoverageTransition>]
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
      
      # A transition in a page.
      class GoogleCloudDialogflowCxV3beta1TransitionCoverageTransition
        include Google::Apis::Core::Hashable
      
        # Whether the transition is covered by at least one of the agent's test cases.
        # Corresponds to the JSON property `covered`
        # @return [Boolean]
        attr_accessor :covered
        alias_method :covered?, :covered
      
        # An event handler specifies an event that can be handled during a session. When
        # the specified event happens, the following actions are taken in order: * If
        # there is a `trigger_fulfillment` associated with the event, it will be called.
        # * If there is a `target_page` associated with the event, the session will
        # transition into the specified page. * If there is a `target_flow` associated
        # with the event, the session will transition into the specified flow.
        # Corresponds to the JSON property `eventHandler`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1EventHandler]
        attr_accessor :event_handler
      
        # The index of a transition in the transition list. Starting from 0.
        # Corresponds to the JSON property `index`
        # @return [Fixnum]
        attr_accessor :index
      
        # The source or target of a transition.
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionCoverageTransitionNode]
        attr_accessor :source
      
        # The source or target of a transition.
        # Corresponds to the JSON property `target`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionCoverageTransitionNode]
        attr_accessor :target
      
        # A transition route specifies a intent that can be matched and/or a data
        # condition that can be evaluated during a session. When a specified transition
        # is matched, the following actions are taken in order: * If there is a `
        # trigger_fulfillment` associated with the transition, it will be called. * If
        # there is a `target_page` associated with the transition, the session will
        # transition into the specified page. * If there is a `target_flow` associated
        # with the transition, the session will transition into the specified flow.
        # Corresponds to the JSON property `transitionRoute`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRoute]
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
      
      # The source or target of a transition.
      class GoogleCloudDialogflowCxV3beta1TransitionCoverageTransitionNode
        include Google::Apis::Core::Hashable
      
        # Flows represents the conversation flows when you build your chatbot agent. A
        # flow consists of many pages connected by the transition routes. Conversations
        # always start with the built-in Start Flow (with an all-0 ID). Transition
        # routes can direct the conversation session from the current flow (parent flow)
        # to another flow (sub flow). When the sub flow is finished, Dialogflow will
        # bring the session back to the parent flow, where the sub flow is started.
        # Usually, when a transition route is followed by a matched intent, the intent
        # will be "consumed". This means the intent won't activate more transition
        # routes. However, when the followed transition route moves the conversation
        # session into a different flow, the matched intent can be carried over and to
        # be consumed in the target flow.
        # Corresponds to the JSON property `flow`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Flow]
        attr_accessor :flow
      
        # A Dialogflow CX conversation (session) can be described and visualized as a
        # state machine. The states of a CX session are represented by pages. For each
        # flow, you define many pages, where your combined pages can handle a complete
        # conversation on the topics the flow is designed for. At any given moment,
        # exactly one page is the current page, the current page is considered active,
        # and the flow associated with that page is considered active. Every flow has a
        # special start page. When a flow initially becomes active, the start page page
        # becomes the current page. For each conversational turn, the current page will
        # either stay the same or transition to another page. You configure each page to
        # collect information from the end-user that is relevant for the conversational
        # state represented by the page. For more information, see the [Page guide](
        # https://cloud.google.com/dialogflow/cx/docs/concept/page).
        # Corresponds to the JSON property `page`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Page]
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
      
      # A transition route specifies a intent that can be matched and/or a data
      # condition that can be evaluated during a session. When a specified transition
      # is matched, the following actions are taken in order: * If there is a `
      # trigger_fulfillment` associated with the transition, it will be called. * If
      # there is a `target_page` associated with the transition, the session will
      # transition into the specified page. * If there is a `target_flow` associated
      # with the transition, the session will transition into the specified flow.
      class GoogleCloudDialogflowCxV3beta1TransitionRoute
        include Google::Apis::Core::Hashable
      
        # The condition to evaluate against form parameters or session parameters. See
        # the [conditions reference](https://cloud.google.com/dialogflow/cx/docs/
        # reference/condition). At least one of `intent` or `condition` must be
        # specified. When both `intent` and `condition` are specified, the transition
        # can only happen when both are fulfilled.
        # Corresponds to the JSON property `condition`
        # @return [String]
        attr_accessor :condition
      
        # The unique identifier of an Intent. Format: `projects//locations//agents//
        # intents/`. Indicates that the transition can only happen when the given intent
        # is matched. At least one of `intent` or `condition` must be specified. When
        # both `intent` and `condition` are specified, the transition can only happen
        # when both are fulfilled.
        # Corresponds to the JSON property `intent`
        # @return [String]
        attr_accessor :intent
      
        # Output only. The unique identifier of this transition route.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The target flow to transition to. Format: `projects//locations//agents//flows/`
        # .
        # Corresponds to the JSON property `targetFlow`
        # @return [String]
        attr_accessor :target_flow
      
        # The target page to transition to. Format: `projects//locations//agents//flows//
        # pages/`.
        # Corresponds to the JSON property `targetPage`
        # @return [String]
        attr_accessor :target_page
      
        # A fulfillment can do one or more of the following actions at the same time: *
        # Generate rich message responses. * Set parameter values. * Call the webhook.
        # Fulfillments can be called at various stages in the Page or Form lifecycle.
        # For example, when a DetectIntentRequest drives a session to enter a new page,
        # the page's entry fulfillment can add a static response to the QueryResult in
        # the returning DetectIntentResponse, call the webhook (for example, to load
        # user data from a database), or both.
        # Corresponds to the JSON property `triggerFulfillment`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1Fulfillment]
        attr_accessor :trigger_fulfillment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition = args[:condition] if args.key?(:condition)
          @intent = args[:intent] if args.key?(:intent)
          @name = args[:name] if args.key?(:name)
          @target_flow = args[:target_flow] if args.key?(:target_flow)
          @target_page = args[:target_page] if args.key?(:target_page)
          @trigger_fulfillment = args[:trigger_fulfillment] if args.key?(:trigger_fulfillment)
        end
      end
      
      # An TransitionRouteGroup represents a group of `TransitionRoutes` to be used by
      # a Page.
      class GoogleCloudDialogflowCxV3beta1TransitionRouteGroup
        include Google::Apis::Core::Hashable
      
        # Required. The human-readable name of the transition route group, unique within
        # the flow. The display name can be no longer than 30 characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The unique identifier of the transition route group. TransitionRouteGroups.
        # CreateTransitionRouteGroup populates the name automatically. Format: `projects/
        # /locations//agents//flows//transitionRouteGroups/`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Transition routes associated with the TransitionRouteGroup.
        # Corresponds to the JSON property `transitionRoutes`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRoute>]
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
      
      # Transition route group coverage represents the percentage of all possible
      # transition routes present within any of a parent's test cases. The results are
      # grouped by the transition route group.
      class GoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverage
        include Google::Apis::Core::Hashable
      
        # The percent of transition routes in all the transition route groups that are
        # covered.
        # Corresponds to the JSON property `coverageScore`
        # @return [Float]
        attr_accessor :coverage_score
      
        # Transition route group coverages.
        # Corresponds to the JSON property `coverages`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverage>]
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
      
      # Coverage result message for one transition route group.
      class GoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverage
        include Google::Apis::Core::Hashable
      
        # The percent of transition routes in the transition route group that are
        # covered.
        # Corresponds to the JSON property `coverageScore`
        # @return [Float]
        attr_accessor :coverage_score
      
        # An TransitionRouteGroup represents a group of `TransitionRoutes` to be used by
        # a Page.
        # Corresponds to the JSON property `routeGroup`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroup]
        attr_accessor :route_group
      
        # The list of transition routes and coverage in the transition route group.
        # Corresponds to the JSON property `transitions`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverageTransition>]
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
      
      # A transition coverage in a transition route group.
      class GoogleCloudDialogflowCxV3beta1TransitionRouteGroupCoverageCoverageTransition
        include Google::Apis::Core::Hashable
      
        # Whether the transition route is covered by at least one of the agent's test
        # cases.
        # Corresponds to the JSON property `covered`
        # @return [Boolean]
        attr_accessor :covered
        alias_method :covered?, :covered
      
        # A transition route specifies a intent that can be matched and/or a data
        # condition that can be evaluated during a session. When a specified transition
        # is matched, the following actions are taken in order: * If there is a `
        # trigger_fulfillment` associated with the transition, it will be called. * If
        # there is a `target_page` associated with the transition, the session will
        # transition into the specified page. * If there is a `target_flow` associated
        # with the transition, the session will transition into the specified flow.
        # Corresponds to the JSON property `transitionRoute`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1TransitionRoute]
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
      
      # Collection of all signals that were extracted for a single turn of the
      # conversation.
      class GoogleCloudDialogflowCxV3beta1TurnSignals
        include Google::Apis::Core::Hashable
      
        # Whether agent responded with LiveAgentHandoff fulfillment.
        # Corresponds to the JSON property `agentEscalated`
        # @return [Boolean]
        attr_accessor :agent_escalated
        alias_method :agent_escalated?, :agent_escalated
      
        # Whether user was using DTMF input.
        # Corresponds to the JSON property `dtmfUsed`
        # @return [Boolean]
        attr_accessor :dtmf_used
        alias_method :dtmf_used?, :dtmf_used
      
        # Failure reasons of the turn.
        # Corresponds to the JSON property `failureReasons`
        # @return [Array<String>]
        attr_accessor :failure_reasons
      
        # Whether NLU predicted NO_MATCH.
        # Corresponds to the JSON property `noMatch`
        # @return [Boolean]
        attr_accessor :no_match
        alias_method :no_match?, :no_match
      
        # Whether user provided no input.
        # Corresponds to the JSON property `noUserInput`
        # @return [Boolean]
        attr_accessor :no_user_input
        alias_method :no_user_input?, :no_user_input
      
        # Whether turn resulted in End Session page.
        # Corresponds to the JSON property `reachedEndPage`
        # @return [Boolean]
        attr_accessor :reached_end_page
        alias_method :reached_end_page?, :reached_end_page
      
        # Sentiment magnitude of the user utterance if [sentiment](https://cloud.google.
        # com/dialogflow/cx/docs/concept/sentiment) was enabled.
        # Corresponds to the JSON property `sentimentMagnitude`
        # @return [Float]
        attr_accessor :sentiment_magnitude
      
        # Sentiment score of the user utterance if [sentiment](https://cloud.google.com/
        # dialogflow/cx/docs/concept/sentiment) was enabled.
        # Corresponds to the JSON property `sentimentScore`
        # @return [Float]
        attr_accessor :sentiment_score
      
        # Whether user was specifically asking for a live agent.
        # Corresponds to the JSON property `userEscalated`
        # @return [Boolean]
        attr_accessor :user_escalated
        alias_method :user_escalated?, :user_escalated
      
        # Human-readable statuses of the webhooks triggered during this turn.
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
      
      # Metadata for UpdateDocument operation.
      class GoogleCloudDialogflowCxV3beta1UpdateDocumentOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Metadata in google::longrunning::Operation for Knowledge operations.
        # Corresponds to the JSON property `genericMetadata`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata]
        attr_accessor :generic_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @generic_metadata = args[:generic_metadata] if args.key?(:generic_metadata)
        end
      end
      
      # The request message for Agents.ValidateAgent.
      class GoogleCloudDialogflowCxV3beta1ValidateAgentRequest
        include Google::Apis::Core::Hashable
      
        # If not specified, the agent's default language is used.
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
      
      # The request message for Flows.ValidateFlow.
      class GoogleCloudDialogflowCxV3beta1ValidateFlowRequest
        include Google::Apis::Core::Hashable
      
        # If not specified, the agent's default language is used.
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
      
      # Agent/flow validation message.
      class GoogleCloudDialogflowCxV3beta1ValidationMessage
        include Google::Apis::Core::Hashable
      
        # The message detail.
        # Corresponds to the JSON property `detail`
        # @return [String]
        attr_accessor :detail
      
        # The resource names of the resources where the message is found.
        # Corresponds to the JSON property `resourceNames`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ResourceName>]
        attr_accessor :resource_names
      
        # The type of the resources where the message is found.
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        # The names of the resources where the message is found.
        # Corresponds to the JSON property `resources`
        # @return [Array<String>]
        attr_accessor :resources
      
        # Indicates the severity of the message.
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
      
      # The history of variants update.
      class GoogleCloudDialogflowCxV3beta1VariantsHistory
        include Google::Apis::Core::Hashable
      
        # Update time of the variants.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # A list of flow version variants.
        # Corresponds to the JSON property `versionVariants`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1VersionVariants]
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
      
      # Represents a version of a flow.
      class GoogleCloudDialogflowCxV3beta1Version
        include Google::Apis::Core::Hashable
      
        # Output only. Create time of the version.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The description of the version. The maximum length is 500 characters. If
        # exceeded, the request is rejected.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The human-readable name of the version. Limit of 64 characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Format: projects//locations//agents//flows//versions/. Version ID is a self-
        # increasing number generated by Dialogflow upon version creation.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Settings related to NLU.
        # Corresponds to the JSON property `nluSettings`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1NluSettings]
        attr_accessor :nlu_settings
      
        # Output only. The state of this version. This field is read-only and cannot be
        # set by create and update methods.
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
      
      # A list of flow version variants.
      class GoogleCloudDialogflowCxV3beta1VersionVariants
        include Google::Apis::Core::Hashable
      
        # A list of flow version variants.
        # Corresponds to the JSON property `variants`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1VersionVariantsVariant>]
        attr_accessor :variants
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @variants = args[:variants] if args.key?(:variants)
        end
      end
      
      # A single flow version with specified traffic allocation.
      class GoogleCloudDialogflowCxV3beta1VersionVariantsVariant
        include Google::Apis::Core::Hashable
      
        # Whether the variant is for the control group.
        # Corresponds to the JSON property `isControlGroup`
        # @return [Boolean]
        attr_accessor :is_control_group
        alias_method :is_control_group?, :is_control_group
      
        # Percentage of the traffic which should be routed to this version of flow.
        # Traffic allocation for a single flow must sum up to 1.0.
        # Corresponds to the JSON property `trafficAllocation`
        # @return [Float]
        attr_accessor :traffic_allocation
      
        # The name of the flow version. Format: `projects//locations//agents//flows//
        # versions/`.
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
      
      # Description of which voice to use for speech synthesis.
      class GoogleCloudDialogflowCxV3beta1VoiceSelectionParams
        include Google::Apis::Core::Hashable
      
        # Optional. The name of the voice. If not set, the service will choose a voice
        # based on the other parameters such as language_code and ssml_gender. For the
        # list of available voices, please refer to [Supported voices and languages](
        # https://cloud.google.com/text-to-speech/docs/voices).
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The preferred gender of the voice. If not set, the service will
        # choose a voice based on the other parameters such as language_code and name.
        # Note that this is only a preference, not requirement. If a voice of the
        # appropriate gender is not available, the synthesizer should substitute a voice
        # with a different gender rather than failing the request.
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
      
      # Webhooks host the developer's business logic. During a session, webhooks allow
      # the developer to use the data extracted by Dialogflow's natural language
      # processing to generate dynamic responses, validate collected data, or trigger
      # actions on the backend.
      class GoogleCloudDialogflowCxV3beta1Webhook
        include Google::Apis::Core::Hashable
      
        # Indicates whether the webhook is disabled.
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # Required. The human-readable name of the webhook, unique within the agent.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Represents configuration for a generic web service.
        # Corresponds to the JSON property `genericWebService`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1WebhookGenericWebService]
        attr_accessor :generic_web_service
      
        # The unique identifier of the webhook. Required for the Webhooks.UpdateWebhook
        # method. Webhooks.CreateWebhook populates the name automatically. Format: `
        # projects//locations//agents//webhooks/`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Represents configuration for a [Service Directory](https://cloud.google.com/
        # service-directory) service.
        # Corresponds to the JSON property `serviceDirectory`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig]
        attr_accessor :service_directory
      
        # Webhook execution timeout. Execution is considered failed if Dialogflow doesn'
        # t receive a response from webhook at the end of the timeout period. Defaults
        # to 5 seconds, maximum allowed timeout is 30 seconds.
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
      
      # Represents configuration for a generic web service.
      class GoogleCloudDialogflowCxV3beta1WebhookGenericWebService
        include Google::Apis::Core::Hashable
      
        # Optional. Specifies a list of allowed custom CA certificates (in DER format)
        # for HTTPS verification. This overrides the default SSL trust store. If this is
        # empty or unspecified, Dialogflow will use Google's default trust store to
        # verify certificates. N.B. Make sure the HTTPS server certificates are signed
        # with "subject alt name". For instance a certificate can be self-signed using
        # the following command, ``` openssl x509 -req -days 200 -in example.com.csr \ -
        # signkey example.com.key \ -out example.com.crt \ -extfile <(printf "\
        # nsubjectAltName='DNS:www.example.com'") ```
        # Corresponds to the JSON property `allowedCaCerts`
        # @return [Array<String>]
        attr_accessor :allowed_ca_certs
      
        # Optional. HTTP method for the flexible webhook calls. Standard webhook always
        # uses POST.
        # Corresponds to the JSON property `httpMethod`
        # @return [String]
        attr_accessor :http_method
      
        # Optional. Maps the values extracted from specific fields of the flexible
        # webhook response into session parameters. - Key: session parameter name -
        # Value: field path in the webhook response
        # Corresponds to the JSON property `parameterMapping`
        # @return [Hash<String,String>]
        attr_accessor :parameter_mapping
      
        # The password for HTTP Basic authentication.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # Optional. Defines a custom JSON object as request body to send to flexible
        # webhook.
        # Corresponds to the JSON property `requestBody`
        # @return [String]
        attr_accessor :request_body
      
        # The HTTP request headers to send together with webhook requests.
        # Corresponds to the JSON property `requestHeaders`
        # @return [Hash<String,String>]
        attr_accessor :request_headers
      
        # Required. The webhook URI for receiving POST requests. It must use https
        # protocol.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        # The user name for HTTP Basic authentication.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        # Optional. Type of the webhook.
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
          @parameter_mapping = args[:parameter_mapping] if args.key?(:parameter_mapping)
          @password = args[:password] if args.key?(:password)
          @request_body = args[:request_body] if args.key?(:request_body)
          @request_headers = args[:request_headers] if args.key?(:request_headers)
          @uri = args[:uri] if args.key?(:uri)
          @username = args[:username] if args.key?(:username)
          @webhook_type = args[:webhook_type] if args.key?(:webhook_type)
        end
      end
      
      # The request message for a webhook call. The request is sent as a JSON object
      # and the field names will be presented in camel cases. You may see undocumented
      # fields in an actual request. These fields are used internally by Dialogflow
      # and should be ignored.
      class GoogleCloudDialogflowCxV3beta1WebhookRequest
        include Google::Apis::Core::Hashable
      
        # Always present. The unique identifier of the DetectIntentResponse that will be
        # returned to the API caller.
        # Corresponds to the JSON property `detectIntentResponseId`
        # @return [String]
        attr_accessor :detect_intent_response_id
      
        # If DTMF was provided as input, this field will contain the DTMF digits.
        # Corresponds to the JSON property `dtmfDigits`
        # @return [String]
        attr_accessor :dtmf_digits
      
        # Represents fulfillment information communicated to the webhook.
        # Corresponds to the JSON property `fulfillmentInfo`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo]
        attr_accessor :fulfillment_info
      
        # Represents intent information communicated to the webhook.
        # Corresponds to the JSON property `intentInfo`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo]
        attr_accessor :intent_info
      
        # The language code specified in the original request.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # The list of rich message responses to present to the user. Webhook can choose
        # to append or replace this list in WebhookResponse.fulfillment_response;
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ResponseMessage>]
        attr_accessor :messages
      
        # Represents page information communicated to and from the webhook.
        # Corresponds to the JSON property `pageInfo`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PageInfo]
        attr_accessor :page_info
      
        # Custom data set in QueryParameters.payload.
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # Represents the result of sentiment analysis.
        # Corresponds to the JSON property `sentimentAnalysisResult`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1WebhookRequestSentimentAnalysisResult]
        attr_accessor :sentiment_analysis_result
      
        # Represents session information communicated to and from the webhook.
        # Corresponds to the JSON property `sessionInfo`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionInfo]
        attr_accessor :session_info
      
        # If natural language text was provided as input, this field will contain a copy
        # of the text.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # If natural language speech audio was provided as input, this field will
        # contain the transcript for the audio.
        # Corresponds to the JSON property `transcript`
        # @return [String]
        attr_accessor :transcript
      
        # If an event was provided as input, this field will contain the name of the
        # event.
        # Corresponds to the JSON property `triggerEvent`
        # @return [String]
        attr_accessor :trigger_event
      
        # If an intent was provided as input, this field will contain a copy of the
        # intent identifier. Format: `projects//locations//agents//intents/`.
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
      
      # Represents fulfillment information communicated to the webhook.
      class GoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo
        include Google::Apis::Core::Hashable
      
        # Always present. The value of the Fulfillment.tag field will be populated in
        # this field by Dialogflow when the associated webhook is called. The tag is
        # typically used by the webhook service to identify which fulfillment is being
        # called, but it could be used for other purposes.
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
      
      # Represents intent information communicated to the webhook.
      class GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo
        include Google::Apis::Core::Hashable
      
        # The confidence of the matched intent. Values range from 0.0 (completely
        # uncertain) to 1.0 (completely certain).
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # Always present. The display name of the last matched intent.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Always present. The unique identifier of the last matched intent. Format: `
        # projects//locations//agents//intents/`.
        # Corresponds to the JSON property `lastMatchedIntent`
        # @return [String]
        attr_accessor :last_matched_intent
      
        # Parameters identified as a result of intent matching. This is a map of the
        # name of the identified parameter to the value of the parameter identified from
        # the user's utterance. All parameters defined in the matched intent that are
        # identified will be surfaced here.
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue>]
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
      
      # Represents a value for an intent parameter.
      class GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfoIntentParameterValue
        include Google::Apis::Core::Hashable
      
        # Always present. Original text value extracted from user utterance.
        # Corresponds to the JSON property `originalValue`
        # @return [String]
        attr_accessor :original_value
      
        # Always present. Structured value for the parameter extracted from user
        # utterance.
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
      
      # Represents the result of sentiment analysis.
      class GoogleCloudDialogflowCxV3beta1WebhookRequestSentimentAnalysisResult
        include Google::Apis::Core::Hashable
      
        # A non-negative number in the [0, +inf) range, which represents the absolute
        # magnitude of sentiment, regardless of score (positive or negative).
        # Corresponds to the JSON property `magnitude`
        # @return [Float]
        attr_accessor :magnitude
      
        # Sentiment score between -1.0 (negative sentiment) and 1.0 (positive sentiment).
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
      
      # The response message for a webhook call.
      class GoogleCloudDialogflowCxV3beta1WebhookResponse
        include Google::Apis::Core::Hashable
      
        # Represents a fulfillment response to the user.
        # Corresponds to the JSON property `fulfillmentResponse`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse]
        attr_accessor :fulfillment_response
      
        # Represents page information communicated to and from the webhook.
        # Corresponds to the JSON property `pageInfo`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1PageInfo]
        attr_accessor :page_info
      
        # Value to append directly to QueryResult.webhook_payloads.
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # Represents session information communicated to and from the webhook.
        # Corresponds to the JSON property `sessionInfo`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1SessionInfo]
        attr_accessor :session_info
      
        # The target flow to transition to. Format: `projects//locations//agents//flows/`
        # .
        # Corresponds to the JSON property `targetFlow`
        # @return [String]
        attr_accessor :target_flow
      
        # The target page to transition to. Format: `projects//locations//agents//flows//
        # pages/`.
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
      
      # Represents a fulfillment response to the user.
      class GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse
        include Google::Apis::Core::Hashable
      
        # Merge behavior for `messages`.
        # Corresponds to the JSON property `mergeBehavior`
        # @return [String]
        attr_accessor :merge_behavior
      
        # The list of rich message responses to present to the user.
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1ResponseMessage>]
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
      
      # Represents configuration for a [Service Directory](https://cloud.google.com/
      # service-directory) service.
      class GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig
        include Google::Apis::Core::Hashable
      
        # Represents configuration for a generic web service.
        # Corresponds to the JSON property `genericWebService`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowCxV3beta1WebhookGenericWebService]
        attr_accessor :generic_web_service
      
        # Required. The name of [Service Directory](https://cloud.google.com/service-
        # directory) service. Format: `projects//locations//namespaces//services/`. `
        # Location ID` of the service directory must be the same as the location of the
        # agent.
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
      
      # Represents a part of a message possibly annotated with an entity. The part can
      # be an entity or purely a part of the message between two entities or message
      # start/end.
      class GoogleCloudDialogflowV2AnnotatedMessagePart
        include Google::Apis::Core::Hashable
      
        # The [Dialogflow system entity type](https://cloud.google.com/dialogflow/docs/
        # reference/system-entities) of this message part. If this is empty, Dialogflow
        # could not annotate the phrase part with a system entity.
        # Corresponds to the JSON property `entityType`
        # @return [String]
        attr_accessor :entity_type
      
        # The [Dialogflow system entity formatted value ](https://cloud.google.com/
        # dialogflow/docs/reference/system-entities) of this message part. For example
        # for a system entity of type `@sys.unit-currency`, this may contain: ` "amount":
        # 5, "currency": "USD" `
        # Corresponds to the JSON property `formattedValue`
        # @return [Object]
        attr_accessor :formatted_value
      
        # A part of a message possibly annotated with an entity.
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
      
      # Represents article answer.
      class GoogleCloudDialogflowV2ArticleAnswer
        include Google::Apis::Core::Hashable
      
        # The name of answer record, in the format of "projects//locations//
        # answerRecords/"
        # Corresponds to the JSON property `answerRecord`
        # @return [String]
        attr_accessor :answer_record
      
        # Article match confidence. The system's confidence score that this article is a
        # good match for this conversation, as a value from 0.0 (completely uncertain)
        # to 1.0 (completely certain).
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # A map that contains metadata about the answer and the document from which it
        # originates.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,String>]
        attr_accessor :metadata
      
        # Article snippets.
        # Corresponds to the JSON property `snippets`
        # @return [Array<String>]
        attr_accessor :snippets
      
        # The article title.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # The article URI.
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
      
      # Metadata for article suggestion models.
      class GoogleCloudDialogflowV2ArticleSuggestionModelMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. Type of the article suggestion model. If not provided, model_type is
        # used.
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
      
      # The response message for EntityTypes.BatchUpdateEntityTypes.
      class GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse
        include Google::Apis::Core::Hashable
      
        # The collection of updated or created entity types.
        # Corresponds to the JSON property `entityTypes`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2EntityType>]
        attr_accessor :entity_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entity_types = args[:entity_types] if args.key?(:entity_types)
        end
      end
      
      # The response message for Intents.BatchUpdateIntents.
      class GoogleCloudDialogflowV2BatchUpdateIntentsResponse
        include Google::Apis::Core::Hashable
      
        # The collection of updated or created intents.
        # Corresponds to the JSON property `intents`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2Intent>]
        attr_accessor :intents
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @intents = args[:intents] if args.key?(:intents)
        end
      end
      
      # Metadata for a ConversationProfile.ClearSuggestionFeatureConfig operation.
      class GoogleCloudDialogflowV2ClearSuggestionFeatureConfigOperationMetadata
        include Google::Apis::Core::Hashable
      
        # The resource name of the conversation profile. Format: `projects//locations//
        # conversationProfiles/`
        # Corresponds to the JSON property `conversationProfile`
        # @return [String]
        attr_accessor :conversation_profile
      
        # Timestamp whe the request was created. The time is measured on server side.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. The participant role to remove the suggestion feature config. Only
        # HUMAN_AGENT or END_USER can be used.
        # Corresponds to the JSON property `participantRole`
        # @return [String]
        attr_accessor :participant_role
      
        # Required. The type of the suggestion feature to remove.
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
      
      # Dialogflow contexts are similar to natural language context. If a person says
      # to you "they are orange", you need context in order to understand what "they"
      # is referring to. Similarly, for Dialogflow to handle an end-user expression
      # like that, it needs to be provided with context in order to correctly match an
      # intent. Using contexts, you can control the flow of a conversation. You can
      # configure contexts for an intent by setting input and output contexts, which
      # are identified by string names. When an intent is matched, any configured
      # output contexts for that intent become active. While any contexts are active,
      # Dialogflow is more likely to match intents that are configured with input
      # contexts that correspond to the currently active contexts. For more
      # information about context, see the [Contexts guide](https://cloud.google.com/
      # dialogflow/docs/contexts-overview).
      class GoogleCloudDialogflowV2Context
        include Google::Apis::Core::Hashable
      
        # Optional. The number of conversational query requests after which the context
        # expires. The default is `0`. If set to `0`, the context expires immediately.
        # Contexts expire automatically after 20 minutes if there are no matching
        # queries.
        # Corresponds to the JSON property `lifespanCount`
        # @return [Fixnum]
        attr_accessor :lifespan_count
      
        # Required. The unique identifier of the context. Format: `projects//agent/
        # sessions//contexts/`, or `projects//agent/environments//users//sessions//
        # contexts/`. The `Context ID` is always converted to lowercase, may only
        # contain characters in a-zA-Z0-9_-% and may be at most 250 bytes long. If `
        # Environment ID` is not specified, we assume default 'draft' environment. If `
        # User ID` is not specified, we assume default '-' user. The following context
        # names are reserved for internal use by Dialogflow. You should not use these
        # contexts or create contexts with these names: * `__system_counters__` * `*
        # _id_dialog_context` * `*_dialog_params_size`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The collection of parameters associated with this context. Depending
        # on your protocol or client library language, this is a map, associative array,
        # symbol table, dictionary, or JSON object composed of a collection of (MapKey,
        # MapValue) pairs: - MapKey type: string - MapKey value: parameter name -
        # MapValue type: - If parameter's entity type is a composite entity: map - Else:
        # depending on parameter value type, could be one of string, number, boolean,
        # null, list or map - MapValue value: - If parameter's entity type is a
        # composite entity: map from composite entity property names to property values -
        # Else: parameter value
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
      
      # Represents a notification sent to Pub/Sub subscribers for conversation
      # lifecycle events.
      class GoogleCloudDialogflowV2ConversationEvent
        include Google::Apis::Core::Hashable
      
        # The unique identifier of the conversation this notification refers to. Format:
        # `projects//conversations/`.
        # Corresponds to the JSON property `conversation`
        # @return [String]
        attr_accessor :conversation
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `errorStatus`
        # @return [Google::Apis::DialogflowV3beta1::GoogleRpcStatus]
        attr_accessor :error_status
      
        # Represents a message posted into a conversation.
        # Corresponds to the JSON property `newMessagePayload`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2Message]
        attr_accessor :new_message_payload
      
        # The type of the event that this notification refers to.
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
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Represents a conversation model.
      class GoogleCloudDialogflowV2ConversationModel
        include Google::Apis::Core::Hashable
      
        # Metadata for article suggestion models.
        # Corresponds to the JSON property `articleSuggestionModelMetadata`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2ArticleSuggestionModelMetadata]
        attr_accessor :article_suggestion_model_metadata
      
        # Output only. Creation time of this model.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. Datasets used to create model.
        # Corresponds to the JSON property `datasets`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2InputDataset>]
        attr_accessor :datasets
      
        # Required. The display name of the model. At most 64 bytes long.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Language code for the conversation model. If not specified, the language is en-
        # US. Language at ConversationModel should be set for all non en-us languages.
        # This should be a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt)
        # language tag. Example: "en-US".
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # ConversationModel resource name. Format: `projects//conversationModels/`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Metadata for smart reply models.
        # Corresponds to the JSON property `smartReplyModelMetadata`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2SmartReplyModelMetadata]
        attr_accessor :smart_reply_model_metadata
      
        # Output only. State of the model. A model can only serve prediction requests
        # after it gets deployed.
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
          @smart_reply_model_metadata = args[:smart_reply_model_metadata] if args.key?(:smart_reply_model_metadata)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Metadata for ConversationDatasets.
      class GoogleCloudDialogflowV2CreateConversationDatasetOperationMetadata
        include Google::Apis::Core::Hashable
      
        # The resource name of the conversation dataset that will be created. Format: `
        # projects//locations//conversationDatasets/`
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
      
      # Metadata for a ConversationModels.CreateConversationModelEvaluation operation.
      class GoogleCloudDialogflowV2CreateConversationModelEvaluationOperationMetadata
        include Google::Apis::Core::Hashable
      
        # The resource name of the conversation model. Format: `projects//locations//
        # conversationModels/`
        # Corresponds to the JSON property `conversationModel`
        # @return [String]
        attr_accessor :conversation_model
      
        # The resource name of the conversation model. Format: `projects//locations//
        # conversationModels//evaluations/`
        # Corresponds to the JSON property `conversationModelEvaluation`
        # @return [String]
        attr_accessor :conversation_model_evaluation
      
        # Timestamp when the request to create conversation model was submitted. The
        # time is measured on server side.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # State of CreateConversationModel operation.
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
      
      # Metadata for a ConversationModels.CreateConversationModel operation.
      class GoogleCloudDialogflowV2CreateConversationModelOperationMetadata
        include Google::Apis::Core::Hashable
      
        # The resource name of the conversation model. Format: `projects//
        # conversationModels/`
        # Corresponds to the JSON property `conversationModel`
        # @return [String]
        attr_accessor :conversation_model
      
        # Timestamp when the request to create conversation model is submitted. The time
        # is measured on server side.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # State of CreateConversationModel operation.
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
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Metadata for ConversationDatasets.
      class GoogleCloudDialogflowV2DeleteConversationDatasetOperationMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Metadata for a ConversationModels.DeleteConversationModel operation.
      class GoogleCloudDialogflowV2DeleteConversationModelOperationMetadata
        include Google::Apis::Core::Hashable
      
        # The resource name of the conversation model. Format: `projects//
        # conversationModels/`
        # Corresponds to the JSON property `conversationModel`
        # @return [String]
        attr_accessor :conversation_model
      
        # Timestamp when delete conversation model request was created. The time is
        # measured on server side.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation_model = args[:conversation_model] if args.key?(:conversation_model)
          @create_time = args[:create_time] if args.key?(:create_time)
        end
      end
      
      # Metadata for a ConversationModels.DeployConversationModel operation.
      class GoogleCloudDialogflowV2DeployConversationModelOperationMetadata
        include Google::Apis::Core::Hashable
      
        # The resource name of the conversation model. Format: `projects//
        # conversationModels/`
        # Corresponds to the JSON property `conversationModel`
        # @return [String]
        attr_accessor :conversation_model
      
        # Timestamp when request to deploy conversation model was submitted. The time is
        # measured on server side.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation_model = args[:conversation_model] if args.key?(:conversation_model)
          @create_time = args[:create_time] if args.key?(:create_time)
        end
      end
      
      # Each intent parameter has a type, called the entity type, which dictates
      # exactly how data from an end-user expression is extracted. Dialogflow provides
      # predefined system entities that can match many common types of data. For
      # example, there are system entities for matching dates, times, colors, email
      # addresses, and so on. You can also create your own custom entities for
      # matching custom data. For example, you could define a vegetable entity that
      # can match the types of vegetables available for purchase with a grocery store
      # agent. For more information, see the [Entity guide](https://cloud.google.com/
      # dialogflow/docs/entities-overview).
      class GoogleCloudDialogflowV2EntityType
        include Google::Apis::Core::Hashable
      
        # Optional. Indicates whether the entity type can be automatically expanded.
        # Corresponds to the JSON property `autoExpansionMode`
        # @return [String]
        attr_accessor :auto_expansion_mode
      
        # Required. The name of the entity type.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. Enables fuzzy entity extraction during classification.
        # Corresponds to the JSON property `enableFuzzyExtraction`
        # @return [Boolean]
        attr_accessor :enable_fuzzy_extraction
        alias_method :enable_fuzzy_extraction?, :enable_fuzzy_extraction
      
        # Optional. The collection of entity entries associated with the entity type.
        # Corresponds to the JSON property `entities`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2EntityTypeEntity>]
        attr_accessor :entities
      
        # Required. Indicates the kind of entity type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The unique identifier of the entity type. Required for EntityTypes.
        # UpdateEntityType and EntityTypes.BatchUpdateEntityTypes methods. Format: `
        # projects//agent/entityTypes/`.
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
      
      # An **entity entry** for an associated entity type.
      class GoogleCloudDialogflowV2EntityTypeEntity
        include Google::Apis::Core::Hashable
      
        # Required. A collection of value synonyms. For example, if the entity type is *
        # vegetable*, and `value` is *scallions*, a synonym could be *green onions*. For
        # `KIND_LIST` entity types: * This collection must contain exactly one synonym
        # equal to `value`.
        # Corresponds to the JSON property `synonyms`
        # @return [Array<String>]
        attr_accessor :synonyms
      
        # Required. The primary value associated with this entity entry. For example, if
        # the entity type is *vegetable*, the value could be *scallions*. For `KIND_MAP`
        # entity types: * A reference value to be used in place of synonyms. For `
        # KIND_LIST` entity types: * A string that can contain references to other
        # entity types (with or without aliases).
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
      
      # Events allow for matching intents by event name instead of the natural
      # language input. For instance, input `` can trigger a personalized welcome
      # response. The parameter `name` may be used by the agent in the response: `"
      # Hello #welcome_event.name! What can I do for you today?"`.
      class GoogleCloudDialogflowV2EventInput
        include Google::Apis::Core::Hashable
      
        # Required. The language of this query. See [Language Support](https://cloud.
        # google.com/dialogflow/docs/reference/language) for a list of the currently
        # supported language codes. Note that queries in the same session do not
        # necessarily need to specify the same language. This field is ignored when used
        # in the context of a WebhookResponse.followup_event_input field, because the
        # language was already defined in the originating detect intent request.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Required. The unique identifier of the event.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The collection of parameters associated with the event. Depending on your
        # protocol or client library language, this is a map, associative array, symbol
        # table, dictionary, or JSON object composed of a collection of (MapKey,
        # MapValue) pairs: - MapKey type: string - MapKey value: parameter name -
        # MapValue type: - If parameter's entity type is a composite entity: map - Else:
        # depending on parameter value type, could be one of string, number, boolean,
        # null, list or map - MapValue value: - If parameter's entity type is a
        # composite entity: map from composite entity property names to property values -
        # Else: parameter value
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
      
      # The response message for Agents.ExportAgent.
      class GoogleCloudDialogflowV2ExportAgentResponse
        include Google::Apis::Core::Hashable
      
        # Zip compressed raw byte content for agent.
        # Corresponds to the JSON property `agentContent`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :agent_content
      
        # The URI to a file containing the exported agent. This field is populated only
        # if `agent_uri` is specified in `ExportAgentRequest`.
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
      
      # Metadata related to the Export Data Operations (e.g. ExportDocument).
      class GoogleCloudDialogflowV2ExportOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Google Cloud Storage location for the output.
        # Corresponds to the JSON property `exportedGcsDestination`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2GcsDestination]
        attr_accessor :exported_gcs_destination
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exported_gcs_destination = args[:exported_gcs_destination] if args.key?(:exported_gcs_destination)
        end
      end
      
      # Represents answer from "frequently asked questions".
      class GoogleCloudDialogflowV2FaqAnswer
        include Google::Apis::Core::Hashable
      
        # The piece of text from the `source` knowledge base document.
        # Corresponds to the JSON property `answer`
        # @return [String]
        attr_accessor :answer
      
        # The name of answer record, in the format of "projects//locations//
        # answerRecords/"
        # Corresponds to the JSON property `answerRecord`
        # @return [String]
        attr_accessor :answer_record
      
        # The system's confidence score that this Knowledge answer is a good match for
        # this conversational query, range from 0.0 (completely uncertain) to 1.0 (
        # completely certain).
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # A map that contains metadata about the answer and the document from which it
        # originates.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,String>]
        attr_accessor :metadata
      
        # The corresponding FAQ question.
        # Corresponds to the JSON property `question`
        # @return [String]
        attr_accessor :question
      
        # Indicates which Knowledge Document this answer was extracted from. Format: `
        # projects//locations//agent/knowledgeBases//documents/`.
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
      
      # Google Cloud Storage location for the output.
      class GoogleCloudDialogflowV2GcsDestination
        include Google::Apis::Core::Hashable
      
        # The Google Cloud Storage URIs for the output. A URI is of the form: gs://
        # bucket/object-prefix-or-name Whether a prefix or name is used depends on the
        # use case. The requesting user must have "write-permission" to the bucket.
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
      
      # Represents a notification sent to Cloud Pub/Sub subscribers for human agent
      # assistant events in a specific conversation.
      class GoogleCloudDialogflowV2HumanAgentAssistantEvent
        include Google::Apis::Core::Hashable
      
        # The conversation this notification refers to. Format: `projects//conversations/
        # `.
        # Corresponds to the JSON property `conversation`
        # @return [String]
        attr_accessor :conversation
      
        # The participant that the suggestion is compiled for. Format: `projects//
        # conversations//participants/`. It will not be set in legacy workflow.
        # Corresponds to the JSON property `participant`
        # @return [String]
        attr_accessor :participant
      
        # The suggestion results payload that this notification refers to.
        # Corresponds to the JSON property `suggestionResults`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2SuggestionResult>]
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
      
      # Metadata for a ConversationDatasets.ImportConversationData operation.
      class GoogleCloudDialogflowV2ImportConversationDataOperationMetadata
        include Google::Apis::Core::Hashable
      
        # The resource name of the imported conversation dataset. Format: `projects//
        # locations//conversationDatasets/`
        # Corresponds to the JSON property `conversationDataset`
        # @return [String]
        attr_accessor :conversation_dataset
      
        # Timestamp when import conversation data request was created. The time is
        # measured on server side.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Partial failures are failures that don't fail the whole long running operation,
        # e.g. single files that couldn't be read.
        # Corresponds to the JSON property `partialFailures`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleRpcStatus>]
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
      
      # Response used for ConversationDatasets.ImportConversationData long running
      # operation.
      class GoogleCloudDialogflowV2ImportConversationDataOperationResponse
        include Google::Apis::Core::Hashable
      
        # The resource name of the imported conversation dataset. Format: `projects//
        # locations//conversationDatasets/`
        # Corresponds to the JSON property `conversationDataset`
        # @return [String]
        attr_accessor :conversation_dataset
      
        # Number of conversations imported successfully.
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
      
      # Response message for Documents.ImportDocuments.
      class GoogleCloudDialogflowV2ImportDocumentsResponse
        include Google::Apis::Core::Hashable
      
        # Includes details about skipped documents or any other warnings.
        # Corresponds to the JSON property `warnings`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleRpcStatus>]
        attr_accessor :warnings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @warnings = args[:warnings] if args.key?(:warnings)
        end
      end
      
      # InputDataset used to create model or do evaluation. NextID:5
      class GoogleCloudDialogflowV2InputDataset
        include Google::Apis::Core::Hashable
      
        # Required. ConversationDataset resource name. Format: `projects//locations//
        # conversationDatasets/`
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
      
      # An intent categorizes an end-user's intention for one conversation turn. For
      # each agent, you define many intents, where your combined intents can handle a
      # complete conversation. When an end-user writes or says something, referred to
      # as an end-user expression or end-user input, Dialogflow matches the end-user
      # input to the best intent in your agent. Matching an intent is also known as
      # intent classification. For more information, see the [intent guide](https://
      # cloud.google.com/dialogflow/docs/intents-overview).
      class GoogleCloudDialogflowV2Intent
        include Google::Apis::Core::Hashable
      
        # Optional. The name of the action associated with the intent. Note: The action
        # name must not contain whitespaces.
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # Optional. The list of platforms for which the first responses will be copied
        # from the messages in PLATFORM_UNSPECIFIED (i.e. default platform).
        # Corresponds to the JSON property `defaultResponsePlatforms`
        # @return [Array<String>]
        attr_accessor :default_response_platforms
      
        # Required. The name of this intent.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. Indicates that this intent ends an interaction. Some integrations (e.
        # g., Actions on Google or Dialogflow phone gateway) use this information to
        # close interaction with an end user. Default is false.
        # Corresponds to the JSON property `endInteraction`
        # @return [Boolean]
        attr_accessor :end_interaction
        alias_method :end_interaction?, :end_interaction
      
        # Optional. The collection of event names that trigger the intent. If the
        # collection of input contexts is not empty, all of the contexts must be present
        # in the active user session for an event to trigger this intent. Event names
        # are limited to 150 characters.
        # Corresponds to the JSON property `events`
        # @return [Array<String>]
        attr_accessor :events
      
        # Output only. Read-only. Information about all followup intents that have this
        # intent as a direct or indirect parent. We populate this field only in the
        # output.
        # Corresponds to the JSON property `followupIntentInfo`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentFollowupIntentInfo>]
        attr_accessor :followup_intent_info
      
        # Optional. The list of context names required for this intent to be triggered.
        # Format: `projects//agent/sessions/-/contexts/`.
        # Corresponds to the JSON property `inputContextNames`
        # @return [Array<String>]
        attr_accessor :input_context_names
      
        # Optional. Indicates whether this is a fallback intent.
        # Corresponds to the JSON property `isFallback`
        # @return [Boolean]
        attr_accessor :is_fallback
        alias_method :is_fallback?, :is_fallback
      
        # Optional. Indicates that a live agent should be brought in to handle the
        # interaction with the user. In most cases, when you set this flag to true, you
        # would also want to set end_interaction to true as well. Default is false.
        # Corresponds to the JSON property `liveAgentHandoff`
        # @return [Boolean]
        attr_accessor :live_agent_handoff
        alias_method :live_agent_handoff?, :live_agent_handoff
      
        # Optional. The collection of rich messages corresponding to the `Response`
        # field in the Dialogflow console.
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessage>]
        attr_accessor :messages
      
        # Optional. Indicates whether Machine Learning is disabled for the intent. Note:
        # If `ml_disabled` setting is set to true, then this intent is not taken into
        # account during inference in `ML ONLY` match mode. Also, auto-markup in the UI
        # is turned off.
        # Corresponds to the JSON property `mlDisabled`
        # @return [Boolean]
        attr_accessor :ml_disabled
        alias_method :ml_disabled?, :ml_disabled
      
        # Optional. The unique identifier of this intent. Required for Intents.
        # UpdateIntent and Intents.BatchUpdateIntents methods. Format: `projects//agent/
        # intents/`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The collection of contexts that are activated when the intent is
        # matched. Context messages in this collection should not set the parameters
        # field. Setting the `lifespan_count` to 0 will reset the context when the
        # intent is matched. Format: `projects//agent/sessions/-/contexts/`.
        # Corresponds to the JSON property `outputContexts`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2Context>]
        attr_accessor :output_contexts
      
        # Optional. The collection of parameters associated with the intent.
        # Corresponds to the JSON property `parameters`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentParameter>]
        attr_accessor :parameters
      
        # Read-only after creation. The unique identifier of the parent intent in the
        # chain of followup intents. You can set this field when creating an intent, for
        # example with CreateIntent or BatchUpdateIntents, in order to make this intent
        # a followup intent. It identifies the parent followup intent. Format: `projects/
        # /agent/intents/`.
        # Corresponds to the JSON property `parentFollowupIntentName`
        # @return [String]
        attr_accessor :parent_followup_intent_name
      
        # Optional. The priority of this intent. Higher numbers represent higher
        # priorities. - If the supplied value is unspecified or 0, the service
        # translates the value to 500,000, which corresponds to the `Normal` priority in
        # the console. - If the supplied value is negative, the intent is ignored in
        # runtime detect intent requests.
        # Corresponds to the JSON property `priority`
        # @return [Fixnum]
        attr_accessor :priority
      
        # Optional. Indicates whether to delete all contexts in the current session when
        # this intent is matched.
        # Corresponds to the JSON property `resetContexts`
        # @return [Boolean]
        attr_accessor :reset_contexts
        alias_method :reset_contexts?, :reset_contexts
      
        # Output only. Read-only. The unique identifier of the root intent in the chain
        # of followup intents. It identifies the correct followup intents chain for this
        # intent. We populate this field only in the output. Format: `projects//agent/
        # intents/`.
        # Corresponds to the JSON property `rootFollowupIntentName`
        # @return [String]
        attr_accessor :root_followup_intent_name
      
        # Optional. The collection of examples that the agent is trained on.
        # Corresponds to the JSON property `trainingPhrases`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentTrainingPhrase>]
        attr_accessor :training_phrases
      
        # Optional. Indicates whether webhooks are enabled for the intent.
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
      
      # Represents a single followup intent in the chain.
      class GoogleCloudDialogflowV2IntentFollowupIntentInfo
        include Google::Apis::Core::Hashable
      
        # The unique identifier of the followup intent. Format: `projects//agent/intents/
        # `.
        # Corresponds to the JSON property `followupIntentName`
        # @return [String]
        attr_accessor :followup_intent_name
      
        # The unique identifier of the followup intent's parent. Format: `projects//
        # agent/intents/`.
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
      
      # A rich response message. Corresponds to the intent `Response` field in the
      # Dialogflow console. For more information, see [Rich response messages](https://
      # cloud.google.com/dialogflow/docs/intents-rich-messages).
      class GoogleCloudDialogflowV2IntentMessage
        include Google::Apis::Core::Hashable
      
        # The basic card message. Useful for displaying information.
        # Corresponds to the JSON property `basicCard`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageBasicCard]
        attr_accessor :basic_card
      
        # Browse Carousel Card for Actions on Google. https://developers.google.com/
        # actions/assistant/responses#browsing_carousel
        # Corresponds to the JSON property `browseCarouselCard`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard]
        attr_accessor :browse_carousel_card
      
        # The card response message.
        # Corresponds to the JSON property `card`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageCard]
        attr_accessor :card
      
        # The card for presenting a carousel of options to select from.
        # Corresponds to the JSON property `carouselSelect`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageCarouselSelect]
        attr_accessor :carousel_select
      
        # The image response message.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageImage]
        attr_accessor :image
      
        # The suggestion chip message that allows the user to jump out to the app or
        # website associated with this agent.
        # Corresponds to the JSON property `linkOutSuggestion`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion]
        attr_accessor :link_out_suggestion
      
        # The card for presenting a list of options to select from.
        # Corresponds to the JSON property `listSelect`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageListSelect]
        attr_accessor :list_select
      
        # The media content card for Actions on Google.
        # Corresponds to the JSON property `mediaContent`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageMediaContent]
        attr_accessor :media_content
      
        # A custom platform-specific response.
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # Optional. The platform that this message is intended for.
        # Corresponds to the JSON property `platform`
        # @return [String]
        attr_accessor :platform
      
        # The quick replies response message.
        # Corresponds to the JSON property `quickReplies`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageQuickReplies]
        attr_accessor :quick_replies
      
        # The collection of simple response candidates. This message in `QueryResult.
        # fulfillment_messages` and `WebhookResponse.fulfillment_messages` should
        # contain only one `SimpleResponse`.
        # Corresponds to the JSON property `simpleResponses`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageSimpleResponses]
        attr_accessor :simple_responses
      
        # The collection of suggestions.
        # Corresponds to the JSON property `suggestions`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageSuggestions]
        attr_accessor :suggestions
      
        # Table card for Actions on Google.
        # Corresponds to the JSON property `tableCard`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageTableCard]
        attr_accessor :table_card
      
        # The text response message.
        # Corresponds to the JSON property `text`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageText]
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
      
      # The basic card message. Useful for displaying information.
      class GoogleCloudDialogflowV2IntentMessageBasicCard
        include Google::Apis::Core::Hashable
      
        # Optional. The collection of card buttons.
        # Corresponds to the JSON property `buttons`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageBasicCardButton>]
        attr_accessor :buttons
      
        # Required, unless image is present. The body text of the card.
        # Corresponds to the JSON property `formattedText`
        # @return [String]
        attr_accessor :formatted_text
      
        # The image response message.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageImage]
        attr_accessor :image
      
        # Optional. The subtitle of the card.
        # Corresponds to the JSON property `subtitle`
        # @return [String]
        attr_accessor :subtitle
      
        # Optional. The title of the card.
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
      
      # The button object that appears at the bottom of a card.
      class GoogleCloudDialogflowV2IntentMessageBasicCardButton
        include Google::Apis::Core::Hashable
      
        # Opens the given URI.
        # Corresponds to the JSON property `openUriAction`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction]
        attr_accessor :open_uri_action
      
        # Required. The title of the button.
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
      
      # Opens the given URI.
      class GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction
        include Google::Apis::Core::Hashable
      
        # Required. The HTTP or HTTPS scheme URI.
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
      
      # Browse Carousel Card for Actions on Google. https://developers.google.com/
      # actions/assistant/responses#browsing_carousel
      class GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard
        include Google::Apis::Core::Hashable
      
        # Optional. Settings for displaying the image. Applies to every image in items.
        # Corresponds to the JSON property `imageDisplayOptions`
        # @return [String]
        attr_accessor :image_display_options
      
        # Required. List of items in the Browse Carousel Card. Minimum of two items,
        # maximum of ten.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem>]
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
      
      # Browsing carousel tile
      class GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItem
        include Google::Apis::Core::Hashable
      
        # Optional. Description of the carousel item. Maximum of four lines of text.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Text that appears at the bottom of the Browse Carousel Card. Maximum
        # of one line of text.
        # Corresponds to the JSON property `footer`
        # @return [String]
        attr_accessor :footer
      
        # The image response message.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageImage]
        attr_accessor :image
      
        # Actions on Google action to open a given url.
        # Corresponds to the JSON property `openUriAction`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction]
        attr_accessor :open_uri_action
      
        # Required. Title of the carousel item. Maximum of two lines of text.
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
      
      # Actions on Google action to open a given url.
      class GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction
        include Google::Apis::Core::Hashable
      
        # Required. URL
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        # Optional. Specifies the type of viewer that is used when opening the URL.
        # Defaults to opening via web browser.
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
      
      # The card response message.
      class GoogleCloudDialogflowV2IntentMessageCard
        include Google::Apis::Core::Hashable
      
        # Optional. The collection of card buttons.
        # Corresponds to the JSON property `buttons`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageCardButton>]
        attr_accessor :buttons
      
        # Optional. The public URI to an image file for the card.
        # Corresponds to the JSON property `imageUri`
        # @return [String]
        attr_accessor :image_uri
      
        # Optional. The subtitle of the card.
        # Corresponds to the JSON property `subtitle`
        # @return [String]
        attr_accessor :subtitle
      
        # Optional. The title of the card.
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
      
      # Contains information about a button.
      class GoogleCloudDialogflowV2IntentMessageCardButton
        include Google::Apis::Core::Hashable
      
        # Optional. The text to send back to the Dialogflow API or a URI to open.
        # Corresponds to the JSON property `postback`
        # @return [String]
        attr_accessor :postback
      
        # Optional. The text to show on the button.
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
      
      # The card for presenting a carousel of options to select from.
      class GoogleCloudDialogflowV2IntentMessageCarouselSelect
        include Google::Apis::Core::Hashable
      
        # Required. Carousel items.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageCarouselSelectItem>]
        attr_accessor :items
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
        end
      end
      
      # An item in the carousel.
      class GoogleCloudDialogflowV2IntentMessageCarouselSelectItem
        include Google::Apis::Core::Hashable
      
        # Optional. The body text of the card.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The image response message.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageImage]
        attr_accessor :image
      
        # Additional info about the select item for when it is triggered in a dialog.
        # Corresponds to the JSON property `info`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageSelectItemInfo]
        attr_accessor :info
      
        # Required. Title of the carousel item.
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
      
      # Column properties for TableCard.
      class GoogleCloudDialogflowV2IntentMessageColumnProperties
        include Google::Apis::Core::Hashable
      
        # Required. Column heading.
        # Corresponds to the JSON property `header`
        # @return [String]
        attr_accessor :header
      
        # Optional. Defines text alignment for all cells in this column.
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
      
      # The image response message.
      class GoogleCloudDialogflowV2IntentMessageImage
        include Google::Apis::Core::Hashable
      
        # Optional. A text description of the image to be used for accessibility, e.g.,
        # screen readers.
        # Corresponds to the JSON property `accessibilityText`
        # @return [String]
        attr_accessor :accessibility_text
      
        # Optional. The public URI to an image file.
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
      
      # The suggestion chip message that allows the user to jump out to the app or
      # website associated with this agent.
      class GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion
        include Google::Apis::Core::Hashable
      
        # Required. The name of the app or site this chip is linking to.
        # Corresponds to the JSON property `destinationName`
        # @return [String]
        attr_accessor :destination_name
      
        # Required. The URI of the app or site to open when the user taps the suggestion
        # chip.
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
      
      # The card for presenting a list of options to select from.
      class GoogleCloudDialogflowV2IntentMessageListSelect
        include Google::Apis::Core::Hashable
      
        # Required. List items.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageListSelectItem>]
        attr_accessor :items
      
        # Optional. Subtitle of the list.
        # Corresponds to the JSON property `subtitle`
        # @return [String]
        attr_accessor :subtitle
      
        # Optional. The overall title of the list.
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
      
      # An item in the list.
      class GoogleCloudDialogflowV2IntentMessageListSelectItem
        include Google::Apis::Core::Hashable
      
        # Optional. The main text describing the item.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The image response message.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageImage]
        attr_accessor :image
      
        # Additional info about the select item for when it is triggered in a dialog.
        # Corresponds to the JSON property `info`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageSelectItemInfo]
        attr_accessor :info
      
        # Required. The title of the list item.
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
      
      # The media content card for Actions on Google.
      class GoogleCloudDialogflowV2IntentMessageMediaContent
        include Google::Apis::Core::Hashable
      
        # Required. List of media objects.
        # Corresponds to the JSON property `mediaObjects`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject>]
        attr_accessor :media_objects
      
        # Optional. What type of media is the content (ie "audio").
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
      
      # Response media object for media content card.
      class GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject
        include Google::Apis::Core::Hashable
      
        # Required. Url where the media is stored.
        # Corresponds to the JSON property `contentUrl`
        # @return [String]
        attr_accessor :content_url
      
        # Optional. Description of media card.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The image response message.
        # Corresponds to the JSON property `icon`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageImage]
        attr_accessor :icon
      
        # The image response message.
        # Corresponds to the JSON property `largeImage`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageImage]
        attr_accessor :large_image
      
        # Required. Name of media card.
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
      
      # The quick replies response message.
      class GoogleCloudDialogflowV2IntentMessageQuickReplies
        include Google::Apis::Core::Hashable
      
        # Optional. The collection of quick replies.
        # Corresponds to the JSON property `quickReplies`
        # @return [Array<String>]
        attr_accessor :quick_replies
      
        # Optional. The title of the collection of quick replies.
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
      
      # Additional info about the select item for when it is triggered in a dialog.
      class GoogleCloudDialogflowV2IntentMessageSelectItemInfo
        include Google::Apis::Core::Hashable
      
        # Required. A unique key that will be sent back to the agent if this response is
        # given.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Optional. A list of synonyms that can also be used to trigger this item in
        # dialog.
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
      
      # The simple response message containing speech or text.
      class GoogleCloudDialogflowV2IntentMessageSimpleResponse
        include Google::Apis::Core::Hashable
      
        # Optional. The text to display.
        # Corresponds to the JSON property `displayText`
        # @return [String]
        attr_accessor :display_text
      
        # One of text_to_speech or ssml must be provided. Structured spoken response to
        # the user in the SSML format. Mutually exclusive with text_to_speech.
        # Corresponds to the JSON property `ssml`
        # @return [String]
        attr_accessor :ssml
      
        # One of text_to_speech or ssml must be provided. The plain text of the speech
        # output. Mutually exclusive with ssml.
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
      
      # The collection of simple response candidates. This message in `QueryResult.
      # fulfillment_messages` and `WebhookResponse.fulfillment_messages` should
      # contain only one `SimpleResponse`.
      class GoogleCloudDialogflowV2IntentMessageSimpleResponses
        include Google::Apis::Core::Hashable
      
        # Required. The list of simple responses.
        # Corresponds to the JSON property `simpleResponses`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageSimpleResponse>]
        attr_accessor :simple_responses
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @simple_responses = args[:simple_responses] if args.key?(:simple_responses)
        end
      end
      
      # The suggestion chip message that the user can tap to quickly post a reply to
      # the conversation.
      class GoogleCloudDialogflowV2IntentMessageSuggestion
        include Google::Apis::Core::Hashable
      
        # Required. The text shown the in the suggestion chip.
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
      
      # The collection of suggestions.
      class GoogleCloudDialogflowV2IntentMessageSuggestions
        include Google::Apis::Core::Hashable
      
        # Required. The list of suggested replies.
        # Corresponds to the JSON property `suggestions`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageSuggestion>]
        attr_accessor :suggestions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @suggestions = args[:suggestions] if args.key?(:suggestions)
        end
      end
      
      # Table card for Actions on Google.
      class GoogleCloudDialogflowV2IntentMessageTableCard
        include Google::Apis::Core::Hashable
      
        # Optional. List of buttons for the card.
        # Corresponds to the JSON property `buttons`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageBasicCardButton>]
        attr_accessor :buttons
      
        # Optional. Display properties for the columns in this table.
        # Corresponds to the JSON property `columnProperties`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageColumnProperties>]
        attr_accessor :column_properties
      
        # The image response message.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageImage]
        attr_accessor :image
      
        # Optional. Rows in this table of data.
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageTableCardRow>]
        attr_accessor :rows
      
        # Optional. Subtitle to the title.
        # Corresponds to the JSON property `subtitle`
        # @return [String]
        attr_accessor :subtitle
      
        # Required. Title of the card.
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
      
      # Cell of TableCardRow.
      class GoogleCloudDialogflowV2IntentMessageTableCardCell
        include Google::Apis::Core::Hashable
      
        # Required. Text in this cell.
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
      
      # Row of TableCard.
      class GoogleCloudDialogflowV2IntentMessageTableCardRow
        include Google::Apis::Core::Hashable
      
        # Optional. List of cells that make up this row.
        # Corresponds to the JSON property `cells`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessageTableCardCell>]
        attr_accessor :cells
      
        # Optional. Whether to add a visual divider after this row.
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
      
      # The text response message.
      class GoogleCloudDialogflowV2IntentMessageText
        include Google::Apis::Core::Hashable
      
        # Optional. The collection of the agent's responses.
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
      
      # Represents intent parameters.
      class GoogleCloudDialogflowV2IntentParameter
        include Google::Apis::Core::Hashable
      
        # Optional. The default value to use when the `value` yields an empty result.
        # Default values can be extracted from contexts by using the following syntax: `#
        # context_name.parameter_name`.
        # Corresponds to the JSON property `defaultValue`
        # @return [String]
        attr_accessor :default_value
      
        # Required. The name of the parameter.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. The name of the entity type, prefixed with `@`, that describes
        # values of the parameter. If the parameter is required, this must be provided.
        # Corresponds to the JSON property `entityTypeDisplayName`
        # @return [String]
        attr_accessor :entity_type_display_name
      
        # Optional. Indicates whether the parameter represents a list of values.
        # Corresponds to the JSON property `isList`
        # @return [Boolean]
        attr_accessor :is_list
        alias_method :is_list?, :is_list
      
        # Optional. Indicates whether the parameter is required. That is, whether the
        # intent cannot be completed without collecting the parameter value.
        # Corresponds to the JSON property `mandatory`
        # @return [Boolean]
        attr_accessor :mandatory
        alias_method :mandatory?, :mandatory
      
        # The unique identifier of this parameter.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The collection of prompts that the agent can present to the user in
        # order to collect a value for the parameter.
        # Corresponds to the JSON property `prompts`
        # @return [Array<String>]
        attr_accessor :prompts
      
        # Optional. The definition of the parameter value. It can be: - a constant
        # string, - a parameter value defined as `$parameter_name`, - an original
        # parameter value defined as `$parameter_name.original`, - a parameter value
        # from some context defined as `#context_name.parameter_name`.
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
      
      # Represents an example that the agent is trained on.
      class GoogleCloudDialogflowV2IntentTrainingPhrase
        include Google::Apis::Core::Hashable
      
        # Output only. The unique identifier of this training phrase.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The ordered list of training phrase parts. The parts are
        # concatenated in order to form the training phrase. Note: The API does not
        # automatically annotate training phrases like the Dialogflow Console does. Note:
        # Do not forget to include whitespace at part boundaries, so the training
        # phrase is well formatted when the parts are concatenated. If the training
        # phrase does not need to be annotated with parameters, you just need a single
        # part with only the Part.text field set. If you want to annotate the training
        # phrase, you must create multiple parts, where the fields of each part are
        # populated in one of two ways: - `Part.text` is set to a part of the phrase
        # that has no parameters. - `Part.text` is set to a part of the phrase that you
        # want to annotate, and the `entity_type`, `alias`, and `user_defined` fields
        # are all set.
        # Corresponds to the JSON property `parts`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentTrainingPhrasePart>]
        attr_accessor :parts
      
        # Optional. Indicates how many times this example was added to the intent. Each
        # time a developer adds an existing sample by editing an intent or training,
        # this counter is increased.
        # Corresponds to the JSON property `timesAddedCount`
        # @return [Fixnum]
        attr_accessor :times_added_count
      
        # Required. The type of the training phrase.
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
      
      # Represents a part of a training phrase.
      class GoogleCloudDialogflowV2IntentTrainingPhrasePart
        include Google::Apis::Core::Hashable
      
        # Optional. The parameter name for the value extracted from the annotated part
        # of the example. This field is required for annotated parts of the training
        # phrase.
        # Corresponds to the JSON property `alias`
        # @return [String]
        attr_accessor :alias
      
        # Optional. The entity type name prefixed with `@`. This field is required for
        # annotated parts of the training phrase.
        # Corresponds to the JSON property `entityType`
        # @return [String]
        attr_accessor :entity_type
      
        # Required. The text for this part.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # Optional. Indicates whether the text was manually annotated. This field is set
        # to true when the Dialogflow Console is used to manually annotate the part.
        # When creating an annotated part with the API, you must set this to true.
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
      
      # Metadata in google::longrunning::Operation for Knowledge operations.
      class GoogleCloudDialogflowV2KnowledgeOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Metadata related to the Export Data Operations (e.g. ExportDocument).
        # Corresponds to the JSON property `exportOperationMetadata`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2ExportOperationMetadata]
        attr_accessor :export_operation_metadata
      
        # The name of the knowledge base interacted with during the operation.
        # Corresponds to the JSON property `knowledgeBase`
        # @return [String]
        attr_accessor :knowledge_base
      
        # Output only. The current state of this operation.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @export_operation_metadata = args[:export_operation_metadata] if args.key?(:export_operation_metadata)
          @knowledge_base = args[:knowledge_base] if args.key?(:knowledge_base)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Represents a message posted into a conversation.
      class GoogleCloudDialogflowV2Message
        include Google::Apis::Core::Hashable
      
        # Required. The message content.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # Output only. The time when the message was created in Contact Center AI.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. The message language. This should be a [BCP-47](https://www.rfc-
        # editor.org/rfc/bcp/bcp47.txt) language tag. Example: "en-US".
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Represents the result of annotation for the message.
        # Corresponds to the JSON property `messageAnnotation`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2MessageAnnotation]
        attr_accessor :message_annotation
      
        # Optional. The unique identifier of the message. Format: `projects//locations//
        # conversations//messages/`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The participant that sends this message.
        # Corresponds to the JSON property `participant`
        # @return [String]
        attr_accessor :participant
      
        # Output only. The role of the participant.
        # Corresponds to the JSON property `participantRole`
        # @return [String]
        attr_accessor :participant_role
      
        # Optional. The time when the message was sent.
        # Corresponds to the JSON property `sendTime`
        # @return [String]
        attr_accessor :send_time
      
        # The result of sentiment analysis. Sentiment analysis inspects user input and
        # identifies the prevailing subjective opinion, especially to determine a user's
        # attitude as positive, negative, or neutral. For Participants.DetectIntent, it
        # needs to be configured in DetectIntentRequest.query_params. For Participants.
        # StreamingDetectIntent, it needs to be configured in
        # StreamingDetectIntentRequest.query_params. And for Participants.AnalyzeContent
        # and Participants.StreamingAnalyzeContent, it needs to be configured in
        # ConversationProfile.human_agent_assistant_config
        # Corresponds to the JSON property `sentimentAnalysis`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2SentimentAnalysisResult]
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
      
      # Represents the result of annotation for the message.
      class GoogleCloudDialogflowV2MessageAnnotation
        include Google::Apis::Core::Hashable
      
        # Indicates whether the text message contains entities.
        # Corresponds to the JSON property `containEntities`
        # @return [Boolean]
        attr_accessor :contain_entities
        alias_method :contain_entities?, :contain_entities
      
        # The collection of annotated message parts ordered by their position in the
        # message. You can recover the annotated message by concatenating [
        # AnnotatedMessagePart.text].
        # Corresponds to the JSON property `parts`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2AnnotatedMessagePart>]
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
      
      # Represents the contents of the original request that was passed to the `[
      # Streaming]DetectIntent` call.
      class GoogleCloudDialogflowV2OriginalDetectIntentRequest
        include Google::Apis::Core::Hashable
      
        # Optional. This field is set to the value of the `QueryParameters.payload`
        # field passed in the request. Some integrations that query a Dialogflow agent
        # may provide additional information in the payload. In particular, for the
        # Dialogflow Phone Gateway integration, this field has the form: ` "telephony": `
        # "caller_id": "+18558363987" ` ` Note: The caller ID field (`caller_id`) will
        # be redacted for Trial Edition agents and populated with the caller ID in [E.
        # 164 format](https://en.wikipedia.org/wiki/E.164) for Essentials Edition agents.
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # The source of this request, e.g., `google`, `facebook`, `slack`. It is set by
        # Dialogflow-owned servers.
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        # Optional. The version of the protocol used for this request. This field is AoG-
        # specific.
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
      
      # Represents the result of conversational query or event processing.
      class GoogleCloudDialogflowV2QueryResult
        include Google::Apis::Core::Hashable
      
        # The action name from the matched intent.
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # This field is set to: - `false` if the matched intent has required parameters
        # and not all of the required parameter values have been collected. - `true` if
        # all required parameter values have been collected, or if the matched intent
        # doesn't contain any required parameters.
        # Corresponds to the JSON property `allRequiredParamsPresent`
        # @return [Boolean]
        attr_accessor :all_required_params_present
        alias_method :all_required_params_present?, :all_required_params_present
      
        # Indicates whether the conversational query triggers a cancellation for slot
        # filling. For more information, see the [cancel slot filling documentation](
        # https://cloud.google.com/dialogflow/es/docs/intents-actions-parameters#cancel).
        # Corresponds to the JSON property `cancelsSlotFilling`
        # @return [Boolean]
        attr_accessor :cancels_slot_filling
        alias_method :cancels_slot_filling?, :cancels_slot_filling
      
        # Free-form diagnostic information for the associated detect intent request. The
        # fields of this data can change without notice, so you should not write code
        # that depends on its structure. The data may contain: - webhook call latency -
        # webhook errors
        # Corresponds to the JSON property `diagnosticInfo`
        # @return [Hash<String,Object>]
        attr_accessor :diagnostic_info
      
        # The collection of rich messages to present to the user.
        # Corresponds to the JSON property `fulfillmentMessages`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessage>]
        attr_accessor :fulfillment_messages
      
        # The text to be pronounced to the user or shown on the screen. Note: This is a
        # legacy field, `fulfillment_messages` should be preferred.
        # Corresponds to the JSON property `fulfillmentText`
        # @return [String]
        attr_accessor :fulfillment_text
      
        # An intent categorizes an end-user's intention for one conversation turn. For
        # each agent, you define many intents, where your combined intents can handle a
        # complete conversation. When an end-user writes or says something, referred to
        # as an end-user expression or end-user input, Dialogflow matches the end-user
        # input to the best intent in your agent. Matching an intent is also known as
        # intent classification. For more information, see the [intent guide](https://
        # cloud.google.com/dialogflow/docs/intents-overview).
        # Corresponds to the JSON property `intent`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2Intent]
        attr_accessor :intent
      
        # The intent detection confidence. Values range from 0.0 (completely uncertain)
        # to 1.0 (completely certain). This value is for informational purpose only and
        # is only used to help match the best intent within the classification threshold.
        # This value may change for the same end-user expression at any time due to a
        # model retraining or change in implementation. If there are `multiple
        # knowledge_answers` messages, this value is set to the greatest `
        # knowledgeAnswers.match_confidence` value in the list.
        # Corresponds to the JSON property `intentDetectionConfidence`
        # @return [Float]
        attr_accessor :intent_detection_confidence
      
        # The language that was triggered during intent detection. See [Language Support]
        # (https://cloud.google.com/dialogflow/docs/reference/language) for a list of
        # the currently supported language codes.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # The collection of output contexts. If applicable, `output_contexts.parameters`
        # contains entries with name `.original` containing the original parameter
        # values before the query.
        # Corresponds to the JSON property `outputContexts`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2Context>]
        attr_accessor :output_contexts
      
        # The collection of extracted parameters. Depending on your protocol or client
        # library language, this is a map, associative array, symbol table, dictionary,
        # or JSON object composed of a collection of (MapKey, MapValue) pairs: - MapKey
        # type: string - MapKey value: parameter name - MapValue type: - If parameter's
        # entity type is a composite entity: map - Else: depending on parameter value
        # type, could be one of string, number, boolean, null, list or map - MapValue
        # value: - If parameter's entity type is a composite entity: map from composite
        # entity property names to property values - Else: parameter value
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,Object>]
        attr_accessor :parameters
      
        # The original conversational query text: - If natural language text was
        # provided as input, `query_text` contains a copy of the input. - If natural
        # language speech audio was provided as input, `query_text` contains the speech
        # recognition result. If speech recognizer produced multiple alternatives, a
        # particular one is picked. - If automatic spell correction is enabled, `
        # query_text` will contain the corrected user input.
        # Corresponds to the JSON property `queryText`
        # @return [String]
        attr_accessor :query_text
      
        # The result of sentiment analysis. Sentiment analysis inspects user input and
        # identifies the prevailing subjective opinion, especially to determine a user's
        # attitude as positive, negative, or neutral. For Participants.DetectIntent, it
        # needs to be configured in DetectIntentRequest.query_params. For Participants.
        # StreamingDetectIntent, it needs to be configured in
        # StreamingDetectIntentRequest.query_params. And for Participants.AnalyzeContent
        # and Participants.StreamingAnalyzeContent, it needs to be configured in
        # ConversationProfile.human_agent_assistant_config
        # Corresponds to the JSON property `sentimentAnalysisResult`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2SentimentAnalysisResult]
        attr_accessor :sentiment_analysis_result
      
        # The Speech recognition confidence between 0.0 and 1.0. A higher number
        # indicates an estimated greater likelihood that the recognized words are
        # correct. The default of 0.0 is a sentinel value indicating that confidence was
        # not set. This field is not guaranteed to be accurate or set. In particular
        # this field isn't set for StreamingDetectIntent since the streaming endpoint
        # has separate confidence estimates per portion of the audio in
        # StreamingRecognitionResult.
        # Corresponds to the JSON property `speechRecognitionConfidence`
        # @return [Float]
        attr_accessor :speech_recognition_confidence
      
        # If the query was fulfilled by a webhook call, this field is set to the value
        # of the `payload` field returned in the webhook response.
        # Corresponds to the JSON property `webhookPayload`
        # @return [Hash<String,Object>]
        attr_accessor :webhook_payload
      
        # If the query was fulfilled by a webhook call, this field is set to the value
        # of the `source` field returned in the webhook response.
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
      
      # The sentiment, such as positive/negative feeling or association, for a unit of
      # analysis, such as the query text. See: https://cloud.google.com/natural-
      # language/docs/basics#interpreting_sentiment_analysis_values for how to
      # interpret the result.
      class GoogleCloudDialogflowV2Sentiment
        include Google::Apis::Core::Hashable
      
        # A non-negative number in the [0, +inf) range, which represents the absolute
        # magnitude of sentiment, regardless of score (positive or negative).
        # Corresponds to the JSON property `magnitude`
        # @return [Float]
        attr_accessor :magnitude
      
        # Sentiment score between -1.0 (negative sentiment) and 1.0 (positive sentiment).
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
      
      # The result of sentiment analysis. Sentiment analysis inspects user input and
      # identifies the prevailing subjective opinion, especially to determine a user's
      # attitude as positive, negative, or neutral. For Participants.DetectIntent, it
      # needs to be configured in DetectIntentRequest.query_params. For Participants.
      # StreamingDetectIntent, it needs to be configured in
      # StreamingDetectIntentRequest.query_params. And for Participants.AnalyzeContent
      # and Participants.StreamingAnalyzeContent, it needs to be configured in
      # ConversationProfile.human_agent_assistant_config
      class GoogleCloudDialogflowV2SentimentAnalysisResult
        include Google::Apis::Core::Hashable
      
        # The sentiment, such as positive/negative feeling or association, for a unit of
        # analysis, such as the query text. See: https://cloud.google.com/natural-
        # language/docs/basics#interpreting_sentiment_analysis_values for how to
        # interpret the result.
        # Corresponds to the JSON property `queryTextSentiment`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2Sentiment]
        attr_accessor :query_text_sentiment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @query_text_sentiment = args[:query_text_sentiment] if args.key?(:query_text_sentiment)
        end
      end
      
      # A session represents a conversation between a Dialogflow agent and an end-user.
      # You can create special entities, called session entities, during a session.
      # Session entities can extend or replace custom entity types and only exist
      # during the session that they were created for. All session data, including
      # session entities, is stored by Dialogflow for 20 minutes. For more information,
      # see the [session entity guide](https://cloud.google.com/dialogflow/docs/
      # entities-session).
      class GoogleCloudDialogflowV2SessionEntityType
        include Google::Apis::Core::Hashable
      
        # Required. The collection of entities associated with this session entity type.
        # Corresponds to the JSON property `entities`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2EntityTypeEntity>]
        attr_accessor :entities
      
        # Required. Indicates whether the additional data should override or supplement
        # the custom entity type definition.
        # Corresponds to the JSON property `entityOverrideMode`
        # @return [String]
        attr_accessor :entity_override_mode
      
        # Required. The unique identifier of this session entity type. Format: `projects/
        # /agent/sessions//entityTypes/`, or `projects//agent/environments//users//
        # sessions//entityTypes/`. If `Environment ID` is not specified, we assume
        # default 'draft' environment. If `User ID` is not specified, we assume default '
        # -' user. `` must be the display name of an existing entity type in the same
        # agent that will be overridden or supplemented.
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
      
      # Metadata for a ConversationProfile.SetSuggestionFeatureConfig operation.
      class GoogleCloudDialogflowV2SetSuggestionFeatureConfigOperationMetadata
        include Google::Apis::Core::Hashable
      
        # The resource name of the conversation profile. Format: `projects//locations//
        # conversationProfiles/`
        # Corresponds to the JSON property `conversationProfile`
        # @return [String]
        attr_accessor :conversation_profile
      
        # Timestamp whe the request was created. The time is measured on server side.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. The participant role to add or update the suggestion feature config.
        # Only HUMAN_AGENT or END_USER can be used.
        # Corresponds to the JSON property `participantRole`
        # @return [String]
        attr_accessor :participant_role
      
        # Required. The type of the suggestion feature to add or update.
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
      
      # Represents a smart reply answer.
      class GoogleCloudDialogflowV2SmartReplyAnswer
        include Google::Apis::Core::Hashable
      
        # The name of answer record, in the format of "projects//locations//
        # answerRecords/"
        # Corresponds to the JSON property `answerRecord`
        # @return [String]
        attr_accessor :answer_record
      
        # Smart reply confidence. The system's confidence score that this reply is a
        # good match for this conversation, as a value from 0.0 (completely uncertain)
        # to 1.0 (completely certain).
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # The content of the reply.
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
      
      # Metadata for smart reply models.
      class GoogleCloudDialogflowV2SmartReplyModelMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. Type of the smart reply model. If not provided, model_type is used.
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
      
      # The response message for Participants.SuggestArticles.
      class GoogleCloudDialogflowV2SuggestArticlesResponse
        include Google::Apis::Core::Hashable
      
        # Articles ordered by score in descending order.
        # Corresponds to the JSON property `articleAnswers`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2ArticleAnswer>]
        attr_accessor :article_answers
      
        # Number of messages prior to and including latest_message to compile the
        # suggestion. It may be smaller than the SuggestArticlesRequest.context_size
        # field in the request if there aren't that many messages in the conversation.
        # Corresponds to the JSON property `contextSize`
        # @return [Fixnum]
        attr_accessor :context_size
      
        # The name of the latest conversation message used to compile suggestion for.
        # Format: `projects//locations//conversations//messages/`.
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
      
      # The request message for Participants.SuggestFaqAnswers.
      class GoogleCloudDialogflowV2SuggestFaqAnswersResponse
        include Google::Apis::Core::Hashable
      
        # Number of messages prior to and including latest_message to compile the
        # suggestion. It may be smaller than the SuggestFaqAnswersRequest.context_size
        # field in the request if there aren't that many messages in the conversation.
        # Corresponds to the JSON property `contextSize`
        # @return [Fixnum]
        attr_accessor :context_size
      
        # Answers extracted from FAQ documents.
        # Corresponds to the JSON property `faqAnswers`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2FaqAnswer>]
        attr_accessor :faq_answers
      
        # The name of the latest conversation message used to compile suggestion for.
        # Format: `projects//locations//conversations//messages/`.
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
      
      # The response message for Participants.SuggestSmartReplies.
      class GoogleCloudDialogflowV2SuggestSmartRepliesResponse
        include Google::Apis::Core::Hashable
      
        # Number of messages prior to and including latest_message to compile the
        # suggestion. It may be smaller than the SuggestSmartRepliesRequest.context_size
        # field in the request if there aren't that many messages in the conversation.
        # Corresponds to the JSON property `contextSize`
        # @return [Fixnum]
        attr_accessor :context_size
      
        # The name of the latest conversation message used to compile suggestion for.
        # Format: `projects//locations//conversations//messages/`.
        # Corresponds to the JSON property `latestMessage`
        # @return [String]
        attr_accessor :latest_message
      
        # Output only. Multiple reply options provided by smart reply service. The order
        # is based on the rank of the model prediction. The maximum number of the
        # returned replies is set in SmartReplyConfig.
        # Corresponds to the JSON property `smartReplyAnswers`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2SmartReplyAnswer>]
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
      
      # One response of different type of suggestion response which is used in the
      # response of Participants.AnalyzeContent and Participants.AnalyzeContent, as
      # well as HumanAgentAssistantEvent.
      class GoogleCloudDialogflowV2SuggestionResult
        include Google::Apis::Core::Hashable
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::DialogflowV3beta1::GoogleRpcStatus]
        attr_accessor :error
      
        # The response message for Participants.SuggestArticles.
        # Corresponds to the JSON property `suggestArticlesResponse`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2SuggestArticlesResponse]
        attr_accessor :suggest_articles_response
      
        # The request message for Participants.SuggestFaqAnswers.
        # Corresponds to the JSON property `suggestFaqAnswersResponse`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2SuggestFaqAnswersResponse]
        attr_accessor :suggest_faq_answers_response
      
        # The response message for Participants.SuggestSmartReplies.
        # Corresponds to the JSON property `suggestSmartRepliesResponse`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2SuggestSmartRepliesResponse]
        attr_accessor :suggest_smart_replies_response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error = args[:error] if args.key?(:error)
          @suggest_articles_response = args[:suggest_articles_response] if args.key?(:suggest_articles_response)
          @suggest_faq_answers_response = args[:suggest_faq_answers_response] if args.key?(:suggest_faq_answers_response)
          @suggest_smart_replies_response = args[:suggest_smart_replies_response] if args.key?(:suggest_smart_replies_response)
        end
      end
      
      # Metadata for a ConversationModels.UndeployConversationModel operation.
      class GoogleCloudDialogflowV2UndeployConversationModelOperationMetadata
        include Google::Apis::Core::Hashable
      
        # The resource name of the conversation model. Format: `projects//
        # conversationModels/`
        # Corresponds to the JSON property `conversationModel`
        # @return [String]
        attr_accessor :conversation_model
      
        # Timestamp when the request to undeploy conversation model was submitted. The
        # time is measured on server side.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation_model = args[:conversation_model] if args.key?(:conversation_model)
          @create_time = args[:create_time] if args.key?(:create_time)
        end
      end
      
      # The request message for a webhook call.
      class GoogleCloudDialogflowV2WebhookRequest
        include Google::Apis::Core::Hashable
      
        # Represents the contents of the original request that was passed to the `[
        # Streaming]DetectIntent` call.
        # Corresponds to the JSON property `originalDetectIntentRequest`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2OriginalDetectIntentRequest]
        attr_accessor :original_detect_intent_request
      
        # Represents the result of conversational query or event processing.
        # Corresponds to the JSON property `queryResult`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2QueryResult]
        attr_accessor :query_result
      
        # The unique identifier of the response. Contains the same value as `[Streaming]
        # DetectIntentResponse.response_id`.
        # Corresponds to the JSON property `responseId`
        # @return [String]
        attr_accessor :response_id
      
        # The unique identifier of detectIntent request session. Can be used to identify
        # end-user inside webhook implementation. Format: `projects//agent/sessions/`,
        # or `projects//agent/environments//users//sessions/`.
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
      
      # The response message for a webhook call. This response is validated by the
      # Dialogflow server. If validation fails, an error will be returned in the
      # QueryResult.diagnostic_info field. Setting JSON fields to an empty value with
      # the wrong type is a common error. To avoid this error: - Use `""` for empty
      # strings - Use ```` or `null` for empty objects - Use `[]` or `null` for empty
      # arrays For more information, see the [Protocol Buffers Language Guide](https://
      # developers.google.com/protocol-buffers/docs/proto3#json).
      class GoogleCloudDialogflowV2WebhookResponse
        include Google::Apis::Core::Hashable
      
        # Events allow for matching intents by event name instead of the natural
        # language input. For instance, input `` can trigger a personalized welcome
        # response. The parameter `name` may be used by the agent in the response: `"
        # Hello #welcome_event.name! What can I do for you today?"`.
        # Corresponds to the JSON property `followupEventInput`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2EventInput]
        attr_accessor :followup_event_input
      
        # Optional. The rich response messages intended for the end-user. When provided,
        # Dialogflow uses this field to populate QueryResult.fulfillment_messages sent
        # to the integration or API caller.
        # Corresponds to the JSON property `fulfillmentMessages`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2IntentMessage>]
        attr_accessor :fulfillment_messages
      
        # Optional. The text response message intended for the end-user. It is
        # recommended to use `fulfillment_messages.text.text[0]` instead. When provided,
        # Dialogflow uses this field to populate QueryResult.fulfillment_text sent to
        # the integration or API caller.
        # Corresponds to the JSON property `fulfillmentText`
        # @return [String]
        attr_accessor :fulfillment_text
      
        # Optional. The collection of output contexts that will overwrite currently
        # active contexts for the session and reset their lifespans. When provided,
        # Dialogflow uses this field to populate QueryResult.output_contexts sent to the
        # integration or API caller.
        # Corresponds to the JSON property `outputContexts`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2Context>]
        attr_accessor :output_contexts
      
        # Optional. This field can be used to pass custom data from your webhook to the
        # integration or API caller. Arbitrary JSON objects are supported. When provided,
        # Dialogflow uses this field to populate QueryResult.webhook_payload sent to
        # the integration or API caller. This field is also used by the [Google
        # Assistant integration](https://cloud.google.com/dialogflow/docs/integrations/
        # aog) for rich response messages. See the format definition at [Google
        # Assistant Dialogflow webhook format](https://developers.google.com/assistant/
        # actions/build/json/dialogflow-webhook-json)
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # Optional. Additional session entity types to replace or extend developer
        # entity types with. The entity synonyms apply to all languages and persist for
        # the session. Setting this data from a webhook overwrites the session entity
        # types that have been set using `detectIntent`, `streamingDetectIntent` or
        # SessionEntityType management methods.
        # Corresponds to the JSON property `sessionEntityTypes`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2SessionEntityType>]
        attr_accessor :session_entity_types
      
        # Optional. A custom field used to identify the webhook source. Arbitrary
        # strings are supported. When provided, Dialogflow uses this field to populate
        # QueryResult.webhook_source sent to the integration or API caller.
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
      
      # Represents a part of a message possibly annotated with an entity. The part can
      # be an entity or purely a part of the message between two entities or message
      # start/end.
      class GoogleCloudDialogflowV2beta1AnnotatedMessagePart
        include Google::Apis::Core::Hashable
      
        # Optional. The [Dialogflow system entity type](https://cloud.google.com/
        # dialogflow/docs/reference/system-entities) of this message part. If this is
        # empty, Dialogflow could not annotate the phrase part with a system entity.
        # Corresponds to the JSON property `entityType`
        # @return [String]
        attr_accessor :entity_type
      
        # Optional. The [Dialogflow system entity formatted value ](https://cloud.google.
        # com/dialogflow/docs/reference/system-entities) of this message part. For
        # example for a system entity of type `@sys.unit-currency`, this may contain: ` "
        # amount": 5, "currency": "USD" `
        # Corresponds to the JSON property `formattedValue`
        # @return [Object]
        attr_accessor :formatted_value
      
        # Required. A part of a message possibly annotated with an entity.
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
      
      # Represents article answer.
      class GoogleCloudDialogflowV2beta1ArticleAnswer
        include Google::Apis::Core::Hashable
      
        # The name of answer record, in the format of "projects//locations//
        # answerRecords/"
        # Corresponds to the JSON property `answerRecord`
        # @return [String]
        attr_accessor :answer_record
      
        # A map that contains metadata about the answer and the document from which it
        # originates.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,String>]
        attr_accessor :metadata
      
        # Output only. Article snippets.
        # Corresponds to the JSON property `snippets`
        # @return [Array<String>]
        attr_accessor :snippets
      
        # The article title.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # The article URI.
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
      
      # The response message for EntityTypes.BatchUpdateEntityTypes.
      class GoogleCloudDialogflowV2beta1BatchUpdateEntityTypesResponse
        include Google::Apis::Core::Hashable
      
        # The collection of updated or created entity types.
        # Corresponds to the JSON property `entityTypes`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1EntityType>]
        attr_accessor :entity_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entity_types = args[:entity_types] if args.key?(:entity_types)
        end
      end
      
      # The response message for Intents.BatchUpdateIntents.
      class GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse
        include Google::Apis::Core::Hashable
      
        # The collection of updated or created intents.
        # Corresponds to the JSON property `intents`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1Intent>]
        attr_accessor :intents
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @intents = args[:intents] if args.key?(:intents)
        end
      end
      
      # Metadata for a ConversationProfile.ClearSuggestionFeatureConfig operation.
      class GoogleCloudDialogflowV2beta1ClearSuggestionFeatureConfigOperationMetadata
        include Google::Apis::Core::Hashable
      
        # The resource name of the conversation profile. Format: `projects//locations//
        # conversationProfiles/`
        # Corresponds to the JSON property `conversationProfile`
        # @return [String]
        attr_accessor :conversation_profile
      
        # Timestamp whe the request was created. The time is measured on server side.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. The participant role to remove the suggestion feature config. Only
        # HUMAN_AGENT or END_USER can be used.
        # Corresponds to the JSON property `participantRole`
        # @return [String]
        attr_accessor :participant_role
      
        # Required. The type of the suggestion feature to remove.
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
      
      # Dialogflow contexts are similar to natural language context. If a person says
      # to you "they are orange", you need context in order to understand what "they"
      # is referring to. Similarly, for Dialogflow to handle an end-user expression
      # like that, it needs to be provided with context in order to correctly match an
      # intent. Using contexts, you can control the flow of a conversation. You can
      # configure contexts for an intent by setting input and output contexts, which
      # are identified by string names. When an intent is matched, any configured
      # output contexts for that intent become active. While any contexts are active,
      # Dialogflow is more likely to match intents that are configured with input
      # contexts that correspond to the currently active contexts. For more
      # information about context, see the [Contexts guide](https://cloud.google.com/
      # dialogflow/docs/contexts-overview).
      class GoogleCloudDialogflowV2beta1Context
        include Google::Apis::Core::Hashable
      
        # Optional. The number of conversational query requests after which the context
        # expires. The default is `0`. If set to `0`, the context expires immediately.
        # Contexts expire automatically after 20 minutes if there are no matching
        # queries.
        # Corresponds to the JSON property `lifespanCount`
        # @return [Fixnum]
        attr_accessor :lifespan_count
      
        # Required. The unique identifier of the context. Supported formats: - `projects/
        # /agent/sessions//contexts/`, - `projects//locations//agent/sessions//contexts/`
        # , - `projects//agent/environments//users//sessions//contexts/`, - `projects//
        # locations//agent/environments//users//sessions//contexts/`, The `Context ID`
        # is always converted to lowercase, may only contain characters in a-zA-Z0-9_-%
        # and may be at most 250 bytes long. If `Environment ID` is not specified, we
        # assume default 'draft' environment. If `User ID` is not specified, we assume
        # default '-' user. The following context names are reserved for internal use by
        # Dialogflow. You should not use these contexts or create contexts with these
        # names: * `__system_counters__` * `*_id_dialog_context` * `*_dialog_params_size`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The collection of parameters associated with this context. Depending
        # on your protocol or client library language, this is a map, associative array,
        # symbol table, dictionary, or JSON object composed of a collection of (MapKey,
        # MapValue) pairs: - MapKey type: string - MapKey value: parameter name -
        # MapValue type: - If parameter's entity type is a composite entity: map - Else:
        # depending on parameter value type, could be one of string, number, boolean,
        # null, list or map - MapValue value: - If parameter's entity type is a
        # composite entity: map from composite entity property names to property values -
        # Else: parameter value
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
      
      # Represents a notification sent to Pub/Sub subscribers for conversation
      # lifecycle events.
      class GoogleCloudDialogflowV2beta1ConversationEvent
        include Google::Apis::Core::Hashable
      
        # Required. The unique identifier of the conversation this notification refers
        # to. Format: `projects//conversations/`.
        # Corresponds to the JSON property `conversation`
        # @return [String]
        attr_accessor :conversation
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `errorStatus`
        # @return [Google::Apis::DialogflowV3beta1::GoogleRpcStatus]
        attr_accessor :error_status
      
        # Represents a message posted into a conversation.
        # Corresponds to the JSON property `newMessagePayload`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1Message]
        attr_accessor :new_message_payload
      
        # Required. The type of the event that this notification refers to.
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
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Represents a Dialogflow assist answer.
      class GoogleCloudDialogflowV2beta1DialogflowAssistAnswer
        include Google::Apis::Core::Hashable
      
        # The name of answer record, in the format of "projects//locations//
        # answerRecords/"
        # Corresponds to the JSON property `answerRecord`
        # @return [String]
        attr_accessor :answer_record
      
        # Represents an intent suggestion.
        # Corresponds to the JSON property `intentSuggestion`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentSuggestion]
        attr_accessor :intent_suggestion
      
        # Represents the result of conversational query or event processing.
        # Corresponds to the JSON property `queryResult`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1QueryResult]
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
      
      # Each intent parameter has a type, called the entity type, which dictates
      # exactly how data from an end-user expression is extracted. Dialogflow provides
      # predefined system entities that can match many common types of data. For
      # example, there are system entities for matching dates, times, colors, email
      # addresses, and so on. You can also create your own custom entities for
      # matching custom data. For example, you could define a vegetable entity that
      # can match the types of vegetables available for purchase with a grocery store
      # agent. For more information, see the [Entity guide](https://cloud.google.com/
      # dialogflow/docs/entities-overview).
      class GoogleCloudDialogflowV2beta1EntityType
        include Google::Apis::Core::Hashable
      
        # Optional. Indicates whether the entity type can be automatically expanded.
        # Corresponds to the JSON property `autoExpansionMode`
        # @return [String]
        attr_accessor :auto_expansion_mode
      
        # Required. The name of the entity type.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. Enables fuzzy entity extraction during classification.
        # Corresponds to the JSON property `enableFuzzyExtraction`
        # @return [Boolean]
        attr_accessor :enable_fuzzy_extraction
        alias_method :enable_fuzzy_extraction?, :enable_fuzzy_extraction
      
        # Optional. The collection of entity entries associated with the entity type.
        # Corresponds to the JSON property `entities`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1EntityTypeEntity>]
        attr_accessor :entities
      
        # Required. Indicates the kind of entity type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The unique identifier of the entity type. Required for EntityTypes.
        # UpdateEntityType and EntityTypes.BatchUpdateEntityTypes methods. Supported
        # formats: - `projects//agent/entityTypes/` - `projects//locations//agent/
        # entityTypes/`
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
      
      # An **entity entry** for an associated entity type.
      class GoogleCloudDialogflowV2beta1EntityTypeEntity
        include Google::Apis::Core::Hashable
      
        # Required. A collection of value synonyms. For example, if the entity type is *
        # vegetable*, and `value` is *scallions*, a synonym could be *green onions*. For
        # `KIND_LIST` entity types: * This collection must contain exactly one synonym
        # equal to `value`.
        # Corresponds to the JSON property `synonyms`
        # @return [Array<String>]
        attr_accessor :synonyms
      
        # Required. The primary value associated with this entity entry. For example, if
        # the entity type is *vegetable*, the value could be *scallions*. For `KIND_MAP`
        # entity types: * A reference value to be used in place of synonyms. For `
        # KIND_LIST` entity types: * A string that can contain references to other
        # entity types (with or without aliases).
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
      
      # Events allow for matching intents by event name instead of the natural
      # language input. For instance, input `` can trigger a personalized welcome
      # response. The parameter `name` may be used by the agent in the response: `"
      # Hello #welcome_event.name! What can I do for you today?"`.
      class GoogleCloudDialogflowV2beta1EventInput
        include Google::Apis::Core::Hashable
      
        # Required. The language of this query. See [Language Support](https://cloud.
        # google.com/dialogflow/docs/reference/language) for a list of the currently
        # supported language codes. Note that queries in the same session do not
        # necessarily need to specify the same language. This field is ignored when used
        # in the context of a WebhookResponse.followup_event_input field, because the
        # language was already defined in the originating detect intent request.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Required. The unique identifier of the event.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The collection of parameters associated with the event. Depending on your
        # protocol or client library language, this is a map, associative array, symbol
        # table, dictionary, or JSON object composed of a collection of (MapKey,
        # MapValue) pairs: - MapKey type: string - MapKey value: parameter name -
        # MapValue type: - If parameter's entity type is a composite entity: map - Else:
        # depending on parameter value type, could be one of string, number, boolean,
        # null, list or map - MapValue value: - If parameter's entity type is a
        # composite entity: map from composite entity property names to property values -
        # Else: parameter value
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
      
      # The response message for Agents.ExportAgent.
      class GoogleCloudDialogflowV2beta1ExportAgentResponse
        include Google::Apis::Core::Hashable
      
        # Zip compressed raw byte content for agent.
        # Corresponds to the JSON property `agentContent`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :agent_content
      
        # The URI to a file containing the exported agent. This field is populated only
        # if `agent_uri` is specified in `ExportAgentRequest`.
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
      
      # Metadata related to the Export Data Operations (e.g. ExportDocument).
      class GoogleCloudDialogflowV2beta1ExportOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Google Cloud Storage location for the output.
        # Corresponds to the JSON property `exportedGcsDestination`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1GcsDestination]
        attr_accessor :exported_gcs_destination
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exported_gcs_destination = args[:exported_gcs_destination] if args.key?(:exported_gcs_destination)
        end
      end
      
      # Represents answer from "frequently asked questions".
      class GoogleCloudDialogflowV2beta1FaqAnswer
        include Google::Apis::Core::Hashable
      
        # The piece of text from the `source` knowledge base document.
        # Corresponds to the JSON property `answer`
        # @return [String]
        attr_accessor :answer
      
        # The name of answer record, in the format of "projects//locations//
        # answerRecords/"
        # Corresponds to the JSON property `answerRecord`
        # @return [String]
        attr_accessor :answer_record
      
        # The system's confidence score that this Knowledge answer is a good match for
        # this conversational query, range from 0.0 (completely uncertain) to 1.0 (
        # completely certain).
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # A map that contains metadata about the answer and the document from which it
        # originates.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,String>]
        attr_accessor :metadata
      
        # The corresponding FAQ question.
        # Corresponds to the JSON property `question`
        # @return [String]
        attr_accessor :question
      
        # Indicates which Knowledge Document this answer was extracted from. Format: `
        # projects//locations//agent/knowledgeBases//documents/`.
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
      
      # Google Cloud Storage location for the output.
      class GoogleCloudDialogflowV2beta1GcsDestination
        include Google::Apis::Core::Hashable
      
        # Required. The Google Cloud Storage URIs for the output. A URI is of the form:
        # gs://bucket/object-prefix-or-name Whether a prefix or name is used depends on
        # the use case. The requesting user must have "write-permission" to the bucket.
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
      
      # Output only. Represents a notification sent to Pub/Sub subscribers for agent
      # assistant events in a specific conversation.
      class GoogleCloudDialogflowV2beta1HumanAgentAssistantEvent
        include Google::Apis::Core::Hashable
      
        # The conversation this notification refers to. Format: `projects//conversations/
        # `.
        # Corresponds to the JSON property `conversation`
        # @return [String]
        attr_accessor :conversation
      
        # The participant that the suggestion is compiled for. And This field is used to
        # call Participants.ListSuggestions API. Format: `projects//conversations//
        # participants/`. It will not be set in legacy workflow.
        # HumanAgentAssistantConfig.name for more information.
        # Corresponds to the JSON property `participant`
        # @return [String]
        attr_accessor :participant
      
        # The suggestion results payload that this notification refers to. It will only
        # be set when HumanAgentAssistantConfig.SuggestionConfig.
        # group_suggestion_responses sets to true.
        # Corresponds to the JSON property `suggestionResults`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1SuggestionResult>]
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
      
      # Response message for Documents.ImportDocuments.
      class GoogleCloudDialogflowV2beta1ImportDocumentsResponse
        include Google::Apis::Core::Hashable
      
        # Includes details about skipped documents or any other warnings.
        # Corresponds to the JSON property `warnings`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleRpcStatus>]
        attr_accessor :warnings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @warnings = args[:warnings] if args.key?(:warnings)
        end
      end
      
      # An intent categorizes an end-user's intention for one conversation turn. For
      # each agent, you define many intents, where your combined intents can handle a
      # complete conversation. When an end-user writes or says something, referred to
      # as an end-user expression or end-user input, Dialogflow matches the end-user
      # input to the best intent in your agent. Matching an intent is also known as
      # intent classification. For more information, see the [intent guide](https://
      # cloud.google.com/dialogflow/docs/intents-overview).
      class GoogleCloudDialogflowV2beta1Intent
        include Google::Apis::Core::Hashable
      
        # Optional. The name of the action associated with the intent. Note: The action
        # name must not contain whitespaces.
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # Optional. The list of platforms for which the first responses will be copied
        # from the messages in PLATFORM_UNSPECIFIED (i.e. default platform).
        # Corresponds to the JSON property `defaultResponsePlatforms`
        # @return [Array<String>]
        attr_accessor :default_response_platforms
      
        # Required. The name of this intent.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. Indicates that this intent ends an interaction. Some integrations (e.
        # g., Actions on Google or Dialogflow phone gateway) use this information to
        # close interaction with an end user. Default is false.
        # Corresponds to the JSON property `endInteraction`
        # @return [Boolean]
        attr_accessor :end_interaction
        alias_method :end_interaction?, :end_interaction
      
        # Optional. The collection of event names that trigger the intent. If the
        # collection of input contexts is not empty, all of the contexts must be present
        # in the active user session for an event to trigger this intent. Event names
        # are limited to 150 characters.
        # Corresponds to the JSON property `events`
        # @return [Array<String>]
        attr_accessor :events
      
        # Output only. Information about all followup intents that have this intent as a
        # direct or indirect parent. We populate this field only in the output.
        # Corresponds to the JSON property `followupIntentInfo`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo>]
        attr_accessor :followup_intent_info
      
        # Optional. The list of context names required for this intent to be triggered.
        # Formats: - `projects//agent/sessions/-/contexts/` - `projects//locations//
        # agent/sessions/-/contexts/`
        # Corresponds to the JSON property `inputContextNames`
        # @return [Array<String>]
        attr_accessor :input_context_names
      
        # Optional. Indicates whether this is a fallback intent.
        # Corresponds to the JSON property `isFallback`
        # @return [Boolean]
        attr_accessor :is_fallback
        alias_method :is_fallback?, :is_fallback
      
        # Optional. Indicates that a live agent should be brought in to handle the
        # interaction with the user. In most cases, when you set this flag to true, you
        # would also want to set end_interaction to true as well. Default is false.
        # Corresponds to the JSON property `liveAgentHandoff`
        # @return [Boolean]
        attr_accessor :live_agent_handoff
        alias_method :live_agent_handoff?, :live_agent_handoff
      
        # Optional. The collection of rich messages corresponding to the `Response`
        # field in the Dialogflow console.
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessage>]
        attr_accessor :messages
      
        # Optional. Indicates whether Machine Learning is disabled for the intent. Note:
        # If `ml_disabled` setting is set to true, then this intent is not taken into
        # account during inference in `ML ONLY` match mode. Also, auto-markup in the UI
        # is turned off.
        # Corresponds to the JSON property `mlDisabled`
        # @return [Boolean]
        attr_accessor :ml_disabled
        alias_method :ml_disabled?, :ml_disabled
      
        # Optional. Indicates whether Machine Learning is enabled for the intent. Note:
        # If `ml_enabled` setting is set to false, then this intent is not taken into
        # account during inference in `ML ONLY` match mode. Also, auto-markup in the UI
        # is turned off. DEPRECATED! Please use `ml_disabled` field instead. NOTE: If
        # both `ml_enabled` and `ml_disabled` are either not set or false, then the
        # default value is determined as follows: - Before April 15th, 2018 the default
        # is: ml_enabled = false / ml_disabled = true. - After April 15th, 2018 the
        # default is: ml_enabled = true / ml_disabled = false.
        # Corresponds to the JSON property `mlEnabled`
        # @return [Boolean]
        attr_accessor :ml_enabled
        alias_method :ml_enabled?, :ml_enabled
      
        # Optional. The unique identifier of this intent. Required for Intents.
        # UpdateIntent and Intents.BatchUpdateIntents methods. Supported formats: - `
        # projects//agent/intents/` - `projects//locations//agent/intents/`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The collection of contexts that are activated when the intent is
        # matched. Context messages in this collection should not set the parameters
        # field. Setting the `lifespan_count` to 0 will reset the context when the
        # intent is matched. Format: `projects//agent/sessions/-/contexts/`.
        # Corresponds to the JSON property `outputContexts`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1Context>]
        attr_accessor :output_contexts
      
        # Optional. The collection of parameters associated with the intent.
        # Corresponds to the JSON property `parameters`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentParameter>]
        attr_accessor :parameters
      
        # Optional. The unique identifier of the parent intent in the chain of followup
        # intents. You can set this field when creating an intent, for example with
        # CreateIntent or BatchUpdateIntents, in order to make this intent a followup
        # intent. It identifies the parent followup intent. Format: `projects//agent/
        # intents/`.
        # Corresponds to the JSON property `parentFollowupIntentName`
        # @return [String]
        attr_accessor :parent_followup_intent_name
      
        # Optional. The priority of this intent. Higher numbers represent higher
        # priorities. - If the supplied value is unspecified or 0, the service
        # translates the value to 500,000, which corresponds to the `Normal` priority in
        # the console. - If the supplied value is negative, the intent is ignored in
        # runtime detect intent requests.
        # Corresponds to the JSON property `priority`
        # @return [Fixnum]
        attr_accessor :priority
      
        # Optional. Indicates whether to delete all contexts in the current session when
        # this intent is matched.
        # Corresponds to the JSON property `resetContexts`
        # @return [Boolean]
        attr_accessor :reset_contexts
        alias_method :reset_contexts?, :reset_contexts
      
        # Output only. The unique identifier of the root intent in the chain of followup
        # intents. It identifies the correct followup intents chain for this intent.
        # Format: `projects//agent/intents/`.
        # Corresponds to the JSON property `rootFollowupIntentName`
        # @return [String]
        attr_accessor :root_followup_intent_name
      
        # Optional. The collection of examples that the agent is trained on.
        # Corresponds to the JSON property `trainingPhrases`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentTrainingPhrase>]
        attr_accessor :training_phrases
      
        # Optional. Indicates whether webhooks are enabled for the intent.
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
      
      # Represents a single followup intent in the chain.
      class GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo
        include Google::Apis::Core::Hashable
      
        # The unique identifier of the followup intent. Format: `projects//agent/intents/
        # `.
        # Corresponds to the JSON property `followupIntentName`
        # @return [String]
        attr_accessor :followup_intent_name
      
        # The unique identifier of the followup intent's parent. Format: `projects//
        # agent/intents/`.
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
      
      # Corresponds to the `Response` field in the Dialogflow console.
      class GoogleCloudDialogflowV2beta1IntentMessage
        include Google::Apis::Core::Hashable
      
        # The basic card message. Useful for displaying information.
        # Corresponds to the JSON property `basicCard`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageBasicCard]
        attr_accessor :basic_card
      
        # Browse Carousel Card for Actions on Google. https://developers.google.com/
        # actions/assistant/responses#browsing_carousel
        # Corresponds to the JSON property `browseCarouselCard`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard]
        attr_accessor :browse_carousel_card
      
        # The card response message.
        # Corresponds to the JSON property `card`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageCard]
        attr_accessor :card
      
        # The card for presenting a carousel of options to select from.
        # Corresponds to the JSON property `carouselSelect`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect]
        attr_accessor :carousel_select
      
        # The image response message.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageImage]
        attr_accessor :image
      
        # The suggestion chip message that allows the user to jump out to the app or
        # website associated with this agent.
        # Corresponds to the JSON property `linkOutSuggestion`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion]
        attr_accessor :link_out_suggestion
      
        # The card for presenting a list of options to select from.
        # Corresponds to the JSON property `listSelect`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageListSelect]
        attr_accessor :list_select
      
        # The media content card for Actions on Google.
        # Corresponds to the JSON property `mediaContent`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageMediaContent]
        attr_accessor :media_content
      
        # A custom platform-specific response.
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # Optional. The platform that this message is intended for.
        # Corresponds to the JSON property `platform`
        # @return [String]
        attr_accessor :platform
      
        # The quick replies response message.
        # Corresponds to the JSON property `quickReplies`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageQuickReplies]
        attr_accessor :quick_replies
      
        # Carousel Rich Business Messaging (RBM) rich card. Rich cards allow you to
        # respond to users with more vivid content, e.g. with media and suggestions. If
        # you want to show a single card with more control over the layout, please use
        # RbmStandaloneCard instead.
        # Corresponds to the JSON property `rbmCarouselRichCard`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard]
        attr_accessor :rbm_carousel_rich_card
      
        # Standalone Rich Business Messaging (RBM) rich card. Rich cards allow you to
        # respond to users with more vivid content, e.g. with media and suggestions. You
        # can group multiple rich cards into one using RbmCarouselCard but carousel
        # cards will give you less control over the card layout.
        # Corresponds to the JSON property `rbmStandaloneRichCard`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard]
        attr_accessor :rbm_standalone_rich_card
      
        # Rich Business Messaging (RBM) text response with suggestions.
        # Corresponds to the JSON property `rbmText`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageRbmText]
        attr_accessor :rbm_text
      
        # The collection of simple response candidates. This message in `QueryResult.
        # fulfillment_messages` and `WebhookResponse.fulfillment_messages` should
        # contain only one `SimpleResponse`.
        # Corresponds to the JSON property `simpleResponses`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses]
        attr_accessor :simple_responses
      
        # The collection of suggestions.
        # Corresponds to the JSON property `suggestions`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageSuggestions]
        attr_accessor :suggestions
      
        # Table card for Actions on Google.
        # Corresponds to the JSON property `tableCard`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageTableCard]
        attr_accessor :table_card
      
        # Plays audio from a file in Telephony Gateway.
        # Corresponds to the JSON property `telephonyPlayAudio`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio]
        attr_accessor :telephony_play_audio
      
        # Synthesizes speech and plays back the synthesized audio to the caller in
        # Telephony Gateway. Telephony Gateway takes the synthesizer settings from `
        # DetectIntentResponse.output_audio_config` which can either be set at request-
        # level or can come from the agent-level synthesizer config.
        # Corresponds to the JSON property `telephonySynthesizeSpeech`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech]
        attr_accessor :telephony_synthesize_speech
      
        # Transfers the call in Telephony Gateway.
        # Corresponds to the JSON property `telephonyTransferCall`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall]
        attr_accessor :telephony_transfer_call
      
        # The text response message.
        # Corresponds to the JSON property `text`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageText]
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
      
      # The basic card message. Useful for displaying information.
      class GoogleCloudDialogflowV2beta1IntentMessageBasicCard
        include Google::Apis::Core::Hashable
      
        # Optional. The collection of card buttons.
        # Corresponds to the JSON property `buttons`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton>]
        attr_accessor :buttons
      
        # Required, unless image is present. The body text of the card.
        # Corresponds to the JSON property `formattedText`
        # @return [String]
        attr_accessor :formatted_text
      
        # The image response message.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageImage]
        attr_accessor :image
      
        # Optional. The subtitle of the card.
        # Corresponds to the JSON property `subtitle`
        # @return [String]
        attr_accessor :subtitle
      
        # Optional. The title of the card.
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
      
      # The button object that appears at the bottom of a card.
      class GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton
        include Google::Apis::Core::Hashable
      
        # Opens the given URI.
        # Corresponds to the JSON property `openUriAction`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction]
        attr_accessor :open_uri_action
      
        # Required. The title of the button.
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
      
      # Opens the given URI.
      class GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction
        include Google::Apis::Core::Hashable
      
        # Required. The HTTP or HTTPS scheme URI.
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
      
      # Browse Carousel Card for Actions on Google. https://developers.google.com/
      # actions/assistant/responses#browsing_carousel
      class GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard
        include Google::Apis::Core::Hashable
      
        # Optional. Settings for displaying the image. Applies to every image in items.
        # Corresponds to the JSON property `imageDisplayOptions`
        # @return [String]
        attr_accessor :image_display_options
      
        # Required. List of items in the Browse Carousel Card. Minimum of two items,
        # maximum of ten.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem>]
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
      
      # Browsing carousel tile
      class GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItem
        include Google::Apis::Core::Hashable
      
        # Optional. Description of the carousel item. Maximum of four lines of text.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Text that appears at the bottom of the Browse Carousel Card. Maximum
        # of one line of text.
        # Corresponds to the JSON property `footer`
        # @return [String]
        attr_accessor :footer
      
        # The image response message.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageImage]
        attr_accessor :image
      
        # Actions on Google action to open a given url.
        # Corresponds to the JSON property `openUriAction`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction]
        attr_accessor :open_uri_action
      
        # Required. Title of the carousel item. Maximum of two lines of text.
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
      
      # Actions on Google action to open a given url.
      class GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction
        include Google::Apis::Core::Hashable
      
        # Required. URL
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        # Optional. Specifies the type of viewer that is used when opening the URL.
        # Defaults to opening via web browser.
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
      
      # The card response message.
      class GoogleCloudDialogflowV2beta1IntentMessageCard
        include Google::Apis::Core::Hashable
      
        # Optional. The collection of card buttons.
        # Corresponds to the JSON property `buttons`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageCardButton>]
        attr_accessor :buttons
      
        # Optional. The public URI to an image file for the card.
        # Corresponds to the JSON property `imageUri`
        # @return [String]
        attr_accessor :image_uri
      
        # Optional. The subtitle of the card.
        # Corresponds to the JSON property `subtitle`
        # @return [String]
        attr_accessor :subtitle
      
        # Optional. The title of the card.
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
      
      # Optional. Contains information about a button.
      class GoogleCloudDialogflowV2beta1IntentMessageCardButton
        include Google::Apis::Core::Hashable
      
        # Optional. The text to send back to the Dialogflow API or a URI to open.
        # Corresponds to the JSON property `postback`
        # @return [String]
        attr_accessor :postback
      
        # Optional. The text to show on the button.
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
      
      # The card for presenting a carousel of options to select from.
      class GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect
        include Google::Apis::Core::Hashable
      
        # Required. Carousel items.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem>]
        attr_accessor :items
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
        end
      end
      
      # An item in the carousel.
      class GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem
        include Google::Apis::Core::Hashable
      
        # Optional. The body text of the card.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The image response message.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageImage]
        attr_accessor :image
      
        # Additional info about the select item for when it is triggered in a dialog.
        # Corresponds to the JSON property `info`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo]
        attr_accessor :info
      
        # Required. Title of the carousel item.
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
      
      # Column properties for TableCard.
      class GoogleCloudDialogflowV2beta1IntentMessageColumnProperties
        include Google::Apis::Core::Hashable
      
        # Required. Column heading.
        # Corresponds to the JSON property `header`
        # @return [String]
        attr_accessor :header
      
        # Optional. Defines text alignment for all cells in this column.
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
      
      # The image response message.
      class GoogleCloudDialogflowV2beta1IntentMessageImage
        include Google::Apis::Core::Hashable
      
        # A text description of the image to be used for accessibility, e.g., screen
        # readers. Required if image_uri is set for CarouselSelect.
        # Corresponds to the JSON property `accessibilityText`
        # @return [String]
        attr_accessor :accessibility_text
      
        # Optional. The public URI to an image file.
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
      
      # The suggestion chip message that allows the user to jump out to the app or
      # website associated with this agent.
      class GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion
        include Google::Apis::Core::Hashable
      
        # Required. The name of the app or site this chip is linking to.
        # Corresponds to the JSON property `destinationName`
        # @return [String]
        attr_accessor :destination_name
      
        # Required. The URI of the app or site to open when the user taps the suggestion
        # chip.
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
      
      # The card for presenting a list of options to select from.
      class GoogleCloudDialogflowV2beta1IntentMessageListSelect
        include Google::Apis::Core::Hashable
      
        # Required. List items.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageListSelectItem>]
        attr_accessor :items
      
        # Optional. Subtitle of the list.
        # Corresponds to the JSON property `subtitle`
        # @return [String]
        attr_accessor :subtitle
      
        # Optional. The overall title of the list.
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
      
      # An item in the list.
      class GoogleCloudDialogflowV2beta1IntentMessageListSelectItem
        include Google::Apis::Core::Hashable
      
        # Optional. The main text describing the item.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The image response message.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageImage]
        attr_accessor :image
      
        # Additional info about the select item for when it is triggered in a dialog.
        # Corresponds to the JSON property `info`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo]
        attr_accessor :info
      
        # Required. The title of the list item.
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
      
      # The media content card for Actions on Google.
      class GoogleCloudDialogflowV2beta1IntentMessageMediaContent
        include Google::Apis::Core::Hashable
      
        # Required. List of media objects.
        # Corresponds to the JSON property `mediaObjects`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject>]
        attr_accessor :media_objects
      
        # Optional. What type of media is the content (ie "audio").
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
      
      # Response media object for media content card.
      class GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject
        include Google::Apis::Core::Hashable
      
        # Required. Url where the media is stored.
        # Corresponds to the JSON property `contentUrl`
        # @return [String]
        attr_accessor :content_url
      
        # Optional. Description of media card.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The image response message.
        # Corresponds to the JSON property `icon`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageImage]
        attr_accessor :icon
      
        # The image response message.
        # Corresponds to the JSON property `largeImage`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageImage]
        attr_accessor :large_image
      
        # Required. Name of media card.
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
      
      # The quick replies response message.
      class GoogleCloudDialogflowV2beta1IntentMessageQuickReplies
        include Google::Apis::Core::Hashable
      
        # Optional. The collection of quick replies.
        # Corresponds to the JSON property `quickReplies`
        # @return [Array<String>]
        attr_accessor :quick_replies
      
        # Optional. The title of the collection of quick replies.
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
      
      # Rich Business Messaging (RBM) Card content
      class GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent
        include Google::Apis::Core::Hashable
      
        # Optional. Description of the card (at most 2000 bytes). At least one of the
        # title, description or media must be set.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Rich Business Messaging (RBM) Media displayed in Cards The following media-
        # types are currently supported: Image Types * image/jpeg * image/jpg' * image/
        # gif * image/png Video Types * video/h263 * video/m4v * video/mp4 * video/mpeg *
        # video/mpeg4 * video/webm
        # Corresponds to the JSON property `media`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia]
        attr_accessor :media
      
        # Optional. List of suggestions to include in the card.
        # Corresponds to the JSON property `suggestions`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion>]
        attr_accessor :suggestions
      
        # Optional. Title of the card (at most 200 bytes). At least one of the title,
        # description or media must be set.
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
      
      # Rich Business Messaging (RBM) Media displayed in Cards The following media-
      # types are currently supported: Image Types * image/jpeg * image/jpg' * image/
      # gif * image/png Video Types * video/h263 * video/m4v * video/mp4 * video/mpeg *
      # video/mpeg4 * video/webm
      class GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia
        include Google::Apis::Core::Hashable
      
        # Required. Publicly reachable URI of the file. The RBM platform determines the
        # MIME type of the file from the content-type field in the HTTP headers when the
        # platform fetches the file. The content-type field must be present and accurate
        # in the HTTP response from the URL.
        # Corresponds to the JSON property `fileUri`
        # @return [String]
        attr_accessor :file_uri
      
        # Required for cards with vertical orientation. The height of the media within a
        # rich card with a vertical layout. For a standalone card with horizontal layout,
        # height is not customizable, and this field is ignored.
        # Corresponds to the JSON property `height`
        # @return [String]
        attr_accessor :height
      
        # Optional. Publicly reachable URI of the thumbnail.If you don't provide a
        # thumbnail URI, the RBM platform displays a blank placeholder thumbnail until
        # the user's device downloads the file. Depending on the user's setting, the
        # file may not download automatically and may require the user to tap a download
        # button.
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
      
      # Carousel Rich Business Messaging (RBM) rich card. Rich cards allow you to
      # respond to users with more vivid content, e.g. with media and suggestions. If
      # you want to show a single card with more control over the layout, please use
      # RbmStandaloneCard instead.
      class GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard
        include Google::Apis::Core::Hashable
      
        # Required. The cards in the carousel. A carousel must have at least 2 cards and
        # at most 10.
        # Corresponds to the JSON property `cardContents`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent>]
        attr_accessor :card_contents
      
        # Required. The width of the cards in the carousel.
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
      
      # Standalone Rich Business Messaging (RBM) rich card. Rich cards allow you to
      # respond to users with more vivid content, e.g. with media and suggestions. You
      # can group multiple rich cards into one using RbmCarouselCard but carousel
      # cards will give you less control over the card layout.
      class GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard
        include Google::Apis::Core::Hashable
      
        # Rich Business Messaging (RBM) Card content
        # Corresponds to the JSON property `cardContent`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent]
        attr_accessor :card_content
      
        # Required. Orientation of the card.
        # Corresponds to the JSON property `cardOrientation`
        # @return [String]
        attr_accessor :card_orientation
      
        # Required if orientation is horizontal. Image preview alignment for standalone
        # cards with horizontal layout.
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
      
      # Rich Business Messaging (RBM) suggested client-side action that the user can
      # choose from the card.
      class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction
        include Google::Apis::Core::Hashable
      
        # Opens the user's default dialer app with the specified phone number but does
        # not dial automatically.
        # Corresponds to the JSON property `dial`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial]
        attr_accessor :dial
      
        # Opens the user's default web browser app to the specified uri If the user has
        # an app installed that is registered as the default handler for the URL, then
        # this app will be opened instead, and its icon will be used in the suggested
        # action UI.
        # Corresponds to the JSON property `openUrl`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri]
        attr_accessor :open_url
      
        # Opaque payload that the Dialogflow receives in a user event when the user taps
        # the suggested action. This data will be also forwarded to webhook to allow
        # performing custom business logic.
        # Corresponds to the JSON property `postbackData`
        # @return [String]
        attr_accessor :postback_data
      
        # Opens the device's location chooser so the user can pick a location to send
        # back to the agent.
        # Corresponds to the JSON property `shareLocation`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation]
        attr_accessor :share_location
      
        # Text to display alongside the action.
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
      
      # Opens the user's default dialer app with the specified phone number but does
      # not dial automatically.
      class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial
        include Google::Apis::Core::Hashable
      
        # Required. The phone number to fill in the default dialer app. This field
        # should be in [E.164](https://en.wikipedia.org/wiki/E.164) format. An example
        # of a correctly formatted phone number: +15556767888.
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
      
      # Opens the user's default web browser app to the specified uri If the user has
      # an app installed that is registered as the default handler for the URL, then
      # this app will be opened instead, and its icon will be used in the suggested
      # action UI.
      class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri
        include Google::Apis::Core::Hashable
      
        # Required. The uri to open on the user device
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
      
      # Opens the device's location chooser so the user can pick a location to send
      # back to the agent.
      class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Rich Business Messaging (RBM) suggested reply that the user can click instead
      # of typing in their own response.
      class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply
        include Google::Apis::Core::Hashable
      
        # Opaque payload that the Dialogflow receives in a user event when the user taps
        # the suggested reply. This data will be also forwarded to webhook to allow
        # performing custom business logic.
        # Corresponds to the JSON property `postbackData`
        # @return [String]
        attr_accessor :postback_data
      
        # Suggested reply text.
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
      
      # Rich Business Messaging (RBM) suggestion. Suggestions allow user to easily
      # select/click a predefined response or perform an action (like opening a web
      # uri).
      class GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion
        include Google::Apis::Core::Hashable
      
        # Rich Business Messaging (RBM) suggested client-side action that the user can
        # choose from the card.
        # Corresponds to the JSON property `action`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction]
        attr_accessor :action
      
        # Rich Business Messaging (RBM) suggested reply that the user can click instead
        # of typing in their own response.
        # Corresponds to the JSON property `reply`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedReply]
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
      
      # Rich Business Messaging (RBM) text response with suggestions.
      class GoogleCloudDialogflowV2beta1IntentMessageRbmText
        include Google::Apis::Core::Hashable
      
        # Optional. One or more suggestions to show to the user.
        # Corresponds to the JSON property `rbmSuggestion`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion>]
        attr_accessor :rbm_suggestion
      
        # Required. Text sent and displayed to the user.
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
      
      # Additional info about the select item for when it is triggered in a dialog.
      class GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo
        include Google::Apis::Core::Hashable
      
        # Required. A unique key that will be sent back to the agent if this response is
        # given.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Optional. A list of synonyms that can also be used to trigger this item in
        # dialog.
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
      
      # The simple response message containing speech or text.
      class GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse
        include Google::Apis::Core::Hashable
      
        # Optional. The text to display.
        # Corresponds to the JSON property `displayText`
        # @return [String]
        attr_accessor :display_text
      
        # One of text_to_speech or ssml must be provided. Structured spoken response to
        # the user in the SSML format. Mutually exclusive with text_to_speech.
        # Corresponds to the JSON property `ssml`
        # @return [String]
        attr_accessor :ssml
      
        # One of text_to_speech or ssml must be provided. The plain text of the speech
        # output. Mutually exclusive with ssml.
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
      
      # The collection of simple response candidates. This message in `QueryResult.
      # fulfillment_messages` and `WebhookResponse.fulfillment_messages` should
      # contain only one `SimpleResponse`.
      class GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses
        include Google::Apis::Core::Hashable
      
        # Required. The list of simple responses.
        # Corresponds to the JSON property `simpleResponses`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageSimpleResponse>]
        attr_accessor :simple_responses
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @simple_responses = args[:simple_responses] if args.key?(:simple_responses)
        end
      end
      
      # The suggestion chip message that the user can tap to quickly post a reply to
      # the conversation.
      class GoogleCloudDialogflowV2beta1IntentMessageSuggestion
        include Google::Apis::Core::Hashable
      
        # Required. The text shown the in the suggestion chip.
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
      
      # The collection of suggestions.
      class GoogleCloudDialogflowV2beta1IntentMessageSuggestions
        include Google::Apis::Core::Hashable
      
        # Required. The list of suggested replies.
        # Corresponds to the JSON property `suggestions`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageSuggestion>]
        attr_accessor :suggestions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @suggestions = args[:suggestions] if args.key?(:suggestions)
        end
      end
      
      # Table card for Actions on Google.
      class GoogleCloudDialogflowV2beta1IntentMessageTableCard
        include Google::Apis::Core::Hashable
      
        # Optional. List of buttons for the card.
        # Corresponds to the JSON property `buttons`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton>]
        attr_accessor :buttons
      
        # Optional. Display properties for the columns in this table.
        # Corresponds to the JSON property `columnProperties`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageColumnProperties>]
        attr_accessor :column_properties
      
        # The image response message.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageImage]
        attr_accessor :image
      
        # Optional. Rows in this table of data.
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageTableCardRow>]
        attr_accessor :rows
      
        # Optional. Subtitle to the title.
        # Corresponds to the JSON property `subtitle`
        # @return [String]
        attr_accessor :subtitle
      
        # Required. Title of the card.
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
      
      # Cell of TableCardRow.
      class GoogleCloudDialogflowV2beta1IntentMessageTableCardCell
        include Google::Apis::Core::Hashable
      
        # Required. Text in this cell.
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
      
      # Row of TableCard.
      class GoogleCloudDialogflowV2beta1IntentMessageTableCardRow
        include Google::Apis::Core::Hashable
      
        # Optional. List of cells that make up this row.
        # Corresponds to the JSON property `cells`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessageTableCardCell>]
        attr_accessor :cells
      
        # Optional. Whether to add a visual divider after this row.
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
      
      # Plays audio from a file in Telephony Gateway.
      class GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio
        include Google::Apis::Core::Hashable
      
        # Required. URI to a Google Cloud Storage object containing the audio to play, e.
        # g., "gs://bucket/object". The object must contain a single channel (mono) of
        # linear PCM audio (2 bytes / sample) at 8kHz. This object must be readable by
        # the `service-@gcp-sa-dialogflow.iam.gserviceaccount.com` service account where
        # is the number of the Telephony Gateway project (usually the same as the
        # Dialogflow agent project). If the Google Cloud Storage bucket is in the
        # Telephony Gateway project, this permission is added by default when enabling
        # the Dialogflow V2 API. For audio from other sources, consider using the `
        # TelephonySynthesizeSpeech` message with SSML.
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
      
      # Synthesizes speech and plays back the synthesized audio to the caller in
      # Telephony Gateway. Telephony Gateway takes the synthesizer settings from `
      # DetectIntentResponse.output_audio_config` which can either be set at request-
      # level or can come from the agent-level synthesizer config.
      class GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech
        include Google::Apis::Core::Hashable
      
        # The SSML to be synthesized. For more information, see [SSML](https://
        # developers.google.com/actions/reference/ssml).
        # Corresponds to the JSON property `ssml`
        # @return [String]
        attr_accessor :ssml
      
        # The raw text to be synthesized.
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
      
      # Transfers the call in Telephony Gateway.
      class GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall
        include Google::Apis::Core::Hashable
      
        # Required. The phone number to transfer the call to in [E.164 format](https://
        # en.wikipedia.org/wiki/E.164). We currently only allow transferring to US
        # numbers (+1xxxyyyzzzz).
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
      
      # The text response message.
      class GoogleCloudDialogflowV2beta1IntentMessageText
        include Google::Apis::Core::Hashable
      
        # Optional. The collection of the agent's responses.
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
      
      # Represents intent parameters.
      class GoogleCloudDialogflowV2beta1IntentParameter
        include Google::Apis::Core::Hashable
      
        # Optional. The default value to use when the `value` yields an empty result.
        # Default values can be extracted from contexts by using the following syntax: `#
        # context_name.parameter_name`.
        # Corresponds to the JSON property `defaultValue`
        # @return [String]
        attr_accessor :default_value
      
        # Required. The name of the parameter.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. The name of the entity type, prefixed with `@`, that describes
        # values of the parameter. If the parameter is required, this must be provided.
        # Corresponds to the JSON property `entityTypeDisplayName`
        # @return [String]
        attr_accessor :entity_type_display_name
      
        # Optional. Indicates whether the parameter represents a list of values.
        # Corresponds to the JSON property `isList`
        # @return [Boolean]
        attr_accessor :is_list
        alias_method :is_list?, :is_list
      
        # Optional. Indicates whether the parameter is required. That is, whether the
        # intent cannot be completed without collecting the parameter value.
        # Corresponds to the JSON property `mandatory`
        # @return [Boolean]
        attr_accessor :mandatory
        alias_method :mandatory?, :mandatory
      
        # The unique identifier of this parameter.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The collection of prompts that the agent can present to the user in
        # order to collect a value for the parameter.
        # Corresponds to the JSON property `prompts`
        # @return [Array<String>]
        attr_accessor :prompts
      
        # Optional. The definition of the parameter value. It can be: - a constant
        # string, - a parameter value defined as `$parameter_name`, - an original
        # parameter value defined as `$parameter_name.original`, - a parameter value
        # from some context defined as `#context_name.parameter_name`.
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
      
      # Represents an intent suggestion.
      class GoogleCloudDialogflowV2beta1IntentSuggestion
        include Google::Apis::Core::Hashable
      
        # Human readable description for better understanding an intent like its scope,
        # content, result etc. Maximum character limit: 140 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The display name of the intent.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The unique identifier of this intent. Format: `projects//locations//agent/
        # intents/`.
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
      
      # Represents an example that the agent is trained on.
      class GoogleCloudDialogflowV2beta1IntentTrainingPhrase
        include Google::Apis::Core::Hashable
      
        # Output only. The unique identifier of this training phrase.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The ordered list of training phrase parts. The parts are
        # concatenated in order to form the training phrase. Note: The API does not
        # automatically annotate training phrases like the Dialogflow Console does. Note:
        # Do not forget to include whitespace at part boundaries, so the training
        # phrase is well formatted when the parts are concatenated. If the training
        # phrase does not need to be annotated with parameters, you just need a single
        # part with only the Part.text field set. If you want to annotate the training
        # phrase, you must create multiple parts, where the fields of each part are
        # populated in one of two ways: - `Part.text` is set to a part of the phrase
        # that has no parameters. - `Part.text` is set to a part of the phrase that you
        # want to annotate, and the `entity_type`, `alias`, and `user_defined` fields
        # are all set.
        # Corresponds to the JSON property `parts`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart>]
        attr_accessor :parts
      
        # Optional. Indicates how many times this example was added to the intent. Each
        # time a developer adds an existing sample by editing an intent or training,
        # this counter is increased.
        # Corresponds to the JSON property `timesAddedCount`
        # @return [Fixnum]
        attr_accessor :times_added_count
      
        # Required. The type of the training phrase.
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
      
      # Represents a part of a training phrase.
      class GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart
        include Google::Apis::Core::Hashable
      
        # Optional. The parameter name for the value extracted from the annotated part
        # of the example. This field is required for annotated parts of the training
        # phrase.
        # Corresponds to the JSON property `alias`
        # @return [String]
        attr_accessor :alias
      
        # Optional. The entity type name prefixed with `@`. This field is required for
        # annotated parts of the training phrase.
        # Corresponds to the JSON property `entityType`
        # @return [String]
        attr_accessor :entity_type
      
        # Required. The text for this part.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # Optional. Indicates whether the text was manually annotated. This field is set
        # to true when the Dialogflow Console is used to manually annotate the part.
        # When creating an annotated part with the API, you must set this to true.
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
      
      # Represents the result of querying a Knowledge base.
      class GoogleCloudDialogflowV2beta1KnowledgeAnswers
        include Google::Apis::Core::Hashable
      
        # A list of answers from Knowledge Connector.
        # Corresponds to the JSON property `answers`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer>]
        attr_accessor :answers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answers = args[:answers] if args.key?(:answers)
        end
      end
      
      # An answer from Knowledge Connector.
      class GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer
        include Google::Apis::Core::Hashable
      
        # The piece of text from the `source` knowledge base document that answers this
        # conversational query.
        # Corresponds to the JSON property `answer`
        # @return [String]
        attr_accessor :answer
      
        # The corresponding FAQ question if the answer was extracted from a FAQ Document,
        # empty otherwise.
        # Corresponds to the JSON property `faqQuestion`
        # @return [String]
        attr_accessor :faq_question
      
        # The system's confidence score that this Knowledge answer is a good match for
        # this conversational query. The range is from 0.0 (completely uncertain) to 1.0
        # (completely certain). Note: The confidence score is likely to vary somewhat (
        # possibly even for identical requests), as the underlying model is under
        # constant improvement. It may be deprecated in the future. We recommend using `
        # match_confidence_level` which should be generally more stable.
        # Corresponds to the JSON property `matchConfidence`
        # @return [Float]
        attr_accessor :match_confidence
      
        # The system's confidence level that this knowledge answer is a good match for
        # this conversational query. NOTE: The confidence level for a given `` pair may
        # change without notice, as it depends on models that are constantly being
        # improved. However, it will change less frequently than the confidence score
        # below, and should be preferred for referencing the quality of an answer.
        # Corresponds to the JSON property `matchConfidenceLevel`
        # @return [String]
        attr_accessor :match_confidence_level
      
        # Indicates which Knowledge Document this answer was extracted from. Format: `
        # projects//knowledgeBases//documents/`.
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
      
      # Metadata in google::longrunning::Operation for Knowledge operations.
      class GoogleCloudDialogflowV2beta1KnowledgeOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Metadata related to the Export Data Operations (e.g. ExportDocument).
        # Corresponds to the JSON property `exportOperationMetadata`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1ExportOperationMetadata]
        attr_accessor :export_operation_metadata
      
        # The name of the knowledge base interacted with during the operation.
        # Corresponds to the JSON property `knowledgeBase`
        # @return [String]
        attr_accessor :knowledge_base
      
        # Required. Output only. The current state of this operation.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @export_operation_metadata = args[:export_operation_metadata] if args.key?(:export_operation_metadata)
          @knowledge_base = args[:knowledge_base] if args.key?(:knowledge_base)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Represents a message posted into a conversation.
      class GoogleCloudDialogflowV2beta1Message
        include Google::Apis::Core::Hashable
      
        # Required. The message content.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # Output only. The time when the message was created in Contact Center AI.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. The message language. This should be a [BCP-47](https://www.rfc-
        # editor.org/rfc/bcp/bcp47.txt) language tag. Example: "en-US".
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Represents the result of annotation for the message.
        # Corresponds to the JSON property `messageAnnotation`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1MessageAnnotation]
        attr_accessor :message_annotation
      
        # Optional. The unique identifier of the message. Format: `projects//locations//
        # conversations//messages/`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The participant that sends this message.
        # Corresponds to the JSON property `participant`
        # @return [String]
        attr_accessor :participant
      
        # Output only. The role of the participant.
        # Corresponds to the JSON property `participantRole`
        # @return [String]
        attr_accessor :participant_role
      
        # Optional. The time when the message was sent.
        # Corresponds to the JSON property `sendTime`
        # @return [String]
        attr_accessor :send_time
      
        # The result of sentiment analysis. Sentiment analysis inspects user input and
        # identifies the prevailing subjective opinion, especially to determine a user's
        # attitude as positive, negative, or neutral. For Participants.DetectIntent, it
        # needs to be configured in DetectIntentRequest.query_params. For Participants.
        # StreamingDetectIntent, it needs to be configured in
        # StreamingDetectIntentRequest.query_params. And for Participants.AnalyzeContent
        # and Participants.StreamingAnalyzeContent, it needs to be configured in
        # ConversationProfile.human_agent_assistant_config
        # Corresponds to the JSON property `sentimentAnalysis`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1SentimentAnalysisResult]
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
      
      # Represents the result of annotation for the message.
      class GoogleCloudDialogflowV2beta1MessageAnnotation
        include Google::Apis::Core::Hashable
      
        # Required. Indicates whether the text message contains entities.
        # Corresponds to the JSON property `containEntities`
        # @return [Boolean]
        attr_accessor :contain_entities
        alias_method :contain_entities?, :contain_entities
      
        # Optional. The collection of annotated message parts ordered by their position
        # in the message. You can recover the annotated message by concatenating [
        # AnnotatedMessagePart.text].
        # Corresponds to the JSON property `parts`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1AnnotatedMessagePart>]
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
      
      # Represents the contents of the original request that was passed to the `[
      # Streaming]DetectIntent` call.
      class GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest
        include Google::Apis::Core::Hashable
      
        # Optional. This field is set to the value of the `QueryParameters.payload`
        # field passed in the request. Some integrations that query a Dialogflow agent
        # may provide additional information in the payload. In particular, for the
        # Dialogflow Phone Gateway integration, this field has the form: ` "telephony": `
        # "caller_id": "+18558363987" ` ` Note: The caller ID field (`caller_id`) will
        # be redacted for Trial Edition agents and populated with the caller ID in [E.
        # 164 format](https://en.wikipedia.org/wiki/E.164) for Essentials Edition agents.
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # The source of this request, e.g., `google`, `facebook`, `slack`. It is set by
        # Dialogflow-owned servers.
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        # Optional. The version of the protocol used for this request. This field is AoG-
        # specific.
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
      
      # Represents the result of conversational query or event processing.
      class GoogleCloudDialogflowV2beta1QueryResult
        include Google::Apis::Core::Hashable
      
        # The action name from the matched intent.
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # This field is set to: - `false` if the matched intent has required parameters
        # and not all of the required parameter values have been collected. - `true` if
        # all required parameter values have been collected, or if the matched intent
        # doesn't contain any required parameters.
        # Corresponds to the JSON property `allRequiredParamsPresent`
        # @return [Boolean]
        attr_accessor :all_required_params_present
        alias_method :all_required_params_present?, :all_required_params_present
      
        # Indicates whether the conversational query triggers a cancellation for slot
        # filling. For more information, see the [cancel slot filling documentation](
        # https://cloud.google.com/dialogflow/es/docs/intents-actions-parameters#cancel).
        # Corresponds to the JSON property `cancelsSlotFilling`
        # @return [Boolean]
        attr_accessor :cancels_slot_filling
        alias_method :cancels_slot_filling?, :cancels_slot_filling
      
        # Free-form diagnostic information for the associated detect intent request. The
        # fields of this data can change without notice, so you should not write code
        # that depends on its structure. The data may contain: - webhook call latency -
        # webhook errors
        # Corresponds to the JSON property `diagnosticInfo`
        # @return [Hash<String,Object>]
        attr_accessor :diagnostic_info
      
        # The collection of rich messages to present to the user.
        # Corresponds to the JSON property `fulfillmentMessages`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessage>]
        attr_accessor :fulfillment_messages
      
        # The text to be pronounced to the user or shown on the screen. Note: This is a
        # legacy field, `fulfillment_messages` should be preferred.
        # Corresponds to the JSON property `fulfillmentText`
        # @return [String]
        attr_accessor :fulfillment_text
      
        # An intent categorizes an end-user's intention for one conversation turn. For
        # each agent, you define many intents, where your combined intents can handle a
        # complete conversation. When an end-user writes or says something, referred to
        # as an end-user expression or end-user input, Dialogflow matches the end-user
        # input to the best intent in your agent. Matching an intent is also known as
        # intent classification. For more information, see the [intent guide](https://
        # cloud.google.com/dialogflow/docs/intents-overview).
        # Corresponds to the JSON property `intent`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1Intent]
        attr_accessor :intent
      
        # The intent detection confidence. Values range from 0.0 (completely uncertain)
        # to 1.0 (completely certain). This value is for informational purpose only and
        # is only used to help match the best intent within the classification threshold.
        # This value may change for the same end-user expression at any time due to a
        # model retraining or change in implementation. If there are `multiple
        # knowledge_answers` messages, this value is set to the greatest `
        # knowledgeAnswers.match_confidence` value in the list.
        # Corresponds to the JSON property `intentDetectionConfidence`
        # @return [Float]
        attr_accessor :intent_detection_confidence
      
        # Represents the result of querying a Knowledge base.
        # Corresponds to the JSON property `knowledgeAnswers`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1KnowledgeAnswers]
        attr_accessor :knowledge_answers
      
        # The language that was triggered during intent detection. See [Language Support]
        # (https://cloud.google.com/dialogflow/docs/reference/language) for a list of
        # the currently supported language codes.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # The collection of output contexts. If applicable, `output_contexts.parameters`
        # contains entries with name `.original` containing the original parameter
        # values before the query.
        # Corresponds to the JSON property `outputContexts`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1Context>]
        attr_accessor :output_contexts
      
        # The collection of extracted parameters. Depending on your protocol or client
        # library language, this is a map, associative array, symbol table, dictionary,
        # or JSON object composed of a collection of (MapKey, MapValue) pairs: - MapKey
        # type: string - MapKey value: parameter name - MapValue type: - If parameter's
        # entity type is a composite entity: map - Else: depending on parameter value
        # type, could be one of string, number, boolean, null, list or map - MapValue
        # value: - If parameter's entity type is a composite entity: map from composite
        # entity property names to property values - Else: parameter value
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,Object>]
        attr_accessor :parameters
      
        # The original conversational query text: - If natural language text was
        # provided as input, `query_text` contains a copy of the input. - If natural
        # language speech audio was provided as input, `query_text` contains the speech
        # recognition result. If speech recognizer produced multiple alternatives, a
        # particular one is picked. - If automatic spell correction is enabled, `
        # query_text` will contain the corrected user input.
        # Corresponds to the JSON property `queryText`
        # @return [String]
        attr_accessor :query_text
      
        # The result of sentiment analysis. Sentiment analysis inspects user input and
        # identifies the prevailing subjective opinion, especially to determine a user's
        # attitude as positive, negative, or neutral. For Participants.DetectIntent, it
        # needs to be configured in DetectIntentRequest.query_params. For Participants.
        # StreamingDetectIntent, it needs to be configured in
        # StreamingDetectIntentRequest.query_params. And for Participants.AnalyzeContent
        # and Participants.StreamingAnalyzeContent, it needs to be configured in
        # ConversationProfile.human_agent_assistant_config
        # Corresponds to the JSON property `sentimentAnalysisResult`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1SentimentAnalysisResult]
        attr_accessor :sentiment_analysis_result
      
        # The Speech recognition confidence between 0.0 and 1.0. A higher number
        # indicates an estimated greater likelihood that the recognized words are
        # correct. The default of 0.0 is a sentinel value indicating that confidence was
        # not set. This field is not guaranteed to be accurate or set. In particular
        # this field isn't set for StreamingDetectIntent since the streaming endpoint
        # has separate confidence estimates per portion of the audio in
        # StreamingRecognitionResult.
        # Corresponds to the JSON property `speechRecognitionConfidence`
        # @return [Float]
        attr_accessor :speech_recognition_confidence
      
        # If the query was fulfilled by a webhook call, this field is set to the value
        # of the `payload` field returned in the webhook response.
        # Corresponds to the JSON property `webhookPayload`
        # @return [Hash<String,Object>]
        attr_accessor :webhook_payload
      
        # If the query was fulfilled by a webhook call, this field is set to the value
        # of the `source` field returned in the webhook response.
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
      
      # The sentiment, such as positive/negative feeling or association, for a unit of
      # analysis, such as the query text. See: https://cloud.google.com/natural-
      # language/docs/basics#interpreting_sentiment_analysis_values for how to
      # interpret the result.
      class GoogleCloudDialogflowV2beta1Sentiment
        include Google::Apis::Core::Hashable
      
        # A non-negative number in the [0, +inf) range, which represents the absolute
        # magnitude of sentiment, regardless of score (positive or negative).
        # Corresponds to the JSON property `magnitude`
        # @return [Float]
        attr_accessor :magnitude
      
        # Sentiment score between -1.0 (negative sentiment) and 1.0 (positive sentiment).
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
      
      # The result of sentiment analysis. Sentiment analysis inspects user input and
      # identifies the prevailing subjective opinion, especially to determine a user's
      # attitude as positive, negative, or neutral. For Participants.DetectIntent, it
      # needs to be configured in DetectIntentRequest.query_params. For Participants.
      # StreamingDetectIntent, it needs to be configured in
      # StreamingDetectIntentRequest.query_params. And for Participants.AnalyzeContent
      # and Participants.StreamingAnalyzeContent, it needs to be configured in
      # ConversationProfile.human_agent_assistant_config
      class GoogleCloudDialogflowV2beta1SentimentAnalysisResult
        include Google::Apis::Core::Hashable
      
        # The sentiment, such as positive/negative feeling or association, for a unit of
        # analysis, such as the query text. See: https://cloud.google.com/natural-
        # language/docs/basics#interpreting_sentiment_analysis_values for how to
        # interpret the result.
        # Corresponds to the JSON property `queryTextSentiment`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1Sentiment]
        attr_accessor :query_text_sentiment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @query_text_sentiment = args[:query_text_sentiment] if args.key?(:query_text_sentiment)
        end
      end
      
      # A session represents a conversation between a Dialogflow agent and an end-user.
      # You can create special entities, called session entities, during a session.
      # Session entities can extend or replace custom entity types and only exist
      # during the session that they were created for. All session data, including
      # session entities, is stored by Dialogflow for 20 minutes. For more information,
      # see the [session entity guide](https://cloud.google.com/dialogflow/docs/
      # entities-session).
      class GoogleCloudDialogflowV2beta1SessionEntityType
        include Google::Apis::Core::Hashable
      
        # Required. The collection of entities associated with this session entity type.
        # Corresponds to the JSON property `entities`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1EntityTypeEntity>]
        attr_accessor :entities
      
        # Required. Indicates whether the additional data should override or supplement
        # the custom entity type definition.
        # Corresponds to the JSON property `entityOverrideMode`
        # @return [String]
        attr_accessor :entity_override_mode
      
        # Required. The unique identifier of this session entity type. Supported formats:
        # - `projects//agent/sessions//entityTypes/` - `projects//locations//agent/
        # sessions//entityTypes/` - `projects//agent/environments//users//sessions//
        # entityTypes/` - `projects//locations//agent/environments/ /users//sessions//
        # entityTypes/` If `Location ID` is not specified we assume default 'us'
        # location. If `Environment ID` is not specified, we assume default 'draft'
        # environment. If `User ID` is not specified, we assume default '-' user. ``
        # must be the display name of an existing entity type in the same agent that
        # will be overridden or supplemented.
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
      
      # Metadata for a ConversationProfile.SetSuggestionFeatureConfig operation.
      class GoogleCloudDialogflowV2beta1SetSuggestionFeatureConfigOperationMetadata
        include Google::Apis::Core::Hashable
      
        # The resource name of the conversation profile. Format: `projects//locations//
        # conversationProfiles/`
        # Corresponds to the JSON property `conversationProfile`
        # @return [String]
        attr_accessor :conversation_profile
      
        # Timestamp whe the request was created. The time is measured on server side.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. The participant role to add or update the suggestion feature config.
        # Only HUMAN_AGENT or END_USER can be used.
        # Corresponds to the JSON property `participantRole`
        # @return [String]
        attr_accessor :participant_role
      
        # Required. The type of the suggestion feature to add or update.
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
      
      # Represents a smart reply answer.
      class GoogleCloudDialogflowV2beta1SmartReplyAnswer
        include Google::Apis::Core::Hashable
      
        # The name of answer record, in the format of "projects//locations//
        # answerRecords/"
        # Corresponds to the JSON property `answerRecord`
        # @return [String]
        attr_accessor :answer_record
      
        # Smart reply confidence. The system's confidence score that this reply is a
        # good match for this conversation, as a value from 0.0 (completely uncertain)
        # to 1.0 (completely certain).
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # The content of the reply.
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
      
      # The response message for Participants.SuggestArticles.
      class GoogleCloudDialogflowV2beta1SuggestArticlesResponse
        include Google::Apis::Core::Hashable
      
        # Output only. Articles ordered by score in descending order.
        # Corresponds to the JSON property `articleAnswers`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1ArticleAnswer>]
        attr_accessor :article_answers
      
        # Number of messages prior to and including latest_message to compile the
        # suggestion. It may be smaller than the SuggestArticlesResponse.context_size
        # field in the request if there aren't that many messages in the conversation.
        # Corresponds to the JSON property `contextSize`
        # @return [Fixnum]
        attr_accessor :context_size
      
        # The name of the latest conversation message used to compile suggestion for.
        # Format: `projects//locations//conversations//messages/`.
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
      
      # The response message for Participants.SuggestDialogflowAssists.
      class GoogleCloudDialogflowV2beta1SuggestDialogflowAssistsResponse
        include Google::Apis::Core::Hashable
      
        # Number of messages prior to and including latest_message to compile the
        # suggestion. It may be smaller than the SuggestDialogflowAssistsRequest.
        # context_size field in the request if there aren't that many messages in the
        # conversation.
        # Corresponds to the JSON property `contextSize`
        # @return [Fixnum]
        attr_accessor :context_size
      
        # Output only. Multiple reply options provided by Dialogflow assist service. The
        # order is based on the rank of the model prediction.
        # Corresponds to the JSON property `dialogflowAssistAnswers`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1DialogflowAssistAnswer>]
        attr_accessor :dialogflow_assist_answers
      
        # The name of the latest conversation message used to suggest answer. Format: `
        # projects//locations//conversations//messages/`.
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
      
      # The request message for Participants.SuggestFaqAnswers.
      class GoogleCloudDialogflowV2beta1SuggestFaqAnswersResponse
        include Google::Apis::Core::Hashable
      
        # Number of messages prior to and including latest_message to compile the
        # suggestion. It may be smaller than the SuggestFaqAnswersRequest.context_size
        # field in the request if there aren't that many messages in the conversation.
        # Corresponds to the JSON property `contextSize`
        # @return [Fixnum]
        attr_accessor :context_size
      
        # Output only. Answers extracted from FAQ documents.
        # Corresponds to the JSON property `faqAnswers`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1FaqAnswer>]
        attr_accessor :faq_answers
      
        # The name of the latest conversation message used to compile suggestion for.
        # Format: `projects//locations//conversations//messages/`.
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
      
      # The response message for Participants.SuggestSmartReplies.
      class GoogleCloudDialogflowV2beta1SuggestSmartRepliesResponse
        include Google::Apis::Core::Hashable
      
        # Number of messages prior to and including latest_message to compile the
        # suggestion. It may be smaller than the SuggestSmartRepliesRequest.context_size
        # field in the request if there aren't that many messages in the conversation.
        # Corresponds to the JSON property `contextSize`
        # @return [Fixnum]
        attr_accessor :context_size
      
        # The name of the latest conversation message used to compile suggestion for.
        # Format: `projects//locations//conversations//messages/`.
        # Corresponds to the JSON property `latestMessage`
        # @return [String]
        attr_accessor :latest_message
      
        # Output only. Multiple reply options provided by smart reply service. The order
        # is based on the rank of the model prediction. The maximum number of the
        # returned replies is set in SmartReplyConfig.
        # Corresponds to the JSON property `smartReplyAnswers`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1SmartReplyAnswer>]
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
      
      # One response of different type of suggestion response which is used in the
      # response of Participants.AnalyzeContent and Participants.AnalyzeContent, as
      # well as HumanAgentAssistantEvent.
      class GoogleCloudDialogflowV2beta1SuggestionResult
        include Google::Apis::Core::Hashable
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::DialogflowV3beta1::GoogleRpcStatus]
        attr_accessor :error
      
        # The response message for Participants.SuggestArticles.
        # Corresponds to the JSON property `suggestArticlesResponse`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1SuggestArticlesResponse]
        attr_accessor :suggest_articles_response
      
        # The response message for Participants.SuggestDialogflowAssists.
        # Corresponds to the JSON property `suggestDialogflowAssistsResponse`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1SuggestDialogflowAssistsResponse]
        attr_accessor :suggest_dialogflow_assists_response
      
        # The request message for Participants.SuggestFaqAnswers.
        # Corresponds to the JSON property `suggestFaqAnswersResponse`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1SuggestFaqAnswersResponse]
        attr_accessor :suggest_faq_answers_response
      
        # The response message for Participants.SuggestSmartReplies.
        # Corresponds to the JSON property `suggestSmartRepliesResponse`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1SuggestSmartRepliesResponse]
        attr_accessor :suggest_smart_replies_response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error = args[:error] if args.key?(:error)
          @suggest_articles_response = args[:suggest_articles_response] if args.key?(:suggest_articles_response)
          @suggest_dialogflow_assists_response = args[:suggest_dialogflow_assists_response] if args.key?(:suggest_dialogflow_assists_response)
          @suggest_faq_answers_response = args[:suggest_faq_answers_response] if args.key?(:suggest_faq_answers_response)
          @suggest_smart_replies_response = args[:suggest_smart_replies_response] if args.key?(:suggest_smart_replies_response)
        end
      end
      
      # The request message for a webhook call.
      class GoogleCloudDialogflowV2beta1WebhookRequest
        include Google::Apis::Core::Hashable
      
        # Alternative query results from KnowledgeService.
        # Corresponds to the JSON property `alternativeQueryResults`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1QueryResult>]
        attr_accessor :alternative_query_results
      
        # Represents the contents of the original request that was passed to the `[
        # Streaming]DetectIntent` call.
        # Corresponds to the JSON property `originalDetectIntentRequest`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest]
        attr_accessor :original_detect_intent_request
      
        # Represents the result of conversational query or event processing.
        # Corresponds to the JSON property `queryResult`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1QueryResult]
        attr_accessor :query_result
      
        # The unique identifier of the response. Contains the same value as `[Streaming]
        # DetectIntentResponse.response_id`.
        # Corresponds to the JSON property `responseId`
        # @return [String]
        attr_accessor :response_id
      
        # The unique identifier of detectIntent request session. Can be used to identify
        # end-user inside webhook implementation. Supported formats: - `projects//agent/
        # sessions/, - `projects//locations//agent/sessions/`, - `projects//agent/
        # environments//users//sessions/`, - `projects//locations//agent/environments//
        # users//sessions/`,
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
      
      # The response message for a webhook call. This response is validated by the
      # Dialogflow server. If validation fails, an error will be returned in the
      # QueryResult.diagnostic_info field. Setting JSON fields to an empty value with
      # the wrong type is a common error. To avoid this error: - Use `""` for empty
      # strings - Use ```` or `null` for empty objects - Use `[]` or `null` for empty
      # arrays For more information, see the [Protocol Buffers Language Guide](https://
      # developers.google.com/protocol-buffers/docs/proto3#json).
      class GoogleCloudDialogflowV2beta1WebhookResponse
        include Google::Apis::Core::Hashable
      
        # Optional. Indicates that this intent ends an interaction. Some integrations (e.
        # g., Actions on Google or Dialogflow phone gateway) use this information to
        # close interaction with an end user. Default is false.
        # Corresponds to the JSON property `endInteraction`
        # @return [Boolean]
        attr_accessor :end_interaction
        alias_method :end_interaction?, :end_interaction
      
        # Events allow for matching intents by event name instead of the natural
        # language input. For instance, input `` can trigger a personalized welcome
        # response. The parameter `name` may be used by the agent in the response: `"
        # Hello #welcome_event.name! What can I do for you today?"`.
        # Corresponds to the JSON property `followupEventInput`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1EventInput]
        attr_accessor :followup_event_input
      
        # Optional. The rich response messages intended for the end-user. When provided,
        # Dialogflow uses this field to populate QueryResult.fulfillment_messages sent
        # to the integration or API caller.
        # Corresponds to the JSON property `fulfillmentMessages`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1IntentMessage>]
        attr_accessor :fulfillment_messages
      
        # Optional. The text response message intended for the end-user. It is
        # recommended to use `fulfillment_messages.text.text[0]` instead. When provided,
        # Dialogflow uses this field to populate QueryResult.fulfillment_text sent to
        # the integration or API caller.
        # Corresponds to the JSON property `fulfillmentText`
        # @return [String]
        attr_accessor :fulfillment_text
      
        # Indicates that a live agent should be brought in to handle the interaction
        # with the user. In most cases, when you set this flag to true, you would also
        # want to set end_interaction to true as well. Default is false.
        # Corresponds to the JSON property `liveAgentHandoff`
        # @return [Boolean]
        attr_accessor :live_agent_handoff
        alias_method :live_agent_handoff?, :live_agent_handoff
      
        # Optional. The collection of output contexts that will overwrite currently
        # active contexts for the session and reset their lifespans. When provided,
        # Dialogflow uses this field to populate QueryResult.output_contexts sent to the
        # integration or API caller.
        # Corresponds to the JSON property `outputContexts`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1Context>]
        attr_accessor :output_contexts
      
        # Optional. This field can be used to pass custom data from your webhook to the
        # integration or API caller. Arbitrary JSON objects are supported. When provided,
        # Dialogflow uses this field to populate QueryResult.webhook_payload sent to
        # the integration or API caller. This field is also used by the [Google
        # Assistant integration](https://cloud.google.com/dialogflow/docs/integrations/
        # aog) for rich response messages. See the format definition at [Google
        # Assistant Dialogflow webhook format](https://developers.google.com/assistant/
        # actions/build/json/dialogflow-webhook-json)
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # Optional. Additional session entity types to replace or extend developer
        # entity types with. The entity synonyms apply to all languages and persist for
        # the session. Setting this data from a webhook overwrites the session entity
        # types that have been set using `detectIntent`, `streamingDetectIntent` or
        # SessionEntityType management methods.
        # Corresponds to the JSON property `sessionEntityTypes`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV2beta1SessionEntityType>]
        attr_accessor :session_entity_types
      
        # Optional. A custom field used to identify the webhook source. Arbitrary
        # strings are supported. When provided, Dialogflow uses this field to populate
        # QueryResult.webhook_source sent to the integration or API caller.
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
      
      # This message is used to hold all the Conversation Signals data, which will be
      # converted to JSON and exported to BigQuery.
      class GoogleCloudDialogflowV3alpha1ConversationSignals
        include Google::Apis::Core::Hashable
      
        # Collection of all signals that were extracted for a single turn of the
        # conversation.
        # Corresponds to the JSON property `turnSignals`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV3alpha1TurnSignals]
        attr_accessor :turn_signals
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @turn_signals = args[:turn_signals] if args.key?(:turn_signals)
        end
      end
      
      # Metadata for CreateDocument operation.
      class GoogleCloudDialogflowV3alpha1CreateDocumentOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Metadata in google::longrunning::Operation for Knowledge operations.
        # Corresponds to the JSON property `genericMetadata`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata]
        attr_accessor :generic_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @generic_metadata = args[:generic_metadata] if args.key?(:generic_metadata)
        end
      end
      
      # Metadata for DeleteDocument operation.
      class GoogleCloudDialogflowV3alpha1DeleteDocumentOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Metadata in google::longrunning::Operation for Knowledge operations.
        # Corresponds to the JSON property `genericMetadata`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata]
        attr_accessor :generic_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @generic_metadata = args[:generic_metadata] if args.key?(:generic_metadata)
        end
      end
      
      # Metadata in google::longrunning::Operation for Knowledge operations.
      class GoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Required. Output only. The current state of this operation.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Metadata for ImportDocuments operation.
      class GoogleCloudDialogflowV3alpha1ImportDocumentsOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Metadata in google::longrunning::Operation for Knowledge operations.
        # Corresponds to the JSON property `genericMetadata`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata]
        attr_accessor :generic_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @generic_metadata = args[:generic_metadata] if args.key?(:generic_metadata)
        end
      end
      
      # Response message for Documents.ImportDocuments.
      class GoogleCloudDialogflowV3alpha1ImportDocumentsResponse
        include Google::Apis::Core::Hashable
      
        # Includes details about skipped documents or any other warnings.
        # Corresponds to the JSON property `warnings`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleRpcStatus>]
        attr_accessor :warnings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @warnings = args[:warnings] if args.key?(:warnings)
        end
      end
      
      # Metadata for ReloadDocument operation.
      class GoogleCloudDialogflowV3alpha1ReloadDocumentOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Metadata in google::longrunning::Operation for Knowledge operations.
        # Corresponds to the JSON property `genericMetadata`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata]
        attr_accessor :generic_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @generic_metadata = args[:generic_metadata] if args.key?(:generic_metadata)
        end
      end
      
      # Collection of all signals that were extracted for a single turn of the
      # conversation.
      class GoogleCloudDialogflowV3alpha1TurnSignals
        include Google::Apis::Core::Hashable
      
        # Whether agent responded with LiveAgentHandoff fulfillment.
        # Corresponds to the JSON property `agentEscalated`
        # @return [Boolean]
        attr_accessor :agent_escalated
        alias_method :agent_escalated?, :agent_escalated
      
        # Whether user was using DTMF input.
        # Corresponds to the JSON property `dtmfUsed`
        # @return [Boolean]
        attr_accessor :dtmf_used
        alias_method :dtmf_used?, :dtmf_used
      
        # Failure reasons of the turn.
        # Corresponds to the JSON property `failureReasons`
        # @return [Array<String>]
        attr_accessor :failure_reasons
      
        # Whether NLU predicted NO_MATCH.
        # Corresponds to the JSON property `noMatch`
        # @return [Boolean]
        attr_accessor :no_match
        alias_method :no_match?, :no_match
      
        # Whether user provided no input.
        # Corresponds to the JSON property `noUserInput`
        # @return [Boolean]
        attr_accessor :no_user_input
        alias_method :no_user_input?, :no_user_input
      
        # Whether turn resulted in End Session page.
        # Corresponds to the JSON property `reachedEndPage`
        # @return [Boolean]
        attr_accessor :reached_end_page
        alias_method :reached_end_page?, :reached_end_page
      
        # Sentiment magnitude of the user utterance if [sentiment](https://cloud.google.
        # com/dialogflow/cx/docs/concept/sentiment) was enabled.
        # Corresponds to the JSON property `sentimentMagnitude`
        # @return [Float]
        attr_accessor :sentiment_magnitude
      
        # Sentiment score of the user utterance if [sentiment](https://cloud.google.com/
        # dialogflow/cx/docs/concept/sentiment) was enabled.
        # Corresponds to the JSON property `sentimentScore`
        # @return [Float]
        attr_accessor :sentiment_score
      
        # Whether agent has triggered the event corresponding to user abandoning the
        # conversation.
        # Corresponds to the JSON property `triggeredAbandonmentEvent`
        # @return [Boolean]
        attr_accessor :triggered_abandonment_event
        alias_method :triggered_abandonment_event?, :triggered_abandonment_event
      
        # Whether user was specifically asking for a live agent.
        # Corresponds to the JSON property `userEscalated`
        # @return [Boolean]
        attr_accessor :user_escalated
        alias_method :user_escalated?, :user_escalated
      
        # Human-readable statuses of the webhooks triggered during this turn.
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
      
      # Metadata for UpdateDocument operation.
      class GoogleCloudDialogflowV3alpha1UpdateDocumentOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Metadata in google::longrunning::Operation for Knowledge operations.
        # Corresponds to the JSON property `genericMetadata`
        # @return [Google::Apis::DialogflowV3beta1::GoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata]
        attr_accessor :generic_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @generic_metadata = args[:generic_metadata] if args.key?(:generic_metadata)
        end
      end
      
      # The response message for Locations.ListLocations.
      class GoogleCloudLocationListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleCloudLocationLocation>]
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
      
      # A resource that represents a Google Cloud location.
      class GoogleCloudLocationLocation
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
      
      # The response message for Operations.ListOperations.
      class GoogleLongrunningListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::DialogflowV3beta1::GoogleLongrunningOperation>]
        attr_accessor :operations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class GoogleLongrunningOperation
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
        # @return [Google::Apis::DialogflowV3beta1::GoogleRpcStatus]
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
      
        # The normal response of the operation in case of success. If the original
        # method returns no data on success, such as `Delete`, the response is `google.
        # protobuf.Empty`. If the original method is standard `Get`/`Create`/`Update`,
        # the response should be the resource. For other methods, the response should
        # have the type `XxxResponse`, where `Xxx` is the original method name. For
        # example, if the original method name is `TakeSnapshot()`, the inferred
        # response type is `TakeSnapshotResponse`.
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
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class GoogleProtobufEmpty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class GoogleRpcStatus
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
      
      # An object that represents a latitude/longitude pair. This is expressed as a
      # pair of doubles to represent degrees latitude and degrees longitude. Unless
      # specified otherwise, this object must conform to the WGS84 standard. Values
      # must be within normalized ranges.
      class GoogleTypeLatLng
        include Google::Apis::Core::Hashable
      
        # The latitude in degrees. It must be in the range [-90.0, +90.0].
        # Corresponds to the JSON property `latitude`
        # @return [Float]
        attr_accessor :latitude
      
        # The longitude in degrees. It must be in the range [-180.0, +180.0].
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
