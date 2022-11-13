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
      
      # Represents the natural speech audio to be processed.
      class GoogleCloudDialogflowCxV3AudioInput
        include Google::Apis::Core::Hashable
      
        # The natural language speech audio to be processed. A single request can
        # contain up to 1 minute of speech audio data. The transcribed text cannot
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
      
      # Metadata returned for the TestCases.BatchRunTestCases long running operation.
      class GoogleCloudDialogflowCxV3BatchRunTestCasesMetadata
        include Google::Apis::Core::Hashable
      
        # The test errors.
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
      
      # The response message for TestCases.BatchRunTestCases.
      class GoogleCloudDialogflowCxV3BatchRunTestCasesResponse
        include Google::Apis::Core::Hashable
      
        # The test case results. The detailed conversation turns are empty in this
        # response.
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
      
      # One interaction between a human and virtual agent. The human provides some
      # input and the virtual agent provides a response.
      class GoogleCloudDialogflowCxV3ConversationTurn
        include Google::Apis::Core::Hashable
      
        # The input from the human user.
        # Corresponds to the JSON property `userInput`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3ConversationTurnUserInput]
        attr_accessor :user_input
      
        # The output from the virtual agent.
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
        # 
        # Corresponds to the JSON property `input`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3QueryInput]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3Page]
        attr_accessor :current_page
      
        # Required. Input only. The diagnostic info output for the turn. Required to
        # calculate the testing coverage.
        # Corresponds to the JSON property `diagnosticInfo`
        # @return [Hash<String,Object>]
        attr_accessor :diagnostic_info
      
        # Output only. If this is part of a result conversation turn, the list of
        # differences between the original run and the replay for this output, if any.
        # Corresponds to the JSON property `differences`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3TestRunDifference>]
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
        # @return [Google::Apis::DialogflowV2::GoogleRpcStatus]
        attr_accessor :status
      
        # The text responses from the agent for the turn.
        # Corresponds to the JSON property `textResponses`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3ResponseMessageText>]
        attr_accessor :text_responses
      
        # An intent represents a user's intent to interact with a conversational agent.
        # You can provide information for the Dialogflow API to use to match user input
        # to an intent by adding training phrases (i.e., examples of user input) to your
        # intent.
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
      
      # Metadata for CreateDocument operation.
      class GoogleCloudDialogflowCxV3CreateDocumentOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Metadata in google::longrunning::Operation for Knowledge operations.
        # Corresponds to the JSON property `genericMetadata`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig]
        attr_accessor :test_cases_config
      
        # Output only. Update time of this environment.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Required. A list of configurations for flow versions. You should include
        # version configs for all flows that are reachable from `Start Flow` in the
        # agent. Otherwise, an error will be returned.
        # Corresponds to the JSON property `versionConfigs`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3EnvironmentVersionConfig>]
        attr_accessor :version_configs
      
        # Configuration for webhooks.
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
      
        # The URI to a file containing the exported agent. This field is populated only
        # if `agent_uri` is specified in ExportAgentRequest.
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3FormParameterFillBehavior]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3Fulfillment]
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
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3FulfillmentConditionalCases>]
        attr_accessor :conditional_cases
      
        # The list of rich message responses to present to the user.
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3ResponseMessage>]
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
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3FulfillmentSetParameterAction>]
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
      
      # Each case has a Boolean condition. When it is evaluated to be True, the
      # corresponding messages will be selected and evaluated recursively.
      class GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCase
        include Google::Apis::Core::Hashable
      
        # A list of case content.
        # Corresponds to the JSON property `caseContent`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3FulfillmentConditionalCasesCaseCaseContent>]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3FulfillmentConditionalCases]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata]
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
        # text/docs/basics#select-model) for more details.
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
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3IntentParameter>]
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
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3IntentTrainingPhrasePart>]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3Fulfillment]
        attr_accessor :entry_fulfillment
      
        # Handlers associated with the page to handle events such as webhook errors, no
        # match or no input.
        # Corresponds to the JSON property `eventHandlers`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3EventHandler>]
        attr_accessor :event_handlers
      
        # A form is a data model that groups related parameters that can be collected
        # from the user. The process in which the agent prompts the user and collects
        # parameter values from the user is called form filling. A form can be added to
        # a page. When form filling is done, the filled parameters will be written to
        # the session.
        # Corresponds to the JSON property `form`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3Form]
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
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3TransitionRoute>]
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
      
      # Represents form information.
      class GoogleCloudDialogflowCxV3PageInfoFormInfo
        include Google::Apis::Core::Hashable
      
        # Optional for both WebhookRequest and WebhookResponse. The parameters contained
        # in the form. Note that the webhook cannot add or remove any form parameter.
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
      # 
      class GoogleCloudDialogflowCxV3QueryInput
        include Google::Apis::Core::Hashable
      
        # Represents the natural speech audio to be processed.
        # Corresponds to the JSON property `audio`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3AudioInput]
        attr_accessor :audio
      
        # Represents the input for dtmf event.
        # Corresponds to the JSON property `dtmf`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3DtmfInput]
        attr_accessor :dtmf
      
        # Represents the event to trigger.
        # Corresponds to the JSON property `event`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3EventInput]
        attr_accessor :event
      
        # Represents the intent to trigger programmatically rather than as a result of
        # natural language processing.
        # Corresponds to the JSON property `intent`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3IntentInput]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3TextInput]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3ResponseMessageConversationSuccess]
        attr_accessor :conversation_success
      
        # Indicates that interaction with the Dialogflow agent has ended. This message
        # is generated by Dialogflow only and not supposed to be defined by the user.
        # Corresponds to the JSON property `endInteraction`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3ResponseMessageEndInteraction]
        attr_accessor :end_interaction
      
        # Indicates that the conversation should be handed off to a live agent.
        # Dialogflow only uses this to determine which conversations were handed off to
        # a human agent for measurement purposes. What else to do with this signal is up
        # to you and your handoff procedures. You may set this, for example: * In the
        # entry_fulfillment of a Page if entering the page indicates something went
        # extremely wrong in the conversation. * In a webhook response when you
        # determine that the customer issue can only be handled by a human.
        # Corresponds to the JSON property `liveAgentHandoff`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3ResponseMessageLiveAgentHandoff]
        attr_accessor :live_agent_handoff
      
        # Represents an audio message that is composed of both segments synthesized from
        # the Dialogflow agent prompts and ones hosted externally at the specified URIs.
        # The external URIs are specified via play_audio. This message is generated by
        # Dialogflow only and not supposed to be defined by the user.
        # Corresponds to the JSON property `mixedAudio`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3ResponseMessageMixedAudio]
        attr_accessor :mixed_audio
      
        # A text or ssml response that is preferentially used for TTS output audio
        # synthesis, as described in the comment on the ResponseMessage message.
        # Corresponds to the JSON property `outputAudioText`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3ResponseMessageOutputAudioText]
        attr_accessor :output_audio_text
      
        # Returns a response containing a custom, platform-specific payload.
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # Specifies an audio clip to be played by the client as part of the response.
        # Corresponds to the JSON property `playAudio`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3ResponseMessagePlayAudio]
        attr_accessor :play_audio
      
        # Represents the signal that telles the client to transfer the phone call
        # connected to the agent to a third-party endpoint.
        # Corresponds to the JSON property `telephonyTransferCall`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3ResponseMessageTelephonyTransferCall]
        attr_accessor :telephony_transfer_call
      
        # The text response message.
        # Corresponds to the JSON property `text`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3ResponseMessageText]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
      
      # The response message for Environments.RunContinuousTest.
      class GoogleCloudDialogflowCxV3RunContinuousTestResponse
        include Google::Apis::Core::Hashable
      
        # Represents a result from running a test case in an agent environment.
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3TestCaseResult]
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
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3ConversationTurn>]
        attr_accessor :test_case_conversation_turns
      
        # Represents configurations for a test case.
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
        # @return [Google::Apis::DialogflowV2::GoogleRpcStatus]
        attr_accessor :status
      
        # Represents a test case.
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
      
      # Represents a result from running a test case in an agent environment.
      class GoogleCloudDialogflowCxV3TestCaseResult
        include Google::Apis::Core::Hashable
      
        # The conversation turns uttered during the test case replay in chronological
        # order.
        # Corresponds to the JSON property `conversationTurns`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3ConversationTurn>]
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
        # @return [Google::Apis::DialogflowV2::GoogleRpcStatus]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3Fulfillment]
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
      
      # Metadata for UpdateDocument operation.
      class GoogleCloudDialogflowCxV3UpdateDocumentOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Metadata in google::longrunning::Operation for Knowledge operations.
        # Corresponds to the JSON property `genericMetadata`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3GenericKnowledgeOperationMetadata]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3WebhookGenericWebService]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig]
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
      
        # The password for HTTP Basic authentication.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
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
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_ca_certs = args[:allowed_ca_certs] if args.key?(:allowed_ca_certs)
          @password = args[:password] if args.key?(:password)
          @request_headers = args[:request_headers] if args.key?(:request_headers)
          @uri = args[:uri] if args.key?(:uri)
          @username = args[:username] if args.key?(:username)
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
      
        # Represents fulfillment information communicated to the webhook.
        # Corresponds to the JSON property `fulfillmentInfo`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3WebhookRequestFulfillmentInfo]
        attr_accessor :fulfillment_info
      
        # Represents intent information communicated to the webhook.
        # Corresponds to the JSON property `intentInfo`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3WebhookRequestIntentInfo]
        attr_accessor :intent_info
      
        # The language code specified in the original request.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # The list of rich message responses to present to the user. Webhook can choose
        # to append or replace this list in WebhookResponse.fulfillment_response;
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3ResponseMessage>]
        attr_accessor :messages
      
        # Represents page information communicated to and from the webhook.
        # Corresponds to the JSON property `pageInfo`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3PageInfo]
        attr_accessor :page_info
      
        # Custom data set in QueryParameters.payload.
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # Represents the result of sentiment analysis.
        # Corresponds to the JSON property `sentimentAnalysisResult`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3WebhookRequestSentimentAnalysisResult]
        attr_accessor :sentiment_analysis_result
      
        # Represents session information communicated to and from the webhook.
        # Corresponds to the JSON property `sessionInfo`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3SessionInfo]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3WebhookResponseFulfillmentResponse]
        attr_accessor :fulfillment_response
      
        # Represents page information communicated to and from the webhook.
        # Corresponds to the JSON property `pageInfo`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3PageInfo]
        attr_accessor :page_info
      
        # Value to append directly to QueryResult.webhook_payloads.
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # Represents session information communicated to and from the webhook.
        # Corresponds to the JSON property `sessionInfo`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3SessionInfo]
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
      
      # Represents configuration for a [Service Directory](https://cloud.google.com/
      # service-directory) service.
      class GoogleCloudDialogflowCxV3WebhookServiceDirectoryConfig
        include Google::Apis::Core::Hashable
      
        # Represents configuration for a generic web service.
        # Corresponds to the JSON property `genericWebService`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3WebhookGenericWebService]
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
      
      # Represents the natural speech audio to be processed.
      class GoogleCloudDialogflowCxV3beta1AudioInput
        include Google::Apis::Core::Hashable
      
        # The natural language speech audio to be processed. A single request can
        # contain up to 1 minute of speech audio data. The transcribed text cannot
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
      
      # Metadata returned for the TestCases.BatchRunTestCases long running operation.
      class GoogleCloudDialogflowCxV3beta1BatchRunTestCasesMetadata
        include Google::Apis::Core::Hashable
      
        # The test errors.
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
      
      # The response message for TestCases.BatchRunTestCases.
      class GoogleCloudDialogflowCxV3beta1BatchRunTestCasesResponse
        include Google::Apis::Core::Hashable
      
        # The test case results. The detailed conversation turns are empty in this
        # response.
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
      
      # One interaction between a human and virtual agent. The human provides some
      # input and the virtual agent provides a response.
      class GoogleCloudDialogflowCxV3beta1ConversationTurn
        include Google::Apis::Core::Hashable
      
        # The input from the human user.
        # Corresponds to the JSON property `userInput`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1ConversationTurnUserInput]
        attr_accessor :user_input
      
        # The output from the virtual agent.
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
        # 
        # Corresponds to the JSON property `input`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1QueryInput]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1Page]
        attr_accessor :current_page
      
        # Required. Input only. The diagnostic info output for the turn. Required to
        # calculate the testing coverage.
        # Corresponds to the JSON property `diagnosticInfo`
        # @return [Hash<String,Object>]
        attr_accessor :diagnostic_info
      
        # Output only. If this is part of a result conversation turn, the list of
        # differences between the original run and the replay for this output, if any.
        # Corresponds to the JSON property `differences`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1TestRunDifference>]
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
        # @return [Google::Apis::DialogflowV2::GoogleRpcStatus]
        attr_accessor :status
      
        # The text responses from the agent for the turn.
        # Corresponds to the JSON property `textResponses`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1ResponseMessageText>]
        attr_accessor :text_responses
      
        # An intent represents a user's intent to interact with a conversational agent.
        # You can provide information for the Dialogflow API to use to match user input
        # to an intent by adding training phrases (i.e., examples of user input) to your
        # intent.
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
      
      # Metadata for CreateDocument operation.
      class GoogleCloudDialogflowCxV3beta1CreateDocumentOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Metadata in google::longrunning::Operation for Knowledge operations.
        # Corresponds to the JSON property `genericMetadata`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1EnvironmentTestCasesConfig]
        attr_accessor :test_cases_config
      
        # Output only. Update time of this environment.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Required. A list of configurations for flow versions. You should include
        # version configs for all flows that are reachable from `Start Flow` in the
        # agent. Otherwise, an error will be returned.
        # Corresponds to the JSON property `versionConfigs`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfig>]
        attr_accessor :version_configs
      
        # Configuration for webhooks.
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
      
      # The response message for Agents.ExportAgent.
      class GoogleCloudDialogflowCxV3beta1ExportAgentResponse
        include Google::Apis::Core::Hashable
      
        # Uncompressed raw byte content for agent.
        # Corresponds to the JSON property `agentContent`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :agent_content
      
        # The URI to a file containing the exported agent. This field is populated only
        # if `agent_uri` is specified in ExportAgentRequest.
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
      
      # A form is a data model that groups related parameters that can be collected
      # from the user. The process in which the agent prompts the user and collects
      # parameter values from the user is called form filling. A form can be added to
      # a page. When form filling is done, the filled parameters will be written to
      # the session.
      class GoogleCloudDialogflowCxV3beta1Form
        include Google::Apis::Core::Hashable
      
        # Parameters to collect from the user.
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1FormParameterFillBehavior]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1Fulfillment]
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
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases>]
        attr_accessor :conditional_cases
      
        # The list of rich message responses to present to the user.
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1ResponseMessage>]
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
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1FulfillmentSetParameterAction>]
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
      
      # Each case has a Boolean condition. When it is evaluated to be True, the
      # corresponding messages will be selected and evaluated recursively.
      class GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCase
        include Google::Apis::Core::Hashable
      
        # A list of case content.
        # Corresponds to the JSON property `caseContent`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCasesCaseCaseContent>]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1FulfillmentConditionalCases]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata]
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
        # text/docs/basics#select-model) for more details.
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
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1IntentParameter>]
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
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1IntentTrainingPhrasePart>]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1Fulfillment]
        attr_accessor :entry_fulfillment
      
        # Handlers associated with the page to handle events such as webhook errors, no
        # match or no input.
        # Corresponds to the JSON property `eventHandlers`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1EventHandler>]
        attr_accessor :event_handlers
      
        # A form is a data model that groups related parameters that can be collected
        # from the user. The process in which the agent prompts the user and collects
        # parameter values from the user is called form filling. A form can be added to
        # a page. When form filling is done, the filled parameters will be written to
        # the session.
        # Corresponds to the JSON property `form`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1Form]
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
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1TransitionRoute>]
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
      
      # Represents form information.
      class GoogleCloudDialogflowCxV3beta1PageInfoFormInfo
        include Google::Apis::Core::Hashable
      
        # Optional for both WebhookRequest and WebhookResponse. The parameters contained
        # in the form. Note that the webhook cannot add or remove any form parameter.
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
      # 
      class GoogleCloudDialogflowCxV3beta1QueryInput
        include Google::Apis::Core::Hashable
      
        # Represents the natural speech audio to be processed.
        # Corresponds to the JSON property `audio`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1AudioInput]
        attr_accessor :audio
      
        # Represents the input for dtmf event.
        # Corresponds to the JSON property `dtmf`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1DtmfInput]
        attr_accessor :dtmf
      
        # Represents the event to trigger.
        # Corresponds to the JSON property `event`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1EventInput]
        attr_accessor :event
      
        # Represents the intent to trigger programmatically rather than as a result of
        # natural language processing.
        # Corresponds to the JSON property `intent`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1IntentInput]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1TextInput]
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
      class GoogleCloudDialogflowCxV3beta1ReloadDocumentOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Metadata in google::longrunning::Operation for Knowledge operations.
        # Corresponds to the JSON property `genericMetadata`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata]
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
      class GoogleCloudDialogflowCxV3beta1ResponseMessage
        include Google::Apis::Core::Hashable
      
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1ResponseMessageConversationSuccess]
        attr_accessor :conversation_success
      
        # Indicates that interaction with the Dialogflow agent has ended. This message
        # is generated by Dialogflow only and not supposed to be defined by the user.
        # Corresponds to the JSON property `endInteraction`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1ResponseMessageEndInteraction]
        attr_accessor :end_interaction
      
        # Indicates that the conversation should be handed off to a live agent.
        # Dialogflow only uses this to determine which conversations were handed off to
        # a human agent for measurement purposes. What else to do with this signal is up
        # to you and your handoff procedures. You may set this, for example: * In the
        # entry_fulfillment of a Page if entering the page indicates something went
        # extremely wrong in the conversation. * In a webhook response when you
        # determine that the customer issue can only be handled by a human.
        # Corresponds to the JSON property `liveAgentHandoff`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1ResponseMessageLiveAgentHandoff]
        attr_accessor :live_agent_handoff
      
        # Represents an audio message that is composed of both segments synthesized from
        # the Dialogflow agent prompts and ones hosted externally at the specified URIs.
        # The external URIs are specified via play_audio. This message is generated by
        # Dialogflow only and not supposed to be defined by the user.
        # Corresponds to the JSON property `mixedAudio`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1ResponseMessageMixedAudio]
        attr_accessor :mixed_audio
      
        # A text or ssml response that is preferentially used for TTS output audio
        # synthesis, as described in the comment on the ResponseMessage message.
        # Corresponds to the JSON property `outputAudioText`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1ResponseMessageOutputAudioText]
        attr_accessor :output_audio_text
      
        # Returns a response containing a custom, platform-specific payload.
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # Specifies an audio clip to be played by the client as part of the response.
        # Corresponds to the JSON property `playAudio`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1ResponseMessagePlayAudio]
        attr_accessor :play_audio
      
        # Represents the signal that telles the client to transfer the phone call
        # connected to the agent to a third-party endpoint.
        # Corresponds to the JSON property `telephonyTransferCall`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1ResponseMessageTelephonyTransferCall]
        attr_accessor :telephony_transfer_call
      
        # The text response message.
        # Corresponds to the JSON property `text`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1ResponseMessageText]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
      
      # Metadata returned for the Environments.RunContinuousTest long running
      # operation.
      class GoogleCloudDialogflowCxV3beta1RunContinuousTestMetadata
        include Google::Apis::Core::Hashable
      
        # The test errors.
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
      
      # The response message for Environments.RunContinuousTest.
      class GoogleCloudDialogflowCxV3beta1RunContinuousTestResponse
        include Google::Apis::Core::Hashable
      
        # Represents a result from running a test case in an agent environment.
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
      
      # The response message for TestCases.RunTestCase.
      class GoogleCloudDialogflowCxV3beta1RunTestCaseResponse
        include Google::Apis::Core::Hashable
      
        # Represents a result from running a test case in an agent environment.
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1TestCaseResult]
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
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1ConversationTurn>]
        attr_accessor :test_case_conversation_turns
      
        # Represents configurations for a test case.
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
        # @return [Google::Apis::DialogflowV2::GoogleRpcStatus]
        attr_accessor :status
      
        # Represents a test case.
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
      
      # Represents a result from running a test case in an agent environment.
      class GoogleCloudDialogflowCxV3beta1TestCaseResult
        include Google::Apis::Core::Hashable
      
        # The conversation turns uttered during the test case replay in chronological
        # order.
        # Corresponds to the JSON property `conversationTurns`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1ConversationTurn>]
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
        # @return [Google::Apis::DialogflowV2::GoogleRpcStatus]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1Fulfillment]
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
      
      # Metadata for UpdateDocument operation.
      class GoogleCloudDialogflowCxV3beta1UpdateDocumentOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Metadata in google::longrunning::Operation for Knowledge operations.
        # Corresponds to the JSON property `genericMetadata`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1GenericKnowledgeOperationMetadata]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1WebhookGenericWebService]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig]
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
      
        # The password for HTTP Basic authentication.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
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
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_ca_certs = args[:allowed_ca_certs] if args.key?(:allowed_ca_certs)
          @password = args[:password] if args.key?(:password)
          @request_headers = args[:request_headers] if args.key?(:request_headers)
          @uri = args[:uri] if args.key?(:uri)
          @username = args[:username] if args.key?(:username)
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
      
        # Represents fulfillment information communicated to the webhook.
        # Corresponds to the JSON property `fulfillmentInfo`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo]
        attr_accessor :fulfillment_info
      
        # Represents intent information communicated to the webhook.
        # Corresponds to the JSON property `intentInfo`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo]
        attr_accessor :intent_info
      
        # The language code specified in the original request.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # The list of rich message responses to present to the user. Webhook can choose
        # to append or replace this list in WebhookResponse.fulfillment_response;
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1ResponseMessage>]
        attr_accessor :messages
      
        # Represents page information communicated to and from the webhook.
        # Corresponds to the JSON property `pageInfo`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1PageInfo]
        attr_accessor :page_info
      
        # Custom data set in QueryParameters.payload.
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # Represents the result of sentiment analysis.
        # Corresponds to the JSON property `sentimentAnalysisResult`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1WebhookRequestSentimentAnalysisResult]
        attr_accessor :sentiment_analysis_result
      
        # Represents session information communicated to and from the webhook.
        # Corresponds to the JSON property `sessionInfo`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1SessionInfo]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1WebhookResponseFulfillmentResponse]
        attr_accessor :fulfillment_response
      
        # Represents page information communicated to and from the webhook.
        # Corresponds to the JSON property `pageInfo`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1PageInfo]
        attr_accessor :page_info
      
        # Value to append directly to QueryResult.webhook_payloads.
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # Represents session information communicated to and from the webhook.
        # Corresponds to the JSON property `sessionInfo`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1SessionInfo]
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
      
      # Represents configuration for a [Service Directory](https://cloud.google.com/
      # service-directory) service.
      class GoogleCloudDialogflowCxV3beta1WebhookServiceDirectoryConfig
        include Google::Apis::Core::Hashable
      
        # Represents configuration for a generic web service.
        # Corresponds to the JSON property `genericWebService`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowCxV3beta1WebhookGenericWebService]
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
      
      # A Dialogflow agent is a virtual agent that handles conversations with your end-
      # users. It is a natural language understanding module that understands the
      # nuances of human language. Dialogflow translates end-user text or audio during
      # a conversation to structured data that your apps and services can understand.
      # You design and build a Dialogflow agent to handle the types of conversations
      # required for your system. For more information about agents, see the [Agent
      # guide](https://cloud.google.com/dialogflow/docs/agents-overview).
      class GoogleCloudDialogflowV2Agent
        include Google::Apis::Core::Hashable
      
        # Optional. API version displayed in Dialogflow console. If not specified, V2
        # API is assumed. Clients are free to query different service endpoints for
        # different API versions. However, bots connectors and webhook calls will follow
        # the specified API version.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Optional. The URI of the agent's avatar. Avatars are used throughout the
        # Dialogflow console and in the self-hosted [Web Demo](https://cloud.google.com/
        # dialogflow/docs/integrations/web-demo) integration.
        # Corresponds to the JSON property `avatarUri`
        # @return [String]
        attr_accessor :avatar_uri
      
        # Optional. To filter out false positive results and still get variety in
        # matched natural language inputs for your agent, you can tune the machine
        # learning classification threshold. If the returned score value is less than
        # the threshold value, then a fallback intent will be triggered or, if there are
        # no fallback intents defined, no intent will be triggered. The score values
        # range from 0.0 (completely uncertain) to 1.0 (completely certain). If set to 0.
        # 0, the default of 0.3 is used.
        # Corresponds to the JSON property `classificationThreshold`
        # @return [Float]
        attr_accessor :classification_threshold
      
        # Required. The default language of the agent as a language tag. See [Language
        # Support](https://cloud.google.com/dialogflow/docs/reference/language) for a
        # list of the currently supported language codes. This field cannot be set by
        # the `Update` method.
        # Corresponds to the JSON property `defaultLanguageCode`
        # @return [String]
        attr_accessor :default_language_code
      
        # Optional. The description of this agent. The maximum length is 500 characters.
        # If exceeded, the request is rejected.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The name of this agent.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. Determines whether this agent should log conversation queries.
        # Corresponds to the JSON property `enableLogging`
        # @return [Boolean]
        attr_accessor :enable_logging
        alias_method :enable_logging?, :enable_logging
      
        # Optional. Determines how intents are detected from user queries.
        # Corresponds to the JSON property `matchMode`
        # @return [String]
        attr_accessor :match_mode
      
        # Required. The project of this agent. Format: `projects/`.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # Optional. The list of all languages supported by this agent (except for the `
        # default_language_code`).
        # Corresponds to the JSON property `supportedLanguageCodes`
        # @return [Array<String>]
        attr_accessor :supported_language_codes
      
        # Optional. The agent tier. If not specified, TIER_STANDARD is assumed.
        # Corresponds to the JSON property `tier`
        # @return [String]
        attr_accessor :tier
      
        # Required. The time zone of this agent from the [time zone database](https://
        # www.iana.org/time-zones), e.g., America/New_York, Europe/Paris.
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
      
      # Detail feedback of Agent Assist result.
      class GoogleCloudDialogflowV2AgentAssistantFeedback
        include Google::Apis::Core::Hashable
      
        # Optional. Whether or not the suggested answer is relevant. For example: *
        # Query: "Can I change my mailing address?" * Suggested document says: "Items
        # must be returned/exchanged within 60 days of the purchase date." *
        # answer_relevance: AnswerRelevance.IRRELEVANT
        # Corresponds to the JSON property `answerRelevance`
        # @return [String]
        attr_accessor :answer_relevance
      
        # Optional. Whether or not the information in the document is correct. For
        # example: * Query: "Can I return the package in 2 days once received?" *
        # Suggested document says: "Items must be returned/exchanged within 60 days of
        # the purchase date." * Ground truth: "No return or exchange is allowed." * [
        # document_correctness]: INCORRECT
        # Corresponds to the JSON property `documentCorrectness`
        # @return [String]
        attr_accessor :document_correctness
      
        # Optional. Whether or not the suggested document is efficient. For example, if
        # the document is poorly written, hard to understand, hard to use or too long to
        # find useful information, document_efficiency is DocumentEfficiency.INEFFICIENT.
        # Corresponds to the JSON property `documentEfficiency`
        # @return [String]
        attr_accessor :document_efficiency
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer_relevance = args[:answer_relevance] if args.key?(:answer_relevance)
          @document_correctness = args[:document_correctness] if args.key?(:document_correctness)
          @document_efficiency = args[:document_efficiency] if args.key?(:document_efficiency)
        end
      end
      
      # Represents a record of a human agent assist answer.
      class GoogleCloudDialogflowV2AgentAssistantRecord
        include Google::Apis::Core::Hashable
      
        # Represents article answer.
        # Corresponds to the JSON property `articleSuggestionAnswer`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ArticleAnswer]
        attr_accessor :article_suggestion_answer
      
        # Represents answer from "frequently asked questions".
        # Corresponds to the JSON property `faqAnswer`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2FaqAnswer]
        attr_accessor :faq_answer
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @article_suggestion_answer = args[:article_suggestion_answer] if args.key?(:article_suggestion_answer)
          @faq_answer = args[:faq_answer] if args.key?(:faq_answer)
        end
      end
      
      # The request message for Participants.AnalyzeContent.
      class GoogleCloudDialogflowV2AnalyzeContentRequest
        include Google::Apis::Core::Hashable
      
        # Represents the parameters of human assist query.
        # Corresponds to the JSON property `assistQueryParams`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AssistQueryParameters]
        attr_accessor :assist_query_params
      
        # Additional parameters to be put into Dialogflow CX session parameters. To
        # remove a parameter from the session, clients should explicitly set the
        # parameter value to null. Note: this field should only be used if you are
        # connecting to a Dialogflow CX agent.
        # Corresponds to the JSON property `cxParameters`
        # @return [Hash<String,Object>]
        attr_accessor :cx_parameters
      
        # Events allow for matching intents by event name instead of the natural
        # language input. For instance, input `` can trigger a personalized welcome
        # response. The parameter `name` may be used by the agent in the response: `"
        # Hello #welcome_event.name! What can I do for you today?"`.
        # Corresponds to the JSON property `eventInput`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EventInput]
        attr_accessor :event_input
      
        # Represents the parameters of the conversational query.
        # Corresponds to the JSON property `queryParams`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2QueryParameters]
        attr_accessor :query_params
      
        # Instructs the speech synthesizer on how to generate the output audio content.
        # If this audio config is supplied in a request, it overrides all existing text-
        # to-speech settings applied to the agent.
        # Corresponds to the JSON property `replyAudioConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2OutputAudioConfig]
        attr_accessor :reply_audio_config
      
        # A unique identifier for this request. Restricted to 36 ASCII characters. A
        # random UUID is recommended. This request is only idempotent if a `request_id`
        # is provided.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # ============================================================================
        # Auxiliary proto messages. Represents the natural language text to be processed.
        # Corresponds to the JSON property `textInput`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2TextInput]
        attr_accessor :text_input
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assist_query_params = args[:assist_query_params] if args.key?(:assist_query_params)
          @cx_parameters = args[:cx_parameters] if args.key?(:cx_parameters)
          @event_input = args[:event_input] if args.key?(:event_input)
          @query_params = args[:query_params] if args.key?(:query_params)
          @reply_audio_config = args[:reply_audio_config] if args.key?(:reply_audio_config)
          @request_id = args[:request_id] if args.key?(:request_id)
          @text_input = args[:text_input] if args.key?(:text_input)
        end
      end
      
      # The response message for Participants.AnalyzeContent.
      class GoogleCloudDialogflowV2AnalyzeContentResponse
        include Google::Apis::Core::Hashable
      
        # Represents a response from an automated agent.
        # Corresponds to the JSON property `automatedAgentReply`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AutomatedAgentReply]
        attr_accessor :automated_agent_reply
      
        # The message in the response that indicates the parameters of DTMF.
        # Corresponds to the JSON property `dtmfParameters`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2DtmfParameters]
        attr_accessor :dtmf_parameters
      
        # The suggestions for end user. The order is the same as
        # HumanAgentAssistantConfig.SuggestionConfig.feature_configs of
        # HumanAgentAssistantConfig.end_user_suggestion_config. Same as
        # human_agent_suggestion_results, any failure of Agent Assist features will not
        # lead to the overall failure of an AnalyzeContent API call. Instead, the
        # features will fail silently with the error field set in the corresponding
        # SuggestionResult.
        # Corresponds to the JSON property `endUserSuggestionResults`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestionResult>]
        attr_accessor :end_user_suggestion_results
      
        # The suggestions for most recent human agent. The order is the same as
        # HumanAgentAssistantConfig.SuggestionConfig.feature_configs of
        # HumanAgentAssistantConfig.human_agent_suggestion_config. Note that any failure
        # of Agent Assist features will not lead to the overall failure of an
        # AnalyzeContent API call. Instead, the features will fail silently with the
        # error field set in the corresponding SuggestionResult.
        # Corresponds to the JSON property `humanAgentSuggestionResults`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestionResult>]
        attr_accessor :human_agent_suggestion_results
      
        # Represents a message posted into a conversation.
        # Corresponds to the JSON property `message`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Message]
        attr_accessor :message
      
        # Represents the natural language speech audio to be played to the end user.
        # Corresponds to the JSON property `replyAudio`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2OutputAudio]
        attr_accessor :reply_audio
      
        # The output text content. This field is set if the automated agent responded
        # with text to show to the user.
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
      
      # Represents feedback the customer has about the quality & correctness of a
      # certain answer in a conversation.
      class GoogleCloudDialogflowV2AnswerFeedback
        include Google::Apis::Core::Hashable
      
        # Detail feedback of Agent Assist result.
        # Corresponds to the JSON property `agentAssistantDetailFeedback`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AgentAssistantFeedback]
        attr_accessor :agent_assistant_detail_feedback
      
        # Time when the answer/item was clicked.
        # Corresponds to the JSON property `clickTime`
        # @return [String]
        attr_accessor :click_time
      
        # Indicates whether the answer/item was clicked by the human agent or not.
        # Default to false.
        # Corresponds to the JSON property `clicked`
        # @return [Boolean]
        attr_accessor :clicked
        alias_method :clicked?, :clicked
      
        # The correctness level of the specific answer.
        # Corresponds to the JSON property `correctnessLevel`
        # @return [String]
        attr_accessor :correctness_level
      
        # Time when the answer/item was displayed.
        # Corresponds to the JSON property `displayTime`
        # @return [String]
        attr_accessor :display_time
      
        # Indicates whether the answer/item was displayed to the human agent in the
        # agent desktop UI. Default to false.
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
      
      # Answer records are records to manage answer history and feedbacks for
      # Dialogflow. Currently, answer record includes: - human agent assistant article
      # suggestion - human agent assistant faq article It doesn't include: - `
      # DetectIntent` intent matching - `DetectIntent` knowledge Answer records are
      # not related to the conversation history in the Dialogflow Console. A Record is
      # generated even when the end-user disables conversation history in the console.
      # Records are created when there's a human agent assistant suggestion generated.
      # A typical workflow for customers provide feedback to an answer is: 1. For
      # human agent assistant, customers get suggestion via ListSuggestions API.
      # Together with the answers, AnswerRecord.name are returned to the customers. 2.
      # The customer uses the AnswerRecord.name to call the UpdateAnswerRecord method
      # to send feedback about a specific answer that they believe is wrong.
      class GoogleCloudDialogflowV2AnswerRecord
        include Google::Apis::Core::Hashable
      
        # Represents a record of a human agent assist answer.
        # Corresponds to the JSON property `agentAssistantRecord`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AgentAssistantRecord]
        attr_accessor :agent_assistant_record
      
        # Represents feedback the customer has about the quality & correctness of a
        # certain answer in a conversation.
        # Corresponds to the JSON property `answerFeedback`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AnswerFeedback]
        attr_accessor :answer_feedback
      
        # The unique identifier of this answer record. Format: `projects//locations//
        # answerRecords/`.
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
      
      # Represents the parameters of human assist query.
      class GoogleCloudDialogflowV2AssistQueryParameters
        include Google::Apis::Core::Hashable
      
        # Key-value filters on the metadata of documents returned by article suggestion.
        # If specified, article suggestion only returns suggested documents that match
        # all filters in their Document.metadata. Multiple values for a metadata key
        # should be concatenated by comma. For example, filters to match all documents
        # that have 'US' or 'CA' in their market metadata values and 'agent' in their
        # user metadata values will be ``` documents_metadata_filters ` key: "market"
        # value: "US,CA" ` documents_metadata_filters ` key: "user" value: "agent" ` ```
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
      
      # Defines the Automated Agent to connect to a conversation.
      class GoogleCloudDialogflowV2AutomatedAgentConfig
        include Google::Apis::Core::Hashable
      
        # Required. ID of the Dialogflow agent environment to use. This project needs to
        # either be the same project as the conversation or you need to grant `service-@
        # gcp-sa-dialogflow.iam.gserviceaccount.com` the `Dialogflow API Service Agent`
        # role in this project. - For ES agents, use format: `projects//locations//agent/
        # environments/`. If environment is not specified, the default `draft`
        # environment is used. Refer to [DetectIntentRequest](/dialogflow/docs/reference/
        # rpc/google.cloud.dialogflow.v2#google.cloud.dialogflow.v2.DetectIntentRequest)
        # for more details. - For CX agents, use format `projects//locations//agents//
        # environments/`. If environment is not specified, the default `draft`
        # environment is used.
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
      
      # Represents a response from an automated agent.
      class GoogleCloudDialogflowV2AutomatedAgentReply
        include Google::Apis::Core::Hashable
      
        # Indicates whether the partial automated agent reply is interruptible when a
        # later reply message arrives. e.g. if the agent specified some music as partial
        # response, it can be cancelled.
        # Corresponds to the JSON property `allowCancellation`
        # @return [Boolean]
        attr_accessor :allow_cancellation
        alias_method :allow_cancellation?, :allow_cancellation
      
        # AutomatedAgentReply type.
        # Corresponds to the JSON property `automatedAgentReplyType`
        # @return [String]
        attr_accessor :automated_agent_reply_type
      
        # The unique identifier of the current Dialogflow CX conversation page. Format: `
        # projects//locations//agents//flows//pages/`.
        # Corresponds to the JSON property `cxCurrentPage`
        # @return [String]
        attr_accessor :cx_current_page
      
        # The message returned from the DetectIntent method.
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
      
      # The request message for EntityTypes.BatchCreateEntities.
      class GoogleCloudDialogflowV2BatchCreateEntitiesRequest
        include Google::Apis::Core::Hashable
      
        # Required. The entities to create.
        # Corresponds to the JSON property `entities`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EntityTypeEntity>]
        attr_accessor :entities
      
        # Optional. The language used to access language-specific data. If not specified,
        # the agent's default language is used. For more information, see [Multilingual
        # intent and entity data](https://cloud.google.com/dialogflow/docs/agents-
        # multilingual#intent-entity).
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
      
      # The request message for EntityTypes.BatchDeleteEntities.
      class GoogleCloudDialogflowV2BatchDeleteEntitiesRequest
        include Google::Apis::Core::Hashable
      
        # Required. The reference `values` of the entities to delete. Note that these
        # are not fully-qualified names, i.e. they don't start with `projects/`.
        # Corresponds to the JSON property `entityValues`
        # @return [Array<String>]
        attr_accessor :entity_values
      
        # Optional. The language used to access language-specific data. If not specified,
        # the agent's default language is used. For more information, see [Multilingual
        # intent and entity data](https://cloud.google.com/dialogflow/docs/agents-
        # multilingual#intent-entity).
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
      
      # The request message for EntityTypes.BatchDeleteEntityTypes.
      class GoogleCloudDialogflowV2BatchDeleteEntityTypesRequest
        include Google::Apis::Core::Hashable
      
        # Required. The names entity types to delete. All names must point to the same
        # agent as `parent`.
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
      
      # The request message for Intents.BatchDeleteIntents.
      class GoogleCloudDialogflowV2BatchDeleteIntentsRequest
        include Google::Apis::Core::Hashable
      
        # Required. The collection of intents to delete. Only intent `name` must be
        # filled in.
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
      
      # The request message for EntityTypes.BatchUpdateEntities.
      class GoogleCloudDialogflowV2BatchUpdateEntitiesRequest
        include Google::Apis::Core::Hashable
      
        # Required. The entities to update or create.
        # Corresponds to the JSON property `entities`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EntityTypeEntity>]
        attr_accessor :entities
      
        # Optional. The language used to access language-specific data. If not specified,
        # the agent's default language is used. For more information, see [Multilingual
        # intent and entity data](https://cloud.google.com/dialogflow/docs/agents-
        # multilingual#intent-entity).
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Optional. The mask to control which fields get updated.
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
      
      # The request message for EntityTypes.BatchUpdateEntityTypes.
      class GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest
        include Google::Apis::Core::Hashable
      
        # This message is a wrapper around a collection of entity types.
        # Corresponds to the JSON property `entityTypeBatchInline`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EntityTypeBatch]
        attr_accessor :entity_type_batch_inline
      
        # The URI to a Google Cloud Storage file containing entity types to update or
        # create. The file format can either be a serialized proto (of EntityBatch type)
        # or a JSON object. Note: The URI must start with "gs://".
        # Corresponds to the JSON property `entityTypeBatchUri`
        # @return [String]
        attr_accessor :entity_type_batch_uri
      
        # Optional. The language used to access language-specific data. If not specified,
        # the agent's default language is used. For more information, see [Multilingual
        # intent and entity data](https://cloud.google.com/dialogflow/docs/agents-
        # multilingual#intent-entity).
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Optional. The mask to control which fields get updated.
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
      
      # The response message for EntityTypes.BatchUpdateEntityTypes.
      class GoogleCloudDialogflowV2BatchUpdateEntityTypesResponse
        include Google::Apis::Core::Hashable
      
        # The collection of updated or created entity types.
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
      
        # This message is a wrapper around a collection of intents.
        # Corresponds to the JSON property `intentBatchInline`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentBatch]
        attr_accessor :intent_batch_inline
      
        # The URI to a Google Cloud Storage file containing intents to update or create.
        # The file format can either be a serialized proto (of IntentBatch type) or JSON
        # object. Note: The URI must start with "gs://".
        # Corresponds to the JSON property `intentBatchUri`
        # @return [String]
        attr_accessor :intent_batch_uri
      
        # Optional. The resource view to apply to the returned intent.
        # Corresponds to the JSON property `intentView`
        # @return [String]
        attr_accessor :intent_view
      
        # Optional. The language used to access language-specific data. If not specified,
        # the agent's default language is used. For more information, see [Multilingual
        # intent and entity data](https://cloud.google.com/dialogflow/docs/agents-
        # multilingual#intent-entity).
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Optional. The mask to control which fields get updated.
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
      
      # The response message for Intents.BatchUpdateIntents.
      class GoogleCloudDialogflowV2BatchUpdateIntentsResponse
        include Google::Apis::Core::Hashable
      
        # The collection of updated or created intents.
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
      
      # The request message for ConversationProfiles.ClearFeature.
      class GoogleCloudDialogflowV2ClearSuggestionFeatureConfigRequest
        include Google::Apis::Core::Hashable
      
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
          @participant_role = args[:participant_role] if args.key?(:participant_role)
          @suggestion_feature_type = args[:suggestion_feature_type] if args.key?(:suggestion_feature_type)
        end
      end
      
      # The request message for Conversations.CompleteConversation.
      class GoogleCloudDialogflowV2CompleteConversationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
      
      # Represents a conversation. A conversation is an interaction between an agent,
      # including live agents and Dialogflow agents, and a support customer.
      # Conversations can include phone calls and text-based chat sessions.
      class GoogleCloudDialogflowV2Conversation
        include Google::Apis::Core::Hashable
      
        # Required. The Conversation Profile to be used to configure this Conversation.
        # This field cannot be updated. Format: `projects//locations//
        # conversationProfiles/`.
        # Corresponds to the JSON property `conversationProfile`
        # @return [String]
        attr_accessor :conversation_profile
      
        # The stage of a conversation. It indicates whether the virtual agent or a human
        # agent is handling the conversation. If the conversation is created with the
        # conversation profile that has Dialogflow config set, defaults to
        # ConversationStage.VIRTUAL_AGENT_STAGE; Otherwise, defaults to
        # ConversationStage.HUMAN_ASSIST_STAGE. If the conversation is created with the
        # conversation profile that has Dialogflow config set but explicitly sets
        # conversation_stage to ConversationStage.HUMAN_ASSIST_STAGE, it skips
        # ConversationStage.VIRTUAL_AGENT_STAGE stage and directly goes to
        # ConversationStage.HUMAN_ASSIST_STAGE.
        # Corresponds to the JSON property `conversationStage`
        # @return [String]
        attr_accessor :conversation_stage
      
        # Output only. The time the conversation was finished.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. The current state of the Conversation.
        # Corresponds to the JSON property `lifecycleState`
        # @return [String]
        attr_accessor :lifecycle_state
      
        # Output only. The unique identifier of this conversation. Format: `projects//
        # locations//conversations/`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Represents a phone number for telephony integration. It allows for connecting
        # a particular conversation over telephony.
        # Corresponds to the JSON property `phoneNumber`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationPhoneNumber]
        attr_accessor :phone_number
      
        # Output only. The time the conversation was started.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation_profile = args[:conversation_profile] if args.key?(:conversation_profile)
          @conversation_stage = args[:conversation_stage] if args.key?(:conversation_stage)
          @end_time = args[:end_time] if args.key?(:end_time)
          @lifecycle_state = args[:lifecycle_state] if args.key?(:lifecycle_state)
          @name = args[:name] if args.key?(:name)
          @phone_number = args[:phone_number] if args.key?(:phone_number)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Represents a conversation dataset that a user imports raw data into. The data
      # inside ConversationDataset can not be changed after ImportConversationData
      # finishes (and calling ImportConversationData on a dataset that already has
      # data is not allowed).
      class GoogleCloudDialogflowV2ConversationDataset
        include Google::Apis::Core::Hashable
      
        # Output only. The number of conversations this conversation dataset contains.
        # Corresponds to the JSON property `conversationCount`
        # @return [Fixnum]
        attr_accessor :conversation_count
      
        # Represents metadata of a conversation.
        # Corresponds to the JSON property `conversationInfo`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationInfo]
        attr_accessor :conversation_info
      
        # Output only. Creation time of this dataset.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. The description of the dataset. Maximum of 10000 bytes.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The display name of the dataset. Maximum of 64 bytes.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Represents the configuration of importing a set of conversation files in
        # Google Cloud Storage.
        # Corresponds to the JSON property `inputConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2InputConfig]
        attr_accessor :input_config
      
        # Output only. ConversationDataset resource name. Format: `projects//locations//
        # conversationDatasets/`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
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
        # @return [Google::Apis::DialogflowV2::GoogleRpcStatus]
        attr_accessor :error_status
      
        # Represents a message posted into a conversation.
        # Corresponds to the JSON property `newMessagePayload`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Message]
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
      
      # Represents metadata of a conversation.
      class GoogleCloudDialogflowV2ConversationInfo
        include Google::Apis::Core::Hashable
      
        # Optional. The language code of the conversation data within this dataset. See
        # https://cloud.google.com/apis/design/standard_fields for more information.
        # Supports all UTF-8 languages.
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
      
      # Represents a conversation model.
      class GoogleCloudDialogflowV2ConversationModel
        include Google::Apis::Core::Hashable
      
        # Metadata for article suggestion models.
        # Corresponds to the JSON property `articleSuggestionModelMetadata`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ArticleSuggestionModelMetadata]
        attr_accessor :article_suggestion_model_metadata
      
        # Output only. Creation time of this model.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. Datasets used to create model.
        # Corresponds to the JSON property `datasets`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2InputDataset>]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SmartReplyModelMetadata]
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
      
      # Represents evaluation result of a conversation model.
      class GoogleCloudDialogflowV2ConversationModelEvaluation
        include Google::Apis::Core::Hashable
      
        # Output only. Creation time of this model.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. The display name of the model evaluation. At most 64 bytes long.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The configuration for model evaluation.
        # Corresponds to the JSON property `evaluationConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EvaluationConfig]
        attr_accessor :evaluation_config
      
        # The resource name of the evaluation. Format: `projects//conversationModels//
        # evaluations/`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The evaluation metrics for smart reply model.
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
          @smart_reply_metrics = args[:smart_reply_metrics] if args.key?(:smart_reply_metrics)
        end
      end
      
      # Represents a phone number for telephony integration. It allows for connecting
      # a particular conversation over telephony.
      class GoogleCloudDialogflowV2ConversationPhoneNumber
        include Google::Apis::Core::Hashable
      
        # Output only. The phone number to connect to this conversation.
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
      
      # Defines the services to connect to incoming Dialogflow conversations.
      class GoogleCloudDialogflowV2ConversationProfile
        include Google::Apis::Core::Hashable
      
        # Defines the Automated Agent to connect to a conversation.
        # Corresponds to the JSON property `automatedAgentConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AutomatedAgentConfig]
        attr_accessor :automated_agent_config
      
        # Output only. Create time of the conversation profile.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. Human readable name for this profile. Max length 1024 bytes.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Defines the Human Agent Assist to connect to a conversation.
        # Corresponds to the JSON property `humanAgentAssistantConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2HumanAgentAssistantConfig]
        attr_accessor :human_agent_assistant_config
      
        # Defines the hand off to a live agent, typically on which external agent
        # service provider to connect to a conversation. Currently, this feature is not
        # general available, please contact Google to get access.
        # Corresponds to the JSON property `humanAgentHandoffConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2HumanAgentHandoffConfig]
        attr_accessor :human_agent_handoff_config
      
        # Language code for the conversation profile. If not specified, the language is
        # en-US. Language at ConversationProfile should be set for all non en-US
        # languages. This should be a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.
        # txt) language tag. Example: "en-US".
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Defines logging behavior for conversation lifecycle events.
        # Corresponds to the JSON property `loggingConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2LoggingConfig]
        attr_accessor :logging_config
      
        # The unique identifier of this conversation profile. Format: `projects//
        # locations//conversationProfiles/`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Defines notification behavior.
        # Corresponds to the JSON property `newMessageEventNotificationConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2NotificationConfig]
        attr_accessor :new_message_event_notification_config
      
        # Defines notification behavior.
        # Corresponds to the JSON property `notificationConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2NotificationConfig]
        attr_accessor :notification_config
      
        # Name of the CX SecuritySettings reference for the agent. Format: `projects//
        # locations//securitySettings/`.
        # Corresponds to the JSON property `securitySettings`
        # @return [String]
        attr_accessor :security_settings
      
        # Configures speech transcription for ConversationProfile.
        # Corresponds to the JSON property `sttConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SpeechToTextConfig]
        attr_accessor :stt_config
      
        # The time zone of this conversational profile from the [time zone database](
        # https://www.iana.org/time-zones), e.g., America/New_York, Europe/Paris.
        # Defaults to America/New_York.
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        # Output only. Update time of the conversation profile.
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
          @notification_config = args[:notification_config] if args.key?(:notification_config)
          @security_settings = args[:security_settings] if args.key?(:security_settings)
          @stt_config = args[:stt_config] if args.key?(:stt_config)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
          @update_time = args[:update_time] if args.key?(:update_time)
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
      
      # The request message for ConversationModels.CreateConversationModelEvaluation
      class GoogleCloudDialogflowV2CreateConversationModelEvaluationRequest
        include Google::Apis::Core::Hashable
      
        # Represents evaluation result of a conversation model.
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
      
      # The request message for ConversationModels.DeployConversationModel
      class GoogleCloudDialogflowV2DeployConversationModelRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The request to detect user's intent.
      class GoogleCloudDialogflowV2DetectIntentRequest
        include Google::Apis::Core::Hashable
      
        # The natural language speech audio to be processed. This field should be
        # populated iff `query_input` is set to an input audio config. A single request
        # can contain up to 1 minute of speech audio data.
        # Corresponds to the JSON property `inputAudio`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :input_audio
      
        # Instructs the speech synthesizer on how to generate the output audio content.
        # If this audio config is supplied in a request, it overrides all existing text-
        # to-speech settings applied to the agent.
        # Corresponds to the JSON property `outputAudioConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2OutputAudioConfig]
        attr_accessor :output_audio_config
      
        # Mask for output_audio_config indicating which settings in this request-level
        # config should override speech synthesizer settings defined at agent-level. If
        # unspecified or empty, output_audio_config replaces the agent-level config in
        # its entirety.
        # Corresponds to the JSON property `outputAudioConfigMask`
        # @return [String]
        attr_accessor :output_audio_config_mask
      
        # Represents the query input. It can contain either: 1. An audio config which
        # instructs the speech recognizer how to process the speech audio. 2. A
        # conversational query in the form of text,. 3. An event that specifies which
        # intent to trigger.
        # Corresponds to the JSON property `queryInput`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2QueryInput]
        attr_accessor :query_input
      
        # Represents the parameters of the conversational query.
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
      
      # The message returned from the DetectIntent method.
      class GoogleCloudDialogflowV2DetectIntentResponse
        include Google::Apis::Core::Hashable
      
        # The audio data bytes encoded as specified in the request. Note: The output
        # audio is generated based on the values of default platform text responses
        # found in the `query_result.fulfillment_messages` field. If multiple default
        # text responses exist, they will be concatenated when generating audio. If no
        # default platform text responses exist, the generated audio content will be
        # empty. In some scenarios, multiple output audio fields may be present in the
        # response structure. In these cases, only the top-most-level audio output has
        # content.
        # Corresponds to the JSON property `outputAudio`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :output_audio
      
        # Instructs the speech synthesizer on how to generate the output audio content.
        # If this audio config is supplied in a request, it overrides all existing text-
        # to-speech settings applied to the agent.
        # Corresponds to the JSON property `outputAudioConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2OutputAudioConfig]
        attr_accessor :output_audio_config
      
        # Represents the result of conversational query or event processing.
        # Corresponds to the JSON property `queryResult`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2QueryResult]
        attr_accessor :query_result
      
        # The unique identifier of the response. It can be used to locate a response in
        # the training example set or for reporting issues.
        # Corresponds to the JSON property `responseId`
        # @return [String]
        attr_accessor :response_id
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
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
      
      # A knowledge document to be used by a KnowledgeBase. For more information, see
      # the [knowledge base guide](https://cloud.google.com/dialogflow/docs/how/
      # knowledge-bases). Note: The `projects.agent.knowledgeBases.documents` resource
      # is deprecated; only use `projects.knowledgeBases.documents`.
      class GoogleCloudDialogflowV2Document
        include Google::Apis::Core::Hashable
      
        # The URI where the file content is located. For documents stored in Google
        # Cloud Storage, these URIs must have the form `gs:///`. NOTE: External URLs
        # must correspond to public webpages, i.e., they must be indexed by Google
        # Search. In particular, URLs for showing documents in Google Cloud Storage (i.e.
        # the URL in your browser) are not supported. Instead use the `gs://` format
        # URI described above.
        # Corresponds to the JSON property `contentUri`
        # @return [String]
        attr_accessor :content_uri
      
        # Required. The display name of the document. The name must be 1024 bytes or
        # less; otherwise, the creation request fails.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. If true, we try to automatically reload the document every day (at a
        # time picked by the system). If false or unspecified, we don't try to
        # automatically reload the document. Currently you can only enable automatic
        # reload for documents sourced from a public url, see `source` field for the
        # source types. Reload status can be tracked in `latest_reload_status`. If a
        # reload fails, we will keep the document unchanged. If a reload fails with
        # internal errors, the system will try to reload the document on the next day.
        # If a reload fails with non-retriable errors (e.g. PERMISION_DENIED), the
        # system will not try to reload the document anymore. You need to manually
        # reload the document successfully by calling `ReloadDocument` and clear the
        # errors.
        # Corresponds to the JSON property `enableAutoReload`
        # @return [Boolean]
        attr_accessor :enable_auto_reload
        alias_method :enable_auto_reload?, :enable_auto_reload
      
        # Required. The knowledge type of document content.
        # Corresponds to the JSON property `knowledgeTypes`
        # @return [Array<String>]
        attr_accessor :knowledge_types
      
        # The status of a reload attempt.
        # Corresponds to the JSON property `latestReloadStatus`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2DocumentReloadStatus]
        attr_accessor :latest_reload_status
      
        # Optional. Metadata for the document. The metadata supports arbitrary key-value
        # pairs. Suggested use cases include storing a document's title, an external URL
        # distinct from the document's content_uri, etc. The max size of a `key` or a `
        # value` of the metadata is 1024 bytes.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,String>]
        attr_accessor :metadata
      
        # Required. The MIME type of this document.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # Optional. The document resource name. The name must be empty when creating a
        # document. Format: `projects//locations//knowledgeBases//documents/`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The raw content of the document. This field is only permitted for
        # EXTRACTIVE_QA and FAQ knowledge types.
        # Corresponds to the JSON property `rawContent`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :raw_content
      
        # Output only. The current state of the document.
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
      
      # The status of a reload attempt.
      class GoogleCloudDialogflowV2DocumentReloadStatus
        include Google::Apis::Core::Hashable
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::DialogflowV2::GoogleRpcStatus]
        attr_accessor :status
      
        # The time of a reload attempt. This reload may have been triggered
        # automatically or manually and may not have succeeded.
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
      
      # The message in the response that indicates the parameters of DTMF.
      class GoogleCloudDialogflowV2DtmfParameters
        include Google::Apis::Core::Hashable
      
        # Indicates whether DTMF input can be handled in the next request.
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
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EntityTypeEntity>]
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
      
      # This message is a wrapper around a collection of entity types.
      class GoogleCloudDialogflowV2EntityTypeBatch
        include Google::Apis::Core::Hashable
      
        # A collection of entity types.
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
      
      # You can create multiple versions of your agent and publish them to separate
      # environments. When you edit an agent, you are editing the draft agent. At any
      # point, you can save the draft agent as an agent version, which is an immutable
      # snapshot of your agent. When you save the draft agent, it is published to the
      # default environment. When you create agent versions, you can publish them to
      # custom environments. You can create a variety of custom environments for: -
      # testing - development - production - etc. For more information, see the [
      # versions and environments guide](https://cloud.google.com/dialogflow/docs/
      # agents-versions).
      class GoogleCloudDialogflowV2Environment
        include Google::Apis::Core::Hashable
      
        # Optional. The agent version loaded into this environment. Supported formats: -
        # `projects//agent/versions/` - `projects//locations//agent/versions/`
        # Corresponds to the JSON property `agentVersion`
        # @return [String]
        attr_accessor :agent_version
      
        # Optional. The developer-provided description for this environment. The maximum
        # length is 500 characters. If exceeded, the request is rejected.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # By default, your agent responds to a matched intent with a static response. As
        # an alternative, you can provide a more dynamic response by using fulfillment.
        # When you enable fulfillment for an intent, Dialogflow responds to that intent
        # by calling a service that you define. For example, if an end-user wants to
        # schedule a haircut on Friday, your service can check your database and respond
        # to the end-user with availability information for Friday. For more information,
        # see the [fulfillment guide](https://cloud.google.com/dialogflow/docs/
        # fulfillment-overview).
        # Corresponds to the JSON property `fulfillment`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Fulfillment]
        attr_accessor :fulfillment
      
        # Output only. The unique identifier of this agent environment. Supported
        # formats: - `projects//agent/environments/` - `projects//locations//agent/
        # environments/` The environment ID for the default environment is `-`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The state of this environment. This field is read-only, i.e., it
        # cannot be set by create and update methods.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Instructs the speech synthesizer on how to generate the output audio content.
        # Corresponds to the JSON property `textToSpeechSettings`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2TextToSpeechSettings]
        attr_accessor :text_to_speech_settings
      
        # Output only. The last update time of this environment. This field is read-only,
        # i.e., it cannot be set by create and update methods.
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
      
      # The response message for Environments.GetEnvironmentHistory.
      class GoogleCloudDialogflowV2EnvironmentHistory
        include Google::Apis::Core::Hashable
      
        # Output only. The list of agent environments. There will be a maximum number of
        # items returned based on the page_size field in the request.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EnvironmentHistoryEntry>]
        attr_accessor :entries
      
        # Output only. Token to retrieve the next page of results, or empty if there are
        # no more results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Output only. The name of the environment this history is for. Supported
        # formats: - `projects//agent/environments/` - `projects//locations//agent/
        # environments/` The environment ID for the default environment is `-`.
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
      
      # Represents an environment history entry.
      class GoogleCloudDialogflowV2EnvironmentHistoryEntry
        include Google::Apis::Core::Hashable
      
        # The agent version loaded into this environment history entry.
        # Corresponds to the JSON property `agentVersion`
        # @return [String]
        attr_accessor :agent_version
      
        # The creation time of this environment history entry.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The developer-provided description for this environment history entry.
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
      
      # The configuration for model evaluation.
      class GoogleCloudDialogflowV2EvaluationConfig
        include Google::Apis::Core::Hashable
      
        # Required. Datasets used for evaluation.
        # Corresponds to the JSON property `datasets`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2InputDataset>]
        attr_accessor :datasets
      
        # Smart compose specific configuration for evaluation job.
        # Corresponds to the JSON property `smartComposeConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EvaluationConfigSmartComposeConfig]
        attr_accessor :smart_compose_config
      
        # Smart reply specific configuration for evaluation job.
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
      
      # Smart compose specific configuration for evaluation job.
      class GoogleCloudDialogflowV2EvaluationConfigSmartComposeConfig
        include Google::Apis::Core::Hashable
      
        # The allowlist document resource name. Format: `projects//knowledgeBases//
        # documents/`. Only used for smart compose model.
        # Corresponds to the JSON property `allowlistDocument`
        # @return [String]
        attr_accessor :allowlist_document
      
        # Required. The model to be evaluated can return multiple results with
        # confidence score on each query. These results will be sorted by the descending
        # order of the scores and we only keep the first max_result_count results as the
        # final results to evaluate.
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
      
      # Smart reply specific configuration for evaluation job.
      class GoogleCloudDialogflowV2EvaluationConfigSmartReplyConfig
        include Google::Apis::Core::Hashable
      
        # The allowlist document resource name. Format: `projects//knowledgeBases//
        # documents/`. Only used for smart reply model.
        # Corresponds to the JSON property `allowlistDocument`
        # @return [String]
        attr_accessor :allowlist_document
      
        # Required. The model to be evaluated can return multiple results with
        # confidence score on each query. These results will be sorted by the descending
        # order of the scores and we only keep the first max_result_count results as the
        # final results to evaluate.
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
      
      # The request message for Agents.ExportAgent.
      class GoogleCloudDialogflowV2ExportAgentRequest
        include Google::Apis::Core::Hashable
      
        # Required. The [Google Cloud Storage](https://cloud.google.com/storage/docs/)
        # URI to export the agent to. The format of this URI must be `gs:///`. If left
        # unspecified, the serialized agent is returned inline. Dialogflow performs a
        # write operation for the Cloud Storage object on the caller's behalf, so your
        # request authentication must have write permissions for the object. For more
        # information, see [Dialogflow access control](https://cloud.google.com/
        # dialogflow/cx/docs/concept/access-control#storage).
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
      
      # Request message for Documents.ExportDocument.
      class GoogleCloudDialogflowV2ExportDocumentRequest
        include Google::Apis::Core::Hashable
      
        # When enabled, export the full content of the document including empirical
        # probability.
        # Corresponds to the JSON property `exportFullContent`
        # @return [Boolean]
        attr_accessor :export_full_content
        alias_method :export_full_content?, :export_full_content
      
        # Google Cloud Storage location for the output.
        # Corresponds to the JSON property `gcsDestination`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2GcsDestination]
        attr_accessor :gcs_destination
      
        # When enabled, export the smart messaging allowlist document for partial update.
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
      
      # Metadata related to the Export Data Operations (e.g. ExportDocument).
      class GoogleCloudDialogflowV2ExportOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Google Cloud Storage location for the output.
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
      
      # By default, your agent responds to a matched intent with a static response. As
      # an alternative, you can provide a more dynamic response by using fulfillment.
      # When you enable fulfillment for an intent, Dialogflow responds to that intent
      # by calling a service that you define. For example, if an end-user wants to
      # schedule a haircut on Friday, your service can check your database and respond
      # to the end-user with availability information for Friday. For more information,
      # see the [fulfillment guide](https://cloud.google.com/dialogflow/docs/
      # fulfillment-overview).
      class GoogleCloudDialogflowV2Fulfillment
        include Google::Apis::Core::Hashable
      
        # Optional. The human-readable name of the fulfillment, unique within the agent.
        # This field is not used for Fulfillment in an Environment.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. Whether fulfillment is enabled.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # Optional. The field defines whether the fulfillment is enabled for certain
        # features.
        # Corresponds to the JSON property `features`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2FulfillmentFeature>]
        attr_accessor :features
      
        # Represents configuration for a generic web service. Dialogflow supports two
        # mechanisms for authentications: - Basic authentication with username and
        # password. - Authentication with additional authentication headers. More
        # information could be found at: https://cloud.google.com/dialogflow/docs/
        # fulfillment-configure.
        # Corresponds to the JSON property `genericWebService`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2FulfillmentGenericWebService]
        attr_accessor :generic_web_service
      
        # Required. The unique identifier of the fulfillment. Supported formats: - `
        # projects//agent/fulfillment` - `projects//locations//agent/fulfillment` This
        # field is not used for Fulfillment in an Environment.
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
      
      # Whether fulfillment is enabled for the specific feature.
      class GoogleCloudDialogflowV2FulfillmentFeature
        include Google::Apis::Core::Hashable
      
        # The type of the feature that enabled for fulfillment.
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
      
      # Represents configuration for a generic web service. Dialogflow supports two
      # mechanisms for authentications: - Basic authentication with username and
      # password. - Authentication with additional authentication headers. More
      # information could be found at: https://cloud.google.com/dialogflow/docs/
      # fulfillment-configure.
      class GoogleCloudDialogflowV2FulfillmentGenericWebService
        include Google::Apis::Core::Hashable
      
        # Optional. Indicates if generic web service is created through Cloud Functions
        # integration. Defaults to false. is_cloud_function is deprecated. Cloud
        # functions can be configured by its uri as a regular web service now.
        # Corresponds to the JSON property `isCloudFunction`
        # @return [Boolean]
        attr_accessor :is_cloud_function
        alias_method :is_cloud_function?, :is_cloud_function
      
        # Optional. The password for HTTP Basic authentication.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # Optional. The HTTP request headers to send together with fulfillment requests.
        # Corresponds to the JSON property `requestHeaders`
        # @return [Hash<String,String>]
        attr_accessor :request_headers
      
        # Required. The fulfillment URI for receiving POST requests. It must use https
        # protocol.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        # Optional. The user name for HTTP Basic authentication.
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
      
      # Google Cloud Storage location for the inputs.
      class GoogleCloudDialogflowV2GcsSources
        include Google::Apis::Core::Hashable
      
        # Required. Google Cloud Storage URIs for the inputs. A URI is of the form: gs://
        # bucket/object-prefix-or-name Whether a prefix or name is used depends on the
        # use case.
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
      
      # Defines the Human Agent Assist to connect to a conversation.
      class GoogleCloudDialogflowV2HumanAgentAssistantConfig
        include Google::Apis::Core::Hashable
      
        # Detail human agent assistant config.
        # Corresponds to the JSON property `endUserSuggestionConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfig]
        attr_accessor :end_user_suggestion_config
      
        # Detail human agent assistant config.
        # Corresponds to the JSON property `humanAgentSuggestionConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfig]
        attr_accessor :human_agent_suggestion_config
      
        # Configuration for analyses to run on each conversation message.
        # Corresponds to the JSON property `messageAnalysisConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2HumanAgentAssistantConfigMessageAnalysisConfig]
        attr_accessor :message_analysis_config
      
        # Defines notification behavior.
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
      
      # Custom conversation models used in agent assist feature. Supported feature:
      # ARTICLE_SUGGESTION, SMART_COMPOSE, SMART_REPLY, CONVERSATION_SUMMARIZATION.
      class GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationModelConfig
        include Google::Apis::Core::Hashable
      
        # Conversation model resource name. Format: `projects//conversationModels/`.
        # Corresponds to the JSON property `model`
        # @return [String]
        attr_accessor :model
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @model = args[:model] if args.key?(:model)
        end
      end
      
      # Config to process conversation.
      class GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationProcessConfig
        include Google::Apis::Core::Hashable
      
        # Number of recent non-small-talk sentences to use as context for article and
        # FAQ suggestion
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
      
      # Configuration for analyses to run on each conversation message.
      class GoogleCloudDialogflowV2HumanAgentAssistantConfigMessageAnalysisConfig
        include Google::Apis::Core::Hashable
      
        # Enable entity extraction in conversation messages on [agent assist stage](
        # https://cloud.google.com/dialogflow/priv/docs/contact-center/basics#stages).
        # If unspecified, defaults to false. Currently, this feature is not general
        # available, please contact Google to get access.
        # Corresponds to the JSON property `enableEntityExtraction`
        # @return [Boolean]
        attr_accessor :enable_entity_extraction
        alias_method :enable_entity_extraction?, :enable_entity_extraction
      
        # Enable sentiment analysis in conversation messages on [agent assist stage](
        # https://cloud.google.com/dialogflow/priv/docs/contact-center/basics#stages).
        # If unspecified, defaults to false. Sentiment analysis inspects user input and
        # identifies the prevailing subjective opinion, especially to determine a user's
        # attitude as positive, negative, or neutral: https://cloud.google.com/natural-
        # language/docs/basics#sentiment_analysis For Participants.
        # StreamingAnalyzeContent method, result will be in
        # StreamingAnalyzeContentResponse.message.SentimentAnalysisResult. For
        # Participants.AnalyzeContent method, result will be in AnalyzeContentResponse.
        # message.SentimentAnalysisResult For Conversations.ListMessages method, result
        # will be in ListMessagesResponse.messages.SentimentAnalysisResult If Pub/Sub
        # notification is configured, result will be in ConversationEvent.
        # new_message_payload.SentimentAnalysisResult.
        # Corresponds to the JSON property `enableSentimentAnalysis`
        # @return [Boolean]
        attr_accessor :enable_sentiment_analysis
        alias_method :enable_sentiment_analysis?, :enable_sentiment_analysis
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_entity_extraction = args[:enable_entity_extraction] if args.key?(:enable_entity_extraction)
          @enable_sentiment_analysis = args[:enable_sentiment_analysis] if args.key?(:enable_sentiment_analysis)
        end
      end
      
      # Detail human agent assistant config.
      class GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionConfig
        include Google::Apis::Core::Hashable
      
        # Configuration of different suggestion features. One feature can have only one
        # config.
        # Corresponds to the JSON property `featureConfigs`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfig>]
        attr_accessor :feature_configs
      
        # If `group_suggestion_responses` is false, and there are multiple `
        # feature_configs` in `event based suggestion` or StreamingAnalyzeContent, we
        # will try to deliver suggestions to customers as soon as we get new suggestion.
        # Different type of suggestions based on the same context will be in separate
        # Pub/Sub event or `StreamingAnalyzeContentResponse`. If `
        # group_suggestion_responses` set to true. All the suggestions to the same
        # participant based on the same context will be grouped into a single Pub/Sub
        # event or StreamingAnalyzeContentResponse.
        # Corresponds to the JSON property `groupSuggestionResponses`
        # @return [Boolean]
        attr_accessor :group_suggestion_responses
        alias_method :group_suggestion_responses?, :group_suggestion_responses
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @feature_configs = args[:feature_configs] if args.key?(:feature_configs)
          @group_suggestion_responses = args[:group_suggestion_responses] if args.key?(:group_suggestion_responses)
        end
      end
      
      # Config for suggestion features.
      class GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionFeatureConfig
        include Google::Apis::Core::Hashable
      
        # Custom conversation models used in agent assist feature. Supported feature:
        # ARTICLE_SUGGESTION, SMART_COMPOSE, SMART_REPLY, CONVERSATION_SUMMARIZATION.
        # Corresponds to the JSON property `conversationModelConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationModelConfig]
        attr_accessor :conversation_model_config
      
        # Config to process conversation.
        # Corresponds to the JSON property `conversationProcessConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2HumanAgentAssistantConfigConversationProcessConfig]
        attr_accessor :conversation_process_config
      
        # Automatically iterates all participants and tries to compile suggestions.
        # Supported features: ARTICLE_SUGGESTION, FAQ, DIALOGFLOW_ASSIST.
        # Corresponds to the JSON property `enableEventBasedSuggestion`
        # @return [Boolean]
        attr_accessor :enable_event_based_suggestion
        alias_method :enable_event_based_suggestion?, :enable_event_based_suggestion
      
        # Config for suggestion query.
        # Corresponds to the JSON property `queryConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfig]
        attr_accessor :query_config
      
        # The type of Human Agent Assistant API suggestion to perform, and the maximum
        # number of results to return for that type. Multiple `Feature` objects can be
        # specified in the `features` list.
        # Corresponds to the JSON property `suggestionFeature`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestionFeature]
        attr_accessor :suggestion_feature
      
        # Settings of suggestion trigger.
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
          @enable_event_based_suggestion = args[:enable_event_based_suggestion] if args.key?(:enable_event_based_suggestion)
          @query_config = args[:query_config] if args.key?(:query_config)
          @suggestion_feature = args[:suggestion_feature] if args.key?(:suggestion_feature)
          @suggestion_trigger_settings = args[:suggestion_trigger_settings] if args.key?(:suggestion_trigger_settings)
        end
      end
      
      # Config for suggestion query.
      class GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfig
        include Google::Apis::Core::Hashable
      
        # Confidence threshold of query result. Agent Assist gives each suggestion a
        # score in the range [0.0, 1.0], based on the relevance between the suggestion
        # and the current conversation context. A score of 0.0 has no relevance, while a
        # score of 1.0 has high relevance. Only suggestions with a score greater than or
        # equal to the value of this field are included in the results. For a baseline
        # model (the default), the recommended value is in the range [0.05, 0.1]. For a
        # custom model, there is no recommended value. Tune this value by starting from
        # a very low value and slowly increasing until you have desired results. If this
        # field is not set, it defaults to 0.0, which means that all suggestions are
        # returned. Supported features: ARTICLE_SUGGESTION, FAQ, SMART_REPLY,
        # SMART_COMPOSE.
        # Corresponds to the JSON property `confidenceThreshold`
        # @return [Float]
        attr_accessor :confidence_threshold
      
        # Settings that determine how to filter recent conversation context when
        # generating suggestions.
        # Corresponds to the JSON property `contextFilterSettings`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettings]
        attr_accessor :context_filter_settings
      
        # Dialogflow source setting. Supported feature: DIALOGFLOW_ASSIST.
        # Corresponds to the JSON property `dialogflowQuerySource`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource]
        attr_accessor :dialogflow_query_source
      
        # Document source settings. Supported features: SMART_REPLY, SMART_COMPOSE.
        # Corresponds to the JSON property `documentQuerySource`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDocumentQuerySource]
        attr_accessor :document_query_source
      
        # Knowledge base source settings. Supported features: ARTICLE_SUGGESTION, FAQ.
        # Corresponds to the JSON property `knowledgeBaseQuerySource`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySource]
        attr_accessor :knowledge_base_query_source
      
        # Maximum number of results to return. Currently, if unset, defaults to 10. And
        # the max number is 20.
        # Corresponds to the JSON property `maxResults`
        # @return [Fixnum]
        attr_accessor :max_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence_threshold = args[:confidence_threshold] if args.key?(:confidence_threshold)
          @context_filter_settings = args[:context_filter_settings] if args.key?(:context_filter_settings)
          @dialogflow_query_source = args[:dialogflow_query_source] if args.key?(:dialogflow_query_source)
          @document_query_source = args[:document_query_source] if args.key?(:document_query_source)
          @knowledge_base_query_source = args[:knowledge_base_query_source] if args.key?(:knowledge_base_query_source)
          @max_results = args[:max_results] if args.key?(:max_results)
        end
      end
      
      # Settings that determine how to filter recent conversation context when
      # generating suggestions.
      class GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigContextFilterSettings
        include Google::Apis::Core::Hashable
      
        # If set to true, the last message from virtual agent (hand off message) and the
        # message before it (trigger message of hand off) are dropped.
        # Corresponds to the JSON property `dropHandoffMessages`
        # @return [Boolean]
        attr_accessor :drop_handoff_messages
        alias_method :drop_handoff_messages?, :drop_handoff_messages
      
        # If set to true, all messages from ivr stage are dropped.
        # Corresponds to the JSON property `dropIvrMessages`
        # @return [Boolean]
        attr_accessor :drop_ivr_messages
        alias_method :drop_ivr_messages?, :drop_ivr_messages
      
        # If set to true, all messages from virtual agent are dropped.
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
      
      # Dialogflow source setting. Supported feature: DIALOGFLOW_ASSIST.
      class GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDialogflowQuerySource
        include Google::Apis::Core::Hashable
      
        # Required. The name of a Dialogflow virtual agent used for end user side intent
        # detection and suggestion. Format: `projects//locations//agent`. When multiple
        # agents are allowed in the same Dialogflow project.
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
      
      # Document source settings. Supported features: SMART_REPLY, SMART_COMPOSE.
      class GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigDocumentQuerySource
        include Google::Apis::Core::Hashable
      
        # Required. Knowledge documents to query from. Format: `projects//locations//
        # knowledgeBases//documents/`. Currently, at most 5 documents are supported.
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
      
      # Knowledge base source settings. Supported features: ARTICLE_SUGGESTION, FAQ.
      class GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionQueryConfigKnowledgeBaseQuerySource
        include Google::Apis::Core::Hashable
      
        # Required. Knowledge bases to query. Format: `projects//locations//
        # knowledgeBases/`. Currently, at most 5 knowledge bases are supported.
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
      
      # Settings of suggestion trigger.
      class GoogleCloudDialogflowV2HumanAgentAssistantConfigSuggestionTriggerSettings
        include Google::Apis::Core::Hashable
      
        # Do not trigger if last utterance is small talk.
        # Corresponds to the JSON property `noSmalltalk`
        # @return [Boolean]
        attr_accessor :no_smalltalk
        alias_method :no_smalltalk?, :no_smalltalk
      
        # Only trigger suggestion if participant role of last utterance is END_USER.
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
      
      # Defines the hand off to a live agent, typically on which external agent
      # service provider to connect to a conversation. Currently, this feature is not
      # general available, please contact Google to get access.
      class GoogleCloudDialogflowV2HumanAgentHandoffConfig
        include Google::Apis::Core::Hashable
      
        # Configuration specific to LivePerson (https://www.liveperson.com).
        # Corresponds to the JSON property `livePersonConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2HumanAgentHandoffConfigLivePersonConfig]
        attr_accessor :live_person_config
      
        # Configuration specific to Salesforce Live Agent.
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
      
      # Configuration specific to LivePerson (https://www.liveperson.com).
      class GoogleCloudDialogflowV2HumanAgentHandoffConfigLivePersonConfig
        include Google::Apis::Core::Hashable
      
        # Required. Account number of the LivePerson account to connect. This is the
        # account number you input at the login page.
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
      
      # Configuration specific to Salesforce Live Agent.
      class GoogleCloudDialogflowV2HumanAgentHandoffConfigSalesforceLiveAgentConfig
        include Google::Apis::Core::Hashable
      
        # Required. Live Agent chat button ID.
        # Corresponds to the JSON property `buttonId`
        # @return [String]
        attr_accessor :button_id
      
        # Required. Live Agent deployment ID.
        # Corresponds to the JSON property `deploymentId`
        # @return [String]
        attr_accessor :deployment_id
      
        # Required. Domain of the Live Agent endpoint for this agent. You can find the
        # endpoint URL in the `Live Agent settings` page. For example if URL has the
        # form https://d.la4-c2-phx.salesforceliveagent.com/..., you should fill in d.
        # la4-c2-phx.salesforceliveagent.com.
        # Corresponds to the JSON property `endpointDomain`
        # @return [String]
        attr_accessor :endpoint_domain
      
        # Required. The organization ID of the Salesforce account.
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
      
      # The request message for Agents.ImportAgent.
      class GoogleCloudDialogflowV2ImportAgentRequest
        include Google::Apis::Core::Hashable
      
        # Zip compressed raw byte content for agent.
        # Corresponds to the JSON property `agentContent`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :agent_content
      
        # The URI to a Google Cloud Storage file containing the agent to import. Note:
        # The URI must start with "gs://". Dialogflow performs a read operation for the
        # Cloud Storage object on the caller's behalf, so your request authentication
        # must have read permissions for the object. For more information, see [
        # Dialogflow access control](https://cloud.google.com/dialogflow/cx/docs/concept/
        # access-control#storage).
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
      
      # The request message for ConversationDatasets.ImportConversationData.
      class GoogleCloudDialogflowV2ImportConversationDataRequest
        include Google::Apis::Core::Hashable
      
        # Represents the configuration of importing a set of conversation files in
        # Google Cloud Storage.
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
      
      # The template used for importing documents.
      class GoogleCloudDialogflowV2ImportDocumentTemplate
        include Google::Apis::Core::Hashable
      
        # Required. The knowledge type of document content.
        # Corresponds to the JSON property `knowledgeTypes`
        # @return [Array<String>]
        attr_accessor :knowledge_types
      
        # Metadata for the document. The metadata supports arbitrary key-value pairs.
        # Suggested use cases include storing a document's title, an external URL
        # distinct from the document's content_uri, etc. The max size of a `key` or a `
        # value` of the metadata is 1024 bytes.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,String>]
        attr_accessor :metadata
      
        # Required. The MIME type of the document.
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
      
      # Request message for Documents.ImportDocuments.
      class GoogleCloudDialogflowV2ImportDocumentsRequest
        include Google::Apis::Core::Hashable
      
        # The template used for importing documents.
        # Corresponds to the JSON property `documentTemplate`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ImportDocumentTemplate]
        attr_accessor :document_template
      
        # Google Cloud Storage location for the inputs.
        # Corresponds to the JSON property `gcsSource`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2GcsSources]
        attr_accessor :gcs_source
      
        # Whether to import custom metadata from Google Cloud Storage. Only valid when
        # the document source is Google Cloud Storage URI.
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
      
      # Response message for Documents.ImportDocuments.
      class GoogleCloudDialogflowV2ImportDocumentsResponse
        include Google::Apis::Core::Hashable
      
        # Includes details about skipped documents or any other warnings.
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
      
      # Instructs the speech recognizer how to process the audio content.
      class GoogleCloudDialogflowV2InputAudioConfig
        include Google::Apis::Core::Hashable
      
        # Required. Audio encoding of the audio content to process.
        # Corresponds to the JSON property `audioEncoding`
        # @return [String]
        attr_accessor :audio_encoding
      
        # Only used in Participants.AnalyzeContent and Participants.
        # StreamingAnalyzeContent. If `false` and recognition doesn't return any result,
        # trigger `NO_SPEECH_RECOGNIZED` event to Dialogflow agent.
        # Corresponds to the JSON property `disableNoSpeechRecognizedEvent`
        # @return [Boolean]
        attr_accessor :disable_no_speech_recognized_event
        alias_method :disable_no_speech_recognized_event?, :disable_no_speech_recognized_event
      
        # If `true`, Dialogflow returns SpeechWordInfo in StreamingRecognitionResult
        # with information about the recognized speech words, e.g. start and end time
        # offsets. If false or unspecified, Speech doesn't return any word-level
        # information.
        # Corresponds to the JSON property `enableWordInfo`
        # @return [Boolean]
        attr_accessor :enable_word_info
        alias_method :enable_word_info?, :enable_word_info
      
        # Required. The language of the supplied audio. Dialogflow does not do
        # translations. See [Language Support](https://cloud.google.com/dialogflow/docs/
        # reference/language) for a list of the currently supported language codes. Note
        # that queries in the same session do not necessarily need to specify the same
        # language.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Which Speech model to select for the given request. Select the model best
        # suited to your domain to get best results. If a model is not explicitly
        # specified, then we auto-select a model based on the parameters in the
        # InputAudioConfig. If enhanced speech model is enabled for the agent and an
        # enhanced version of the specified model for the language does not exist, then
        # the speech is recognized using the standard version of the specified model.
        # Refer to [Cloud Speech API documentation](https://cloud.google.com/speech-to-
        # text/docs/basics#select-model) for more details.
        # Corresponds to the JSON property `model`
        # @return [String]
        attr_accessor :model
      
        # Which variant of the Speech model to use.
        # Corresponds to the JSON property `modelVariant`
        # @return [String]
        attr_accessor :model_variant
      
        # A list of strings containing words and phrases that the speech recognizer
        # should recognize with higher likelihood. See [the Cloud Speech documentation](
        # https://cloud.google.com/speech-to-text/docs/basics#phrase-hints) for more
        # details. This field is deprecated. Please use [speech_contexts]() instead. If
        # you specify both [phrase_hints]() and [speech_contexts](), Dialogflow will
        # treat the [phrase_hints]() as a single additional [SpeechContext]().
        # Corresponds to the JSON property `phraseHints`
        # @return [Array<String>]
        attr_accessor :phrase_hints
      
        # Required. Sample rate (in Hertz) of the audio content sent in the query. Refer
        # to [Cloud Speech API documentation](https://cloud.google.com/speech-to-text/
        # docs/basics) for more details.
        # Corresponds to the JSON property `sampleRateHertz`
        # @return [Fixnum]
        attr_accessor :sample_rate_hertz
      
        # If `false` (default), recognition does not cease until the client closes the
        # stream. If `true`, the recognizer will detect a single spoken utterance in
        # input audio. Recognition ceases when it detects the audio's voice has stopped
        # or paused. In this case, once a detected intent is received, the client should
        # close the stream and start a new request with a new stream as needed. Note:
        # This setting is relevant only for streaming methods. Note: When specified,
        # InputAudioConfig.single_utterance takes precedence over
        # StreamingDetectIntentRequest.single_utterance.
        # Corresponds to the JSON property `singleUtterance`
        # @return [Boolean]
        attr_accessor :single_utterance
        alias_method :single_utterance?, :single_utterance
      
        # Context information to assist speech recognition. See [the Cloud Speech
        # documentation](https://cloud.google.com/speech-to-text/docs/basics#phrase-
        # hints) for more details.
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
          @enable_word_info = args[:enable_word_info] if args.key?(:enable_word_info)
          @language_code = args[:language_code] if args.key?(:language_code)
          @model = args[:model] if args.key?(:model)
          @model_variant = args[:model_variant] if args.key?(:model_variant)
          @phrase_hints = args[:phrase_hints] if args.key?(:phrase_hints)
          @sample_rate_hertz = args[:sample_rate_hertz] if args.key?(:sample_rate_hertz)
          @single_utterance = args[:single_utterance] if args.key?(:single_utterance)
          @speech_contexts = args[:speech_contexts] if args.key?(:speech_contexts)
        end
      end
      
      # Represents the configuration of importing a set of conversation files in
      # Google Cloud Storage.
      class GoogleCloudDialogflowV2InputConfig
        include Google::Apis::Core::Hashable
      
        # Google Cloud Storage location for the inputs.
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
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentFollowupIntentInfo>]
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
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessage>]
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
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context>]
        attr_accessor :output_contexts
      
        # Optional. The collection of parameters associated with the intent.
        # Corresponds to the JSON property `parameters`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentParameter>]
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
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentTrainingPhrase>]
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
      
      # This message is a wrapper around a collection of intents.
      class GoogleCloudDialogflowV2IntentBatch
        include Google::Apis::Core::Hashable
      
        # A collection of intents.
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageBasicCard]
        attr_accessor :basic_card
      
        # Browse Carousel Card for Actions on Google. https://developers.google.com/
        # actions/assistant/responses#browsing_carousel
        # Corresponds to the JSON property `browseCarouselCard`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageBrowseCarouselCard]
        attr_accessor :browse_carousel_card
      
        # The card response message.
        # Corresponds to the JSON property `card`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageCard]
        attr_accessor :card
      
        # The card for presenting a carousel of options to select from.
        # Corresponds to the JSON property `carouselSelect`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageCarouselSelect]
        attr_accessor :carousel_select
      
        # The image response message.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageImage]
        attr_accessor :image
      
        # The suggestion chip message that allows the user to jump out to the app or
        # website associated with this agent.
        # Corresponds to the JSON property `linkOutSuggestion`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageLinkOutSuggestion]
        attr_accessor :link_out_suggestion
      
        # The card for presenting a list of options to select from.
        # Corresponds to the JSON property `listSelect`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageListSelect]
        attr_accessor :list_select
      
        # The media content card for Actions on Google.
        # Corresponds to the JSON property `mediaContent`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageMediaContent]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageQuickReplies]
        attr_accessor :quick_replies
      
        # The collection of simple response candidates. This message in `QueryResult.
        # fulfillment_messages` and `WebhookResponse.fulfillment_messages` should
        # contain only one `SimpleResponse`.
        # Corresponds to the JSON property `simpleResponses`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageSimpleResponses]
        attr_accessor :simple_responses
      
        # The collection of suggestions.
        # Corresponds to the JSON property `suggestions`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageSuggestions]
        attr_accessor :suggestions
      
        # Table card for Actions on Google.
        # Corresponds to the JSON property `tableCard`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageTableCard]
        attr_accessor :table_card
      
        # The text response message.
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
      
      # The basic card message. Useful for displaying information.
      class GoogleCloudDialogflowV2IntentMessageBasicCard
        include Google::Apis::Core::Hashable
      
        # Optional. The collection of card buttons.
        # Corresponds to the JSON property `buttons`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageBasicCardButton>]
        attr_accessor :buttons
      
        # Required, unless image is present. The body text of the card.
        # Corresponds to the JSON property `formattedText`
        # @return [String]
        attr_accessor :formatted_text
      
        # The image response message.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageImage]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageBasicCardButtonOpenUriAction]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageImage]
        attr_accessor :image
      
        # Actions on Google action to open a given url.
        # Corresponds to the JSON property `openUriAction`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction]
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
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageCardButton>]
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
      
      # An item in the carousel.
      class GoogleCloudDialogflowV2IntentMessageCarouselSelectItem
        include Google::Apis::Core::Hashable
      
        # Optional. The body text of the card.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The image response message.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageImage]
        attr_accessor :image
      
        # Additional info about the select item for when it is triggered in a dialog.
        # Corresponds to the JSON property `info`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageSelectItemInfo]
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
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageListSelectItem>]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageImage]
        attr_accessor :image
      
        # Additional info about the select item for when it is triggered in a dialog.
        # Corresponds to the JSON property `info`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageSelectItemInfo]
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
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageMediaContentResponseMediaObject>]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageImage]
        attr_accessor :icon
      
        # The image response message.
        # Corresponds to the JSON property `largeImage`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageImage]
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
      
      # Table card for Actions on Google.
      class GoogleCloudDialogflowV2IntentMessageTableCard
        include Google::Apis::Core::Hashable
      
        # Optional. List of buttons for the card.
        # Corresponds to the JSON property `buttons`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageBasicCardButton>]
        attr_accessor :buttons
      
        # Optional. Display properties for the columns in this table.
        # Corresponds to the JSON property `columnProperties`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageColumnProperties>]
        attr_accessor :column_properties
      
        # The image response message.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageImage]
        attr_accessor :image
      
        # Optional. Rows in this table of data.
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageTableCardRow>]
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
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessageTableCardCell>]
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
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentTrainingPhrasePart>]
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
      
      # A knowledge base represents a collection of knowledge documents that you
      # provide to Dialogflow. Your knowledge documents contain information that may
      # be useful during conversations with end-users. Some Dialogflow features use
      # knowledge bases when looking for a response to an end-user input. For more
      # information, see the [knowledge base guide](https://cloud.google.com/
      # dialogflow/docs/how/knowledge-bases). Note: The `projects.agent.knowledgeBases`
      # resource is deprecated; only use `projects.knowledgeBases`.
      class GoogleCloudDialogflowV2KnowledgeBase
        include Google::Apis::Core::Hashable
      
        # Required. The display name of the knowledge base. The name must be 1024 bytes
        # or less; otherwise, the creation request fails.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Language which represents the KnowledgeBase. When the KnowledgeBase is created/
        # updated, expect this to be present for non en-us languages. When unspecified,
        # the default language code en-us applies.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # The knowledge base resource name. The name must be empty when creating a
        # knowledge base. Format: `projects//locations//knowledgeBases/`.
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
      
      # Metadata in google::longrunning::Operation for Knowledge operations.
      class GoogleCloudDialogflowV2KnowledgeOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Metadata related to the Export Data Operations (e.g. ExportDocument).
        # Corresponds to the JSON property `exportOperationMetadata`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ExportOperationMetadata]
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
      
      # Response message for AnswerRecords.ListAnswerRecords.
      class GoogleCloudDialogflowV2ListAnswerRecordsResponse
        include Google::Apis::Core::Hashable
      
        # The list of answer records.
        # Corresponds to the JSON property `answerRecords`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AnswerRecord>]
        attr_accessor :answer_records
      
        # A token to retrieve next page of results. Or empty if there are no more
        # results. Pass this value in the ListAnswerRecordsRequest.page_token field in
        # the subsequent call to `ListAnswerRecords` method to retrieve the next page of
        # results.
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
      
      # The response message for Contexts.ListContexts.
      class GoogleCloudDialogflowV2ListContextsResponse
        include Google::Apis::Core::Hashable
      
        # The list of contexts. There will be a maximum number of items returned based
        # on the page_size field in the request.
        # Corresponds to the JSON property `contexts`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context>]
        attr_accessor :contexts
      
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
          @contexts = args[:contexts] if args.key?(:contexts)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for ConversationDatasets.ListConversationDatasets.
      class GoogleCloudDialogflowV2ListConversationDatasetsResponse
        include Google::Apis::Core::Hashable
      
        # The list of datasets to return.
        # Corresponds to the JSON property `conversationDatasets`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationDataset>]
        attr_accessor :conversation_datasets
      
        # The token to use to retrieve the next page of results, or empty if there are
        # no more results in the list.
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
      
      # The response message for ConversationModels.ListConversationModelEvaluations
      class GoogleCloudDialogflowV2ListConversationModelEvaluationsResponse
        include Google::Apis::Core::Hashable
      
        # The list of evaluations to return.
        # Corresponds to the JSON property `conversationModelEvaluations`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationModelEvaluation>]
        attr_accessor :conversation_model_evaluations
      
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
          @conversation_model_evaluations = args[:conversation_model_evaluations] if args.key?(:conversation_model_evaluations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for ConversationModels.ListConversationModels
      class GoogleCloudDialogflowV2ListConversationModelsResponse
        include Google::Apis::Core::Hashable
      
        # The list of models to return.
        # Corresponds to the JSON property `conversationModels`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationModel>]
        attr_accessor :conversation_models
      
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
          @conversation_models = args[:conversation_models] if args.key?(:conversation_models)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for ConversationProfiles.ListConversationProfiles.
      class GoogleCloudDialogflowV2ListConversationProfilesResponse
        include Google::Apis::Core::Hashable
      
        # The list of project conversation profiles. There is a maximum number of items
        # returned based on the page_size field in the request.
        # Corresponds to the JSON property `conversationProfiles`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ConversationProfile>]
        attr_accessor :conversation_profiles
      
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
          @conversation_profiles = args[:conversation_profiles] if args.key?(:conversation_profiles)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for Conversations.ListConversations.
      class GoogleCloudDialogflowV2ListConversationsResponse
        include Google::Apis::Core::Hashable
      
        # The list of conversations. There will be a maximum number of items returned
        # based on the page_size field in the request.
        # Corresponds to the JSON property `conversations`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Conversation>]
        attr_accessor :conversations
      
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
          @conversations = args[:conversations] if args.key?(:conversations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for Documents.ListDocuments.
      class GoogleCloudDialogflowV2ListDocumentsResponse
        include Google::Apis::Core::Hashable
      
        # The list of documents.
        # Corresponds to the JSON property `documents`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Document>]
        attr_accessor :documents
      
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
          @documents = args[:documents] if args.key?(:documents)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for EntityTypes.ListEntityTypes.
      class GoogleCloudDialogflowV2ListEntityTypesResponse
        include Google::Apis::Core::Hashable
      
        # The list of agent entity types. There will be a maximum number of items
        # returned based on the page_size field in the request.
        # Corresponds to the JSON property `entityTypes`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EntityType>]
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
      class GoogleCloudDialogflowV2ListEnvironmentsResponse
        include Google::Apis::Core::Hashable
      
        # The list of agent environments. There will be a maximum number of items
        # returned based on the page_size field in the request.
        # Corresponds to the JSON property `environments`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Environment>]
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
      
      # The response message for Intents.ListIntents.
      class GoogleCloudDialogflowV2ListIntentsResponse
        include Google::Apis::Core::Hashable
      
        # The list of agent intents. There will be a maximum number of items returned
        # based on the page_size field in the request.
        # Corresponds to the JSON property `intents`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Intent>]
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
      
      # Response message for KnowledgeBases.ListKnowledgeBases.
      class GoogleCloudDialogflowV2ListKnowledgeBasesResponse
        include Google::Apis::Core::Hashable
      
        # The list of knowledge bases.
        # Corresponds to the JSON property `knowledgeBases`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2KnowledgeBase>]
        attr_accessor :knowledge_bases
      
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
          @knowledge_bases = args[:knowledge_bases] if args.key?(:knowledge_bases)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for Conversations.ListMessages.
      class GoogleCloudDialogflowV2ListMessagesResponse
        include Google::Apis::Core::Hashable
      
        # The list of messages. There will be a maximum number of items returned based
        # on the page_size field in the request. `messages` is sorted by `create_time`
        # in descending order.
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Message>]
        attr_accessor :messages
      
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
          @messages = args[:messages] if args.key?(:messages)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for Participants.ListParticipants.
      class GoogleCloudDialogflowV2ListParticipantsResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of participants. There is a maximum number of items returned based on
        # the page_size field in the request.
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
      
      # The response message for SessionEntityTypes.ListSessionEntityTypes.
      class GoogleCloudDialogflowV2ListSessionEntityTypesResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of session entity types. There will be a maximum number of items
        # returned based on the page_size field in the request.
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
      
      # The response message for Versions.ListVersions.
      class GoogleCloudDialogflowV2ListVersionsResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of agent versions. There will be a maximum number of items returned
        # based on the page_size field in the request.
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
      
      # Defines logging behavior for conversation lifecycle events.
      class GoogleCloudDialogflowV2LoggingConfig
        include Google::Apis::Core::Hashable
      
        # Whether to log conversation events like CONVERSATION_STARTED to Stackdriver in
        # the conversation project as JSON format ConversationEvent protos.
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2MessageAnnotation]
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
      
      # Defines notification behavior.
      class GoogleCloudDialogflowV2NotificationConfig
        include Google::Apis::Core::Hashable
      
        # Format of message.
        # Corresponds to the JSON property `messageFormat`
        # @return [String]
        attr_accessor :message_format
      
        # Name of the Pub/Sub topic to publish conversation events like
        # CONVERSATION_STARTED as serialized ConversationEvent protos. For telephony
        # integration to receive notification, make sure either this topic is in the
        # same project as the conversation or you grant `service-@gcp-sa-dialogflow.iam.
        # gserviceaccount.com` the `Dialogflow Service Agent` role in the topic project.
        # For chat integration to receive notification, make sure API caller has been
        # granted the `Dialogflow Service Agent` role for the topic. Format: `projects//
        # locations//topics/`.
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
      
      # Represents the natural language speech audio to be played to the end user.
      class GoogleCloudDialogflowV2OutputAudio
        include Google::Apis::Core::Hashable
      
        # The natural language speech audio.
        # Corresponds to the JSON property `audio`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :audio
      
        # Instructs the speech synthesizer on how to generate the output audio content.
        # If this audio config is supplied in a request, it overrides all existing text-
        # to-speech settings applied to the agent.
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
      
      # Instructs the speech synthesizer on how to generate the output audio content.
      # If this audio config is supplied in a request, it overrides all existing text-
      # to-speech settings applied to the agent.
      class GoogleCloudDialogflowV2OutputAudioConfig
        include Google::Apis::Core::Hashable
      
        # Required. Audio encoding of the synthesized audio content.
        # Corresponds to the JSON property `audioEncoding`
        # @return [String]
        attr_accessor :audio_encoding
      
        # The synthesis sample rate (in hertz) for this audio. If not provided, then the
        # synthesizer will use the default sample rate based on the audio encoding. If
        # this is different from the voice's natural sample rate, then the synthesizer
        # will honor this request by converting to the desired sample rate (which might
        # result in worse audio quality).
        # Corresponds to the JSON property `sampleRateHertz`
        # @return [Fixnum]
        attr_accessor :sample_rate_hertz
      
        # Configuration of how speech should be synthesized.
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
      
      # Represents a conversation participant (human agent, virtual agent, end-user).
      class GoogleCloudDialogflowV2Participant
        include Google::Apis::Core::Hashable
      
        # Optional. Key-value filters on the metadata of documents returned by article
        # suggestion. If specified, article suggestion only returns suggested documents
        # that match all filters in their Document.metadata. Multiple values for a
        # metadata key should be concatenated by comma. For example, filters to match
        # all documents that have 'US' or 'CA' in their market metadata values and '
        # agent' in their user metadata values will be ``` documents_metadata_filters `
        # key: "market" value: "US,CA" ` documents_metadata_filters ` key: "user" value:
        # "agent" ` ```
        # Corresponds to the JSON property `documentsMetadataFilters`
        # @return [Hash<String,String>]
        attr_accessor :documents_metadata_filters
      
        # Optional. The unique identifier of this participant. Format: `projects//
        # locations//conversations//participants/`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Obfuscated user id that should be associated with the created
        # participant. You can specify a user id as follows: 1. If you set this field in
        # CreateParticipantRequest or UpdateParticipantRequest, Dialogflow adds the
        # obfuscated user id with the participant. 2. If you set this field in
        # AnalyzeContent or StreamingAnalyzeContent, Dialogflow will update Participant.
        # obfuscated_external_user_id. Dialogflow returns an error if you try to add a
        # user id for a non-END_USER participant. Dialogflow uses this user id for
        # billing and measurement purposes. For example, Dialogflow determines whether a
        # user in one conversation returned in a later conversation. Note: * Please
        # never pass raw user ids to Dialogflow. Always obfuscate your user id first. *
        # Dialogflow only accepts a UTF-8 encoded string, e.g., a hex digest of a hash
        # function like SHA-512. * The length of the user id must be <= 256 characters.
        # Corresponds to the JSON property `obfuscatedExternalUserId`
        # @return [String]
        attr_accessor :obfuscated_external_user_id
      
        # Immutable. The role this participant plays in the conversation. This field
        # must be set during participant creation and is then immutable.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        # Optional. Label applied to streams representing this participant in SIPREC XML
        # metadata and SDP. This is used to assign transcriptions from that media stream
        # to this participant. This field can be updated.
        # Corresponds to the JSON property `sipRecordingMediaLabel`
        # @return [String]
        attr_accessor :sip_recording_media_label
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @documents_metadata_filters = args[:documents_metadata_filters] if args.key?(:documents_metadata_filters)
          @name = args[:name] if args.key?(:name)
          @obfuscated_external_user_id = args[:obfuscated_external_user_id] if args.key?(:obfuscated_external_user_id)
          @role = args[:role] if args.key?(:role)
          @sip_recording_media_label = args[:sip_recording_media_label] if args.key?(:sip_recording_media_label)
        end
      end
      
      # Represents the query input. It can contain either: 1. An audio config which
      # instructs the speech recognizer how to process the speech audio. 2. A
      # conversational query in the form of text,. 3. An event that specifies which
      # intent to trigger.
      class GoogleCloudDialogflowV2QueryInput
        include Google::Apis::Core::Hashable
      
        # Instructs the speech recognizer how to process the audio content.
        # Corresponds to the JSON property `audioConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2InputAudioConfig]
        attr_accessor :audio_config
      
        # Events allow for matching intents by event name instead of the natural
        # language input. For instance, input `` can trigger a personalized welcome
        # response. The parameter `name` may be used by the agent in the response: `"
        # Hello #welcome_event.name! What can I do for you today?"`.
        # Corresponds to the JSON property `event`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EventInput]
        attr_accessor :event
      
        # ============================================================================
        # Auxiliary proto messages. Represents the natural language text to be processed.
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
      
      # Represents the parameters of the conversational query.
      class GoogleCloudDialogflowV2QueryParameters
        include Google::Apis::Core::Hashable
      
        # The collection of contexts to be activated before this query is executed.
        # Corresponds to the JSON property `contexts`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context>]
        attr_accessor :contexts
      
        # An object that represents a latitude/longitude pair. This is expressed as a
        # pair of doubles to represent degrees latitude and degrees longitude. Unless
        # specified otherwise, this object must conform to the WGS84 standard. Values
        # must be within normalized ranges.
        # Corresponds to the JSON property `geoLocation`
        # @return [Google::Apis::DialogflowV2::GoogleTypeLatLng]
        attr_accessor :geo_location
      
        # This field can be used to pass custom data to your webhook. Arbitrary JSON
        # objects are supported. If supplied, the value is used to populate the `
        # WebhookRequest.original_detect_intent_request.payload` field sent to your
        # webhook.
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        # Specifies whether to delete all contexts in the current session before the new
        # ones are activated.
        # Corresponds to the JSON property `resetContexts`
        # @return [Boolean]
        attr_accessor :reset_contexts
        alias_method :reset_contexts?, :reset_contexts
      
        # Configures the types of sentiment analysis to perform.
        # Corresponds to the JSON property `sentimentAnalysisRequestConfig`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SentimentAnalysisRequestConfig]
        attr_accessor :sentiment_analysis_request_config
      
        # Additional session entity types to replace or extend developer entity types
        # with. The entity synonyms apply to all languages and persist for the session
        # of this query.
        # Corresponds to the JSON property `sessionEntityTypes`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType>]
        attr_accessor :session_entity_types
      
        # The time zone of this conversational query from the [time zone database](https:
        # //www.iana.org/time-zones), e.g., America/New_York, Europe/Paris. If not
        # provided, the time zone specified in agent settings is used.
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        # This field can be used to pass HTTP headers for a webhook call. These headers
        # will be sent to webhook along with the headers that have been configured
        # through the Dialogflow web console. The headers defined within this field will
        # overwrite the headers configured through the Dialogflow console if there is a
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
          @contexts = args[:contexts] if args.key?(:contexts)
          @geo_location = args[:geo_location] if args.key?(:geo_location)
          @payload = args[:payload] if args.key?(:payload)
          @reset_contexts = args[:reset_contexts] if args.key?(:reset_contexts)
          @sentiment_analysis_request_config = args[:sentiment_analysis_request_config] if args.key?(:sentiment_analysis_request_config)
          @session_entity_types = args[:session_entity_types] if args.key?(:session_entity_types)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
          @webhook_headers = args[:webhook_headers] if args.key?(:webhook_headers)
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
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessage>]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Intent]
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
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context>]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SentimentAnalysisResult]
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
      
      # Request message for Documents.ReloadDocument.
      class GoogleCloudDialogflowV2ReloadDocumentRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The path of gcs source file for reloading document content. For now,
        # only gcs uri is supported. For documents stored in Google Cloud Storage, these
        # URIs must have the form `gs:///`.
        # Corresponds to the JSON property `contentUri`
        # @return [String]
        attr_accessor :content_uri
      
        # Optional. Whether to import custom metadata from Google Cloud Storage. Only
        # valid when the document source is Google Cloud Storage URI.
        # Corresponds to the JSON property `importGcsCustomMetadata`
        # @return [Boolean]
        attr_accessor :import_gcs_custom_metadata
        alias_method :import_gcs_custom_metadata?, :import_gcs_custom_metadata
      
        # Optional. When enabled, the reload request is to apply partial update to the
        # smart messaging allowlist.
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
      
      # The request message for Agents.RestoreAgent.
      class GoogleCloudDialogflowV2RestoreAgentRequest
        include Google::Apis::Core::Hashable
      
        # Zip compressed raw byte content for agent.
        # Corresponds to the JSON property `agentContent`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :agent_content
      
        # The URI to a Google Cloud Storage file containing the agent to restore. Note:
        # The URI must start with "gs://". Dialogflow performs a read operation for the
        # Cloud Storage object on the caller's behalf, so your request authentication
        # must have read permissions for the object. For more information, see [
        # Dialogflow access control](https://cloud.google.com/dialogflow/cx/docs/concept/
        # access-control#storage).
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
      
      # The response message for Agents.SearchAgents.
      class GoogleCloudDialogflowV2SearchAgentsResponse
        include Google::Apis::Core::Hashable
      
        # The list of agents. There will be a maximum number of items returned based on
        # the page_size field in the request.
        # Corresponds to the JSON property `agents`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Agent>]
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
      
      # The sentiment, such as positive/negative feeling or association, for a unit of
      # analysis, such as the query text.
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
      
      # Configures the types of sentiment analysis to perform.
      class GoogleCloudDialogflowV2SentimentAnalysisRequestConfig
        include Google::Apis::Core::Hashable
      
        # Instructs the service to perform sentiment analysis on `query_text`. If not
        # provided, sentiment analysis is not performed on `query_text`.
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
        # analysis, such as the query text.
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
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EntityTypeEntity>]
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
      
      # The request message for ConversationProfiles.SetSuggestionFeature.
      class GoogleCloudDialogflowV2SetSuggestionFeatureConfigRequest
        include Google::Apis::Core::Hashable
      
        # Required. The participant role to add or update the suggestion feature config.
        # Only HUMAN_AGENT or END_USER can be used.
        # Corresponds to the JSON property `participantRole`
        # @return [String]
        attr_accessor :participant_role
      
        # Config for suggestion features.
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
      
      # The evaluation metrics for smart reply model.
      class GoogleCloudDialogflowV2SmartReplyMetrics
        include Google::Apis::Core::Hashable
      
        # Percentage of target participant messages in the evaluation dataset for which
        # similar messages have appeared at least once in the allowlist. Should be [0, 1]
        # .
        # Corresponds to the JSON property `allowlistCoverage`
        # @return [Float]
        attr_accessor :allowlist_coverage
      
        # Total number of conversations used to generate this metric.
        # Corresponds to the JSON property `conversationCount`
        # @return [Fixnum]
        attr_accessor :conversation_count
      
        # Metrics of top n smart replies, sorted by TopNMetric.n.
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
      
      # Evaluation metrics when retrieving `n` smart replies with the model.
      class GoogleCloudDialogflowV2SmartReplyMetricsTopNMetrics
        include Google::Apis::Core::Hashable
      
        # Number of retrieved smart replies. For example, when `n` is 3, this evaluation
        # contains metrics for when Dialogflow retrieves 3 smart replies with the model.
        # Corresponds to the JSON property `n`
        # @return [Fixnum]
        attr_accessor :n
      
        # Defined as `number of queries whose top n smart replies have at least one
        # similar (token match similarity above the defined threshold) reply as the real
        # reply` divided by `number of queries with at least one smart reply`. Value
        # ranges from 0.0 to 1.0 inclusive.
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
      
      # Hints for the speech recognizer to help with recognition in a specific
      # conversation state.
      class GoogleCloudDialogflowV2SpeechContext
        include Google::Apis::Core::Hashable
      
        # Optional. Boost for this context compared to other contexts: * If the boost is
        # positive, Dialogflow will increase the probability that the phrases in this
        # context are recognized over similar sounding phrases. * If the boost is
        # unspecified or non-positive, Dialogflow will not apply any boost. Dialogflow
        # recommends that you use boosts in the range (0, 20] and that you find a value
        # that fits your use case with binary search.
        # Corresponds to the JSON property `boost`
        # @return [Float]
        attr_accessor :boost
      
        # Optional. A list of strings containing words and phrases that the speech
        # recognizer should recognize with higher likelihood. This list can be used to: *
        # improve accuracy for words and phrases you expect the user to say, e.g.
        # typical commands for your Dialogflow agent * add additional words to the
        # speech recognizer vocabulary * ... See the [Cloud Speech documentation](https:/
        # /cloud.google.com/speech-to-text/quotas) for usage limits.
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
      
      # Configures speech transcription for ConversationProfile.
      class GoogleCloudDialogflowV2SpeechToTextConfig
        include Google::Apis::Core::Hashable
      
        # Which Speech model to select. Select the model best suited to your domain to
        # get best results. If a model is not explicitly specified, then a default model
        # is used. Refer to [Cloud Speech API documentation](https://cloud.google.com/
        # speech-to-text/docs/basics#select-model) for more details.
        # Corresponds to the JSON property `model`
        # @return [String]
        attr_accessor :model
      
        # The speech model used in speech to text. `SPEECH_MODEL_VARIANT_UNSPECIFIED`, `
        # USE_BEST_AVAILABLE` will be treated as `USE_ENHANCED`. It can be overridden in
        # AnalyzeContentRequest and StreamingAnalyzeContentRequest request. If enhanced
        # model variant is specified and an enhanced version of the specified model for
        # the language does not exist, then it would emit an error.
        # Corresponds to the JSON property `speechModelVariant`
        # @return [String]
        attr_accessor :speech_model_variant
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @model = args[:model] if args.key?(:model)
          @speech_model_variant = args[:speech_model_variant] if args.key?(:speech_model_variant)
        end
      end
      
      # The request message for Participants.SuggestArticles.
      class GoogleCloudDialogflowV2SuggestArticlesRequest
        include Google::Apis::Core::Hashable
      
        # Represents the parameters of human assist query.
        # Corresponds to the JSON property `assistQueryParams`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AssistQueryParameters]
        attr_accessor :assist_query_params
      
        # Optional. Max number of messages prior to and including latest_message to use
        # as context when compiling the suggestion. By default 20 and at most 50.
        # Corresponds to the JSON property `contextSize`
        # @return [Fixnum]
        attr_accessor :context_size
      
        # Optional. The name of the latest conversation message to compile suggestion
        # for. If empty, it will be the latest message of the conversation. Format: `
        # projects//locations//conversations//messages/`.
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
      
      # The response message for Participants.SuggestArticles.
      class GoogleCloudDialogflowV2SuggestArticlesResponse
        include Google::Apis::Core::Hashable
      
        # Articles ordered by score in descending order.
        # Corresponds to the JSON property `articleAnswers`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2ArticleAnswer>]
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
      class GoogleCloudDialogflowV2SuggestFaqAnswersRequest
        include Google::Apis::Core::Hashable
      
        # Represents the parameters of human assist query.
        # Corresponds to the JSON property `assistQueryParams`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2AssistQueryParameters]
        attr_accessor :assist_query_params
      
        # Optional. Max number of messages prior to and including [latest_message] to
        # use as context when compiling the suggestion. By default 20 and at most 50.
        # Corresponds to the JSON property `contextSize`
        # @return [Fixnum]
        attr_accessor :context_size
      
        # Optional. The name of the latest conversation message to compile suggestion
        # for. If empty, it will be the latest message of the conversation. Format: `
        # projects//locations//conversations//messages/`.
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
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2FaqAnswer>]
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
      
      # The request message for Participants.SuggestSmartReplies.
      class GoogleCloudDialogflowV2SuggestSmartRepliesRequest
        include Google::Apis::Core::Hashable
      
        # Max number of messages prior to and including [latest_message] to use as
        # context when compiling the suggestion. By default 20 and at most 50.
        # Corresponds to the JSON property `contextSize`
        # @return [Fixnum]
        attr_accessor :context_size
      
        # ============================================================================
        # Auxiliary proto messages. Represents the natural language text to be processed.
        # Corresponds to the JSON property `currentTextInput`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2TextInput]
        attr_accessor :current_text_input
      
        # The name of the latest conversation message to compile suggestion for. If
        # empty, it will be the latest message of the conversation. Format: `projects//
        # locations//conversations//messages/`.
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
      
      # The type of Human Agent Assistant API suggestion to perform, and the maximum
      # number of results to return for that type. Multiple `Feature` objects can be
      # specified in the `features` list.
      class GoogleCloudDialogflowV2SuggestionFeature
        include Google::Apis::Core::Hashable
      
        # Type of Human Agent Assistant API feature to request.
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
        # @return [Google::Apis::DialogflowV2::GoogleRpcStatus]
        attr_accessor :error
      
        # The response message for Participants.SuggestArticles.
        # Corresponds to the JSON property `suggestArticlesResponse`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestArticlesResponse]
        attr_accessor :suggest_articles_response
      
        # The request message for Participants.SuggestFaqAnswers.
        # Corresponds to the JSON property `suggestFaqAnswersResponse`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestFaqAnswersResponse]
        attr_accessor :suggest_faq_answers_response
      
        # The response message for Participants.SuggestSmartReplies.
        # Corresponds to the JSON property `suggestSmartRepliesResponse`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SuggestSmartRepliesResponse]
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
      
      # Configuration of how speech should be synthesized.
      class GoogleCloudDialogflowV2SynthesizeSpeechConfig
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2VoiceSelectionParams]
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
      
      # ============================================================================
      # Auxiliary proto messages. Represents the natural language text to be processed.
      class GoogleCloudDialogflowV2TextInput
        include Google::Apis::Core::Hashable
      
        # Required. The language of this conversational query. See [Language Support](
        # https://cloud.google.com/dialogflow/docs/reference/language) for a list of the
        # currently supported language codes. Note that queries in the same session do
        # not necessarily need to specify the same language.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Required. The UTF-8 encoded natural language text to be processed. Text length
        # must not exceed 256 characters for virtual agent interactions.
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
      
      # Instructs the speech synthesizer on how to generate the output audio content.
      class GoogleCloudDialogflowV2TextToSpeechSettings
        include Google::Apis::Core::Hashable
      
        # Optional. Indicates whether text to speech is enabled. Even when this field is
        # false, other settings in this proto are still retained.
        # Corresponds to the JSON property `enableTextToSpeech`
        # @return [Boolean]
        attr_accessor :enable_text_to_speech
        alias_method :enable_text_to_speech?, :enable_text_to_speech
      
        # Required. Audio encoding of the synthesized audio content.
        # Corresponds to the JSON property `outputAudioEncoding`
        # @return [String]
        attr_accessor :output_audio_encoding
      
        # Optional. The synthesis sample rate (in hertz) for this audio. If not provided,
        # then the synthesizer will use the default sample rate based on the audio
        # encoding. If this is different from the voice's natural sample rate, then the
        # synthesizer will honor this request by converting to the desired sample rate (
        # which might result in worse audio quality).
        # Corresponds to the JSON property `sampleRateHertz`
        # @return [Fixnum]
        attr_accessor :sample_rate_hertz
      
        # Optional. Configuration of how speech should be synthesized, mapping from
        # language (https://cloud.google.com/dialogflow/docs/reference/language) to
        # SynthesizeSpeechConfig.
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
      
      # The request message for Agents.TrainAgent.
      class GoogleCloudDialogflowV2TrainAgentRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
      
      # The request message for ConversationModels.UndeployConversationModel
      class GoogleCloudDialogflowV2UndeployConversationModelRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Represents a single validation error.
      class GoogleCloudDialogflowV2ValidationError
        include Google::Apis::Core::Hashable
      
        # The names of the entries that the error is associated with. Format: - "
        # projects//agent", if the error is associated with the entire agent. - "
        # projects//agent/intents/", if the error is associated with certain intents. - "
        # projects//agent/intents//trainingPhrases/", if the error is associated with
        # certain intent training phrases. - "projects//agent/intents//parameters/", if
        # the error is associated with certain intent parameters. - "projects//agent/
        # entities/", if the error is associated with certain entities.
        # Corresponds to the JSON property `entries`
        # @return [Array<String>]
        attr_accessor :entries
      
        # The detailed error message.
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        # The severity of the error.
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
      
      # Represents the output of agent validation.
      class GoogleCloudDialogflowV2ValidationResult
        include Google::Apis::Core::Hashable
      
        # Contains all validation errors.
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
      
      # You can create multiple versions of your agent and publish them to separate
      # environments. When you edit an agent, you are editing the draft agent. At any
      # point, you can save the draft agent as an agent version, which is an immutable
      # snapshot of your agent. When you save the draft agent, it is published to the
      # default environment. When you create agent versions, you can publish them to
      # custom environments. You can create a variety of custom environments for: -
      # testing - development - production - etc. For more information, see the [
      # versions and environments guide](https://cloud.google.com/dialogflow/docs/
      # agents-versions).
      class GoogleCloudDialogflowV2Version
        include Google::Apis::Core::Hashable
      
        # Output only. The creation time of this version. This field is read-only, i.e.,
        # it cannot be set by create and update methods.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. The developer-provided description of this version.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. The unique identifier of this agent version. Supported formats: -
        # `projects//agent/versions/` - `projects//locations//agent/versions/`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The status of this version. This field is read-only and cannot be
        # set by create and update methods.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Output only. The sequential number of this version. This field is read-only
        # which means it cannot be set by create and update methods.
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
      
      # Description of which voice to use for speech synthesis.
      class GoogleCloudDialogflowV2VoiceSelectionParams
        include Google::Apis::Core::Hashable
      
        # Optional. The name of the voice. If not set, the service will choose a voice
        # based on the other parameters such as language_code and ssml_gender.
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
      
      # The request message for a webhook call.
      class GoogleCloudDialogflowV2WebhookRequest
        include Google::Apis::Core::Hashable
      
        # Represents the contents of the original request that was passed to the `[
        # Streaming]DetectIntent` call.
        # Corresponds to the JSON property `originalDetectIntentRequest`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2OriginalDetectIntentRequest]
        attr_accessor :original_detect_intent_request
      
        # Represents the result of conversational query or event processing.
        # Corresponds to the JSON property `queryResult`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2QueryResult]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2EventInput]
        attr_accessor :followup_event_input
      
        # Optional. The rich response messages intended for the end-user. When provided,
        # Dialogflow uses this field to populate QueryResult.fulfillment_messages sent
        # to the integration or API caller.
        # Corresponds to the JSON property `fulfillmentMessages`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2IntentMessage>]
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
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2Context>]
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
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2SessionEntityType>]
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
      
      # The response message for Intents.BatchUpdateIntents.
      class GoogleCloudDialogflowV2beta1BatchUpdateIntentsResponse
        include Google::Apis::Core::Hashable
      
        # The collection of updated or created intents.
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
        # @return [Google::Apis::DialogflowV2::GoogleRpcStatus]
        attr_accessor :error_status
      
        # Represents a message posted into a conversation.
        # Corresponds to the JSON property `newMessagePayload`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1Message]
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
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1EntityTypeEntity>]
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
      
      # Response message for Documents.ImportDocuments.
      class GoogleCloudDialogflowV2beta1ImportDocumentsResponse
        include Google::Apis::Core::Hashable
      
        # Includes details about skipped documents or any other warnings.
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
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentFollowupIntentInfo>]
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
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessage>]
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
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1Context>]
        attr_accessor :output_contexts
      
        # Optional. The collection of parameters associated with the intent.
        # Corresponds to the JSON property `parameters`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentParameter>]
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
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentTrainingPhrase>]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageBasicCard]
        attr_accessor :basic_card
      
        # Browse Carousel Card for Actions on Google. https://developers.google.com/
        # actions/assistant/responses#browsing_carousel
        # Corresponds to the JSON property `browseCarouselCard`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCard]
        attr_accessor :browse_carousel_card
      
        # The card response message.
        # Corresponds to the JSON property `card`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageCard]
        attr_accessor :card
      
        # The card for presenting a carousel of options to select from.
        # Corresponds to the JSON property `carouselSelect`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect]
        attr_accessor :carousel_select
      
        # The image response message.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageImage]
        attr_accessor :image
      
        # The suggestion chip message that allows the user to jump out to the app or
        # website associated with this agent.
        # Corresponds to the JSON property `linkOutSuggestion`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion]
        attr_accessor :link_out_suggestion
      
        # The card for presenting a list of options to select from.
        # Corresponds to the JSON property `listSelect`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageListSelect]
        attr_accessor :list_select
      
        # The media content card for Actions on Google.
        # Corresponds to the JSON property `mediaContent`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageMediaContent]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageQuickReplies]
        attr_accessor :quick_replies
      
        # Carousel Rich Business Messaging (RBM) rich card. Rich cards allow you to
        # respond to users with more vivid content, e.g. with media and suggestions. If
        # you want to show a single card with more control over the layout, please use
        # RbmStandaloneCard instead.
        # Corresponds to the JSON property `rbmCarouselRichCard`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageRbmCarouselCard]
        attr_accessor :rbm_carousel_rich_card
      
        # Standalone Rich Business Messaging (RBM) rich card. Rich cards allow you to
        # respond to users with more vivid content, e.g. with media and suggestions. You
        # can group multiple rich cards into one using RbmCarouselCard but carousel
        # cards will give you less control over the card layout.
        # Corresponds to the JSON property `rbmStandaloneRichCard`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageRbmStandaloneCard]
        attr_accessor :rbm_standalone_rich_card
      
        # Rich Business Messaging (RBM) text response with suggestions.
        # Corresponds to the JSON property `rbmText`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageRbmText]
        attr_accessor :rbm_text
      
        # The collection of simple response candidates. This message in `QueryResult.
        # fulfillment_messages` and `WebhookResponse.fulfillment_messages` should
        # contain only one `SimpleResponse`.
        # Corresponds to the JSON property `simpleResponses`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses]
        attr_accessor :simple_responses
      
        # The collection of suggestions.
        # Corresponds to the JSON property `suggestions`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageSuggestions]
        attr_accessor :suggestions
      
        # Table card for Actions on Google.
        # Corresponds to the JSON property `tableCard`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageTableCard]
        attr_accessor :table_card
      
        # Plays audio from a file in Telephony Gateway.
        # Corresponds to the JSON property `telephonyPlayAudio`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio]
        attr_accessor :telephony_play_audio
      
        # Synthesizes speech and plays back the synthesized audio to the caller in
        # Telephony Gateway. Telephony Gateway takes the synthesizer settings from `
        # DetectIntentResponse.output_audio_config` which can either be set at request-
        # level or can come from the agent-level synthesizer config.
        # Corresponds to the JSON property `telephonySynthesizeSpeech`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech]
        attr_accessor :telephony_synthesize_speech
      
        # Transfers the call in Telephony Gateway.
        # Corresponds to the JSON property `telephonyTransferCall`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall]
        attr_accessor :telephony_transfer_call
      
        # The text response message.
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
      
      # The basic card message. Useful for displaying information.
      class GoogleCloudDialogflowV2beta1IntentMessageBasicCard
        include Google::Apis::Core::Hashable
      
        # Optional. The collection of card buttons.
        # Corresponds to the JSON property `buttons`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton>]
        attr_accessor :buttons
      
        # Required, unless image is present. The body text of the card.
        # Corresponds to the JSON property `formattedText`
        # @return [String]
        attr_accessor :formatted_text
      
        # The image response message.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageImage]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageBasicCardButtonOpenUriAction]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageImage]
        attr_accessor :image
      
        # Actions on Google action to open a given url.
        # Corresponds to the JSON property `openUriAction`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageBrowseCarouselCardBrowseCarouselCardItemOpenUrlAction]
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
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageCardButton>]
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
      
      # An item in the carousel.
      class GoogleCloudDialogflowV2beta1IntentMessageCarouselSelectItem
        include Google::Apis::Core::Hashable
      
        # Optional. The body text of the card.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The image response message.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageImage]
        attr_accessor :image
      
        # Additional info about the select item for when it is triggered in a dialog.
        # Corresponds to the JSON property `info`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo]
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
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageListSelectItem>]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageImage]
        attr_accessor :image
      
        # Additional info about the select item for when it is triggered in a dialog.
        # Corresponds to the JSON property `info`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageSelectItemInfo]
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
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageMediaContentResponseMediaObject>]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageImage]
        attr_accessor :icon
      
        # The image response message.
        # Corresponds to the JSON property `largeImage`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageImage]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageRbmCardContentRbmMedia]
        attr_accessor :media
      
        # Optional. List of suggestions to include in the card.
        # Corresponds to the JSON property `suggestions`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion>]
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
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent>]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageRbmCardContent]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionDial]
        attr_accessor :dial
      
        # Opens the user's default web browser app to the specified uri If the user has
        # an app installed that is registered as the default handler for the URL, then
        # this app will be opened instead, and its icon will be used in the suggested
        # action UI.
        # Corresponds to the JSON property `openUrl`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionOpenUri]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedActionRbmSuggestedActionShareLocation]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestedAction]
        attr_accessor :action
      
        # Rich Business Messaging (RBM) suggested reply that the user can click instead
        # of typing in their own response.
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
      
      # Rich Business Messaging (RBM) text response with suggestions.
      class GoogleCloudDialogflowV2beta1IntentMessageRbmText
        include Google::Apis::Core::Hashable
      
        # Optional. One or more suggestions to show to the user.
        # Corresponds to the JSON property `rbmSuggestion`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageRbmSuggestion>]
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
      
      # Table card for Actions on Google.
      class GoogleCloudDialogflowV2beta1IntentMessageTableCard
        include Google::Apis::Core::Hashable
      
        # Optional. List of buttons for the card.
        # Corresponds to the JSON property `buttons`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageBasicCardButton>]
        attr_accessor :buttons
      
        # Optional. Display properties for the columns in this table.
        # Corresponds to the JSON property `columnProperties`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageColumnProperties>]
        attr_accessor :column_properties
      
        # The image response message.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageImage]
        attr_accessor :image
      
        # Optional. Rows in this table of data.
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageTableCardRow>]
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
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessageTableCardCell>]
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
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentTrainingPhrasePart>]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1ExportOperationMetadata]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1MessageAnnotation]
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
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessage>]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1Intent]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1KnowledgeAnswers]
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
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1Context>]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1SentimentAnalysisResult]
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
      # analysis, such as the query text.
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
        # analysis, such as the query text.
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
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1EntityTypeEntity>]
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
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1ArticleAnswer>]
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
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1FaqAnswer>]
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
        # @return [Google::Apis::DialogflowV2::GoogleRpcStatus]
        attr_accessor :error
      
        # The response message for Participants.SuggestArticles.
        # Corresponds to the JSON property `suggestArticlesResponse`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1SuggestArticlesResponse]
        attr_accessor :suggest_articles_response
      
        # The request message for Participants.SuggestFaqAnswers.
        # Corresponds to the JSON property `suggestFaqAnswersResponse`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1SuggestFaqAnswersResponse]
        attr_accessor :suggest_faq_answers_response
      
        # The response message for Participants.SuggestSmartReplies.
        # Corresponds to the JSON property `suggestSmartRepliesResponse`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1SuggestSmartRepliesResponse]
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
      
      # The request message for a webhook call.
      class GoogleCloudDialogflowV2beta1WebhookRequest
        include Google::Apis::Core::Hashable
      
        # Alternative query results from KnowledgeService.
        # Corresponds to the JSON property `alternativeQueryResults`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1QueryResult>]
        attr_accessor :alternative_query_results
      
        # Represents the contents of the original request that was passed to the `[
        # Streaming]DetectIntent` call.
        # Corresponds to the JSON property `originalDetectIntentRequest`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1OriginalDetectIntentRequest]
        attr_accessor :original_detect_intent_request
      
        # Represents the result of conversational query or event processing.
        # Corresponds to the JSON property `queryResult`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1QueryResult]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1EventInput]
        attr_accessor :followup_event_input
      
        # Optional. The rich response messages intended for the end-user. When provided,
        # Dialogflow uses this field to populate QueryResult.fulfillment_messages sent
        # to the integration or API caller.
        # Corresponds to the JSON property `fulfillmentMessages`
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1IntentMessage>]
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
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1Context>]
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
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudDialogflowV2beta1SessionEntityType>]
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
      
      # Metadata for CreateDocument operation.
      class GoogleCloudDialogflowV3alpha1CreateDocumentOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Metadata in google::longrunning::Operation for Knowledge operations.
        # Corresponds to the JSON property `genericMetadata`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata]
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
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata]
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
      
      # Metadata for ReloadDocument operation.
      class GoogleCloudDialogflowV3alpha1ReloadDocumentOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Metadata in google::longrunning::Operation for Knowledge operations.
        # Corresponds to the JSON property `genericMetadata`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata]
        attr_accessor :generic_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @generic_metadata = args[:generic_metadata] if args.key?(:generic_metadata)
        end
      end
      
      # Metadata for UpdateDocument operation.
      class GoogleCloudDialogflowV3alpha1UpdateDocumentOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Metadata in google::longrunning::Operation for Knowledge operations.
        # Corresponds to the JSON property `genericMetadata`
        # @return [Google::Apis::DialogflowV2::GoogleCloudDialogflowV3alpha1GenericKnowledgeOperationMetadata]
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
        # @return [Array<Google::Apis::DialogflowV2::GoogleCloudLocationLocation>]
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
      
      # A resource that represents Google Cloud Platform location.
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
        # @return [Array<Google::Apis::DialogflowV2::GoogleLongrunningOperation>]
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
        # @return [Google::Apis::DialogflowV2::GoogleRpcStatus]
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
