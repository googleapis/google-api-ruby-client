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
    module WorkflowexecutionsV1
      
      # An instance of a Callback created by an execution.
      class Callback
        include Google::Apis::Core::Hashable
      
        # Output only. The payloads received by the callback that have not been
        # processed by a waiting execution step.
        # Corresponds to the JSON property `availablePayloads`
        # @return [Array<String>]
        attr_accessor :available_payloads
      
        # Output only. The method accepted by the callback. For example: GET, POST, PUT.
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        # Output only. The resource name of the callback. Format: projects/`project`/
        # locations/`location`/workflows/`workflow`/executions/`execution`/callback/`
        # callback`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Number of execution steps waiting on this callback.
        # Corresponds to the JSON property `waiters`
        # @return [Fixnum]
        attr_accessor :waiters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @available_payloads = args[:available_payloads] if args.key?(:available_payloads)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
          @name = args[:name] if args.key?(:name)
          @waiters = args[:waiters] if args.key?(:waiters)
        end
      end
      
      # Request for the CancelExecution method.
      class CancelExecutionRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Error describes why the execution was abnormally terminated.
      class Error
        include Google::Apis::Core::Hashable
      
        # Human-readable stack trace string.
        # Corresponds to the JSON property `context`
        # @return [String]
        attr_accessor :context
      
        # Error message and data returned represented as a JSON string.
        # Corresponds to the JSON property `payload`
        # @return [String]
        attr_accessor :payload
      
        # A collection of stack elements (frames) where an error occurred.
        # Corresponds to the JSON property `stackTrace`
        # @return [Google::Apis::WorkflowexecutionsV1::StackTrace]
        attr_accessor :stack_trace
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @context = args[:context] if args.key?(:context)
          @payload = args[:payload] if args.key?(:payload)
          @stack_trace = args[:stack_trace] if args.key?(:stack_trace)
        end
      end
      
      # Exception describes why the step entry failed.
      class Exception
        include Google::Apis::Core::Hashable
      
        # Error message represented as a JSON string.
        # Corresponds to the JSON property `payload`
        # @return [String]
        attr_accessor :payload
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @payload = args[:payload] if args.key?(:payload)
        end
      end
      
      # A running instance of a [Workflow](/workflows/docs/reference/rest/v1/projects.
      # locations.workflows).
      class Execution
        include Google::Apis::Core::Hashable
      
        # Input parameters of the execution represented as a JSON string. The size limit
        # is 32KB. *Note*: If you are using the REST API directly to run your workflow,
        # you must escape any JSON string value of `argument`. Example: `'`"argument":"`\
        # "firstName\":\"FIRST\",\"lastName\":\"LAST\"`"`'`
        # Corresponds to the JSON property `argument`
        # @return [String]
        attr_accessor :argument
      
        # The call logging level associated to this execution.
        # Corresponds to the JSON property `callLogLevel`
        # @return [String]
        attr_accessor :call_log_level
      
        # Output only. Measures the duration of the execution.
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        # Output only. Marks the end of execution, successful or not.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Error describes why the execution was abnormally terminated.
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::WorkflowexecutionsV1::Error]
        attr_accessor :error
      
        # Labels associated with this execution. Labels can contain at most 64 entries.
        # Keys and values can be no longer than 63 characters and can only contain
        # lowercase letters, numeric characters, underscores, and dashes. Label keys
        # must start with a letter. International characters are allowed. By default,
        # labels are inherited from the workflow but are overridden by any labels
        # associated with the execution.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The resource name of the execution. Format: projects/`project`/
        # locations/`location`/workflows/`workflow`/executions/`execution`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Output of the execution represented as a JSON string. The value
        # can only be present if the execution's state is `SUCCEEDED`.
        # Corresponds to the JSON property `result`
        # @return [String]
        attr_accessor :result
      
        # Output only. Marks the beginning of execution.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Output only. Current state of the execution.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Describes an error related to the current state of the Execution resource.
        # Corresponds to the JSON property `stateError`
        # @return [Google::Apis::WorkflowexecutionsV1::StateError]
        attr_accessor :state_error
      
        # Represents the current status of this execution.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::WorkflowexecutionsV1::Status]
        attr_accessor :status
      
        # Output only. Revision of the workflow this execution is using.
        # Corresponds to the JSON property `workflowRevisionId`
        # @return [String]
        attr_accessor :workflow_revision_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @argument = args[:argument] if args.key?(:argument)
          @call_log_level = args[:call_log_level] if args.key?(:call_log_level)
          @duration = args[:duration] if args.key?(:duration)
          @end_time = args[:end_time] if args.key?(:end_time)
          @error = args[:error] if args.key?(:error)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @result = args[:result] if args.key?(:result)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
          @state_error = args[:state_error] if args.key?(:state_error)
          @status = args[:status] if args.key?(:status)
          @workflow_revision_id = args[:workflow_revision_id] if args.key?(:workflow_revision_id)
        end
      end
      
      # Response for the ExportData method.
      class ExportDataResponse
        include Google::Apis::Core::Hashable
      
        # The JSON string with customer data and metadata for an execution with the
        # given name
        # Corresponds to the JSON property `data`
        # @return [String]
        attr_accessor :data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data = args[:data] if args.key?(:data)
        end
      end
      
      # RPC response object for the ListCallbacks method.
      class ListCallbacksResponse
        include Google::Apis::Core::Hashable
      
        # The callbacks which match the request.
        # Corresponds to the JSON property `callbacks`
        # @return [Array<Google::Apis::WorkflowexecutionsV1::Callback>]
        attr_accessor :callbacks
      
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
          @callbacks = args[:callbacks] if args.key?(:callbacks)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response for the ListExecutions method.
      class ListExecutionsResponse
        include Google::Apis::Core::Hashable
      
        # The executions which match the request.
        # Corresponds to the JSON property `executions`
        # @return [Array<Google::Apis::WorkflowexecutionsV1::Execution>]
        attr_accessor :executions
      
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
          @executions = args[:executions] if args.key?(:executions)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ExecutionHistory.ListStepEntries.
      class ListStepEntriesResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve next page of results. Pass this value in the
        # ListStepEntriesRequest.page_token field in the subsequent call to `
        # ListStepEntries` method to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of entries.
        # Corresponds to the JSON property `stepEntries`
        # @return [Array<Google::Apis::WorkflowexecutionsV1::StepEntry>]
        attr_accessor :step_entries
      
        # Indicates the total number of StepEntries that matched the request filter. For
        # running executions, this number shows the number of StepEntries that are
        # executed thus far.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @step_entries = args[:step_entries] if args.key?(:step_entries)
          @total_size = args[:total_size] if args.key?(:total_size)
        end
      end
      
      # NavigationInfo describes what steps if any come before or after this step, or
      # what steps are parents or children of this step.
      class NavigationInfo
        include Google::Apis::Core::Hashable
      
        # Step entries that can be reached by "stepping into" e.g. a subworkflow call.
        # Corresponds to the JSON property `children`
        # @return [Array<Fixnum>]
        attr_accessor :children
      
        # The index of the next step in the current workflow, if any.
        # Corresponds to the JSON property `next`
        # @return [Fixnum]
        attr_accessor :next
      
        # The step entry, if any, that can be reached by "stepping out" of the current
        # workflow being executed.
        # Corresponds to the JSON property `parent`
        # @return [Fixnum]
        attr_accessor :parent
      
        # The index of the previous step in the current workflow, if any.
        # Corresponds to the JSON property `previous`
        # @return [Fixnum]
        attr_accessor :previous
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @children = args[:children] if args.key?(:children)
          @next = args[:next] if args.key?(:next)
          @parent = args[:parent] if args.key?(:parent)
          @previous = args[:previous] if args.key?(:previous)
        end
      end
      
      # Position contains source position information about the stack trace element
      # such as line number, column number and length of the code block in bytes.
      class Position
        include Google::Apis::Core::Hashable
      
        # The source code column position (of the line) the current instruction was
        # generated from.
        # Corresponds to the JSON property `column`
        # @return [Fixnum]
        attr_accessor :column
      
        # The number of bytes of source code making up this stack trace element.
        # Corresponds to the JSON property `length`
        # @return [Fixnum]
        attr_accessor :length
      
        # The source code line number the current instruction was generated from.
        # Corresponds to the JSON property `line`
        # @return [Fixnum]
        attr_accessor :line
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column = args[:column] if args.key?(:column)
          @length = args[:length] if args.key?(:length)
          @line = args[:line] if args.key?(:line)
        end
      end
      
      # A message that is published by publishers and consumed by subscribers. The
      # message must contain either a non-empty data field or at least one attribute.
      # Note that client libraries represent this object differently depending on the
      # language. See the corresponding [client library documentation](https://cloud.
      # google.com/pubsub/docs/reference/libraries) for more information. See [quotas
      # and limits] (https://cloud.google.com/pubsub/quotas) for more information
      # about message limits.
      class PubsubMessage
        include Google::Apis::Core::Hashable
      
        # Optional. Attributes for this message. If this field is empty, the message
        # must contain non-empty data. This can be used to filter messages on the
        # subscription.
        # Corresponds to the JSON property `attributes`
        # @return [Hash<String,String>]
        attr_accessor :attributes
      
        # Optional. The message data field. If this field is empty, the message must
        # contain at least one attribute.
        # Corresponds to the JSON property `data`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :data
      
        # Optional. ID of this message, assigned by the server when the message is
        # published. Guaranteed to be unique within the topic. This value may be read by
        # a subscriber that receives a `PubsubMessage` via a `Pull` call or a push
        # delivery. It must not be populated by the publisher in a `Publish` call.
        # Corresponds to the JSON property `messageId`
        # @return [String]
        attr_accessor :message_id
      
        # Optional. If non-empty, identifies related messages for which publish order
        # should be respected. If a `Subscription` has `enable_message_ordering` set to `
        # true`, messages published with the same non-empty `ordering_key` value will be
        # delivered to subscribers in the order in which they are received by the Pub/
        # Sub system. All `PubsubMessage`s published in a given `PublishRequest` must
        # specify the same `ordering_key` value. For more information, see [ordering
        # messages](https://cloud.google.com/pubsub/docs/ordering).
        # Corresponds to the JSON property `orderingKey`
        # @return [String]
        attr_accessor :ordering_key
      
        # Optional. The time at which the message was published, populated by the server
        # when it receives the `Publish` call. It must not be populated by the publisher
        # in a `Publish` call.
        # Corresponds to the JSON property `publishTime`
        # @return [String]
        attr_accessor :publish_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @data = args[:data] if args.key?(:data)
          @message_id = args[:message_id] if args.key?(:message_id)
          @ordering_key = args[:ordering_key] if args.key?(:ordering_key)
          @publish_time = args[:publish_time] if args.key?(:publish_time)
        end
      end
      
      # A collection of stack elements (frames) where an error occurred.
      class StackTrace
        include Google::Apis::Core::Hashable
      
        # An array of stack elements.
        # Corresponds to the JSON property `elements`
        # @return [Array<Google::Apis::WorkflowexecutionsV1::StackTraceElement>]
        attr_accessor :elements
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @elements = args[:elements] if args.key?(:elements)
        end
      end
      
      # A single stack element (frame) where an error occurred.
      class StackTraceElement
        include Google::Apis::Core::Hashable
      
        # Position contains source position information about the stack trace element
        # such as line number, column number and length of the code block in bytes.
        # Corresponds to the JSON property `position`
        # @return [Google::Apis::WorkflowexecutionsV1::Position]
        attr_accessor :position
      
        # The routine where the error occurred.
        # Corresponds to the JSON property `routine`
        # @return [String]
        attr_accessor :routine
      
        # The step the error occurred at.
        # Corresponds to the JSON property `step`
        # @return [String]
        attr_accessor :step
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @position = args[:position] if args.key?(:position)
          @routine = args[:routine] if args.key?(:routine)
          @step = args[:step] if args.key?(:step)
        end
      end
      
      # Describes an error related to the current state of the Execution resource.
      class StateError
        include Google::Apis::Core::Hashable
      
        # Provides specifics about the error.
        # Corresponds to the JSON property `details`
        # @return [String]
        attr_accessor :details
      
        # The type of this state error.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @details = args[:details] if args.key?(:details)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Represents the current status of this execution.
      class Status
        include Google::Apis::Core::Hashable
      
        # A list of currently executing or last executed step names for the workflow
        # execution currently running. If the workflow has succeeded or failed, this is
        # the last attempted or executed step. Presently, if the current step is inside
        # a subworkflow, the list only includes that step. In the future, the list will
        # contain items for each step in the call stack, starting with the outermost
        # step in the `main` subworkflow, and ending with the most deeply nested step.
        # Corresponds to the JSON property `currentSteps`
        # @return [Array<Google::Apis::WorkflowexecutionsV1::Step>]
        attr_accessor :current_steps
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @current_steps = args[:current_steps] if args.key?(:current_steps)
        end
      end
      
      # Represents a step of the workflow this execution is running.
      class Step
        include Google::Apis::Core::Hashable
      
        # Name of a routine within the workflow.
        # Corresponds to the JSON property `routine`
        # @return [String]
        attr_accessor :routine
      
        # Name of a step within the routine.
        # Corresponds to the JSON property `step`
        # @return [String]
        attr_accessor :step
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @routine = args[:routine] if args.key?(:routine)
          @step = args[:step] if args.key?(:step)
        end
      end
      
      # An StepEntry contains debugging information for a step transition in a
      # workflow execution.
      class StepEntry
        include Google::Apis::Core::Hashable
      
        # Output only. The creation time of the step entry.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The numeric ID of this step entry, used for navigation.
        # Corresponds to the JSON property `entryId`
        # @return [Fixnum]
        attr_accessor :entry_id
      
        # Exception describes why the step entry failed.
        # Corresponds to the JSON property `exception`
        # @return [Google::Apis::WorkflowexecutionsV1::Exception]
        attr_accessor :exception
      
        # Output only. The full resource name of the step entry. Each step entry has a
        # unique entry ID, which is a monotonically increasing counter. Step entry names
        # have the format: `projects/`project`/locations/`location`/workflows/`workflow`/
        # executions/`execution`/stepEntries/`step_entry``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # NavigationInfo describes what steps if any come before or after this step, or
        # what steps are parents or children of this step.
        # Corresponds to the JSON property `navigationInfo`
        # @return [Google::Apis::WorkflowexecutionsV1::NavigationInfo]
        attr_accessor :navigation_info
      
        # Output only. The name of the routine this step entry belongs to. A routine
        # name is the subworkflow name defined in the YAML source code. The top level
        # routine name is `main`.
        # Corresponds to the JSON property `routine`
        # @return [String]
        attr_accessor :routine
      
        # Output only. The state of the step entry.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The name of the step this step entry belongs to.
        # Corresponds to the JSON property `step`
        # @return [String]
        attr_accessor :step
      
        # StepEntryMetadata contains metadata information about this step.
        # Corresponds to the JSON property `stepEntryMetadata`
        # @return [Google::Apis::WorkflowexecutionsV1::StepEntryMetadata]
        attr_accessor :step_entry_metadata
      
        # Output only. The type of the step this step entry belongs to.
        # Corresponds to the JSON property `stepType`
        # @return [String]
        attr_accessor :step_type
      
        # Output only. The most recently updated time of the step entry.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @entry_id = args[:entry_id] if args.key?(:entry_id)
          @exception = args[:exception] if args.key?(:exception)
          @name = args[:name] if args.key?(:name)
          @navigation_info = args[:navigation_info] if args.key?(:navigation_info)
          @routine = args[:routine] if args.key?(:routine)
          @state = args[:state] if args.key?(:state)
          @step = args[:step] if args.key?(:step)
          @step_entry_metadata = args[:step_entry_metadata] if args.key?(:step_entry_metadata)
          @step_type = args[:step_type] if args.key?(:step_type)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # StepEntryMetadata contains metadata information about this step.
      class StepEntryMetadata
        include Google::Apis::Core::Hashable
      
        # Progress number represents the current state of the current progress. eg: A
        # step entry represents the 4th iteration in a progress of PROGRESS_TYPE_FOR.
        # Corresponds to the JSON property `progressNumber`
        # @return [Fixnum]
        attr_accessor :progress_number
      
        # Progress type of this step entry.
        # Corresponds to the JSON property `progressType`
        # @return [String]
        attr_accessor :progress_type
      
        # Child thread id that this step entry belongs to.
        # Corresponds to the JSON property `threadId`
        # @return [String]
        attr_accessor :thread_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @progress_number = args[:progress_number] if args.key?(:progress_number)
          @progress_type = args[:progress_type] if args.key?(:progress_type)
          @thread_id = args[:thread_id] if args.key?(:thread_id)
        end
      end
      
      # Request for the TriggerPubsubExecution method.
      class TriggerPubsubExecutionRequest
        include Google::Apis::Core::Hashable
      
        # Required. LINT: LEGACY_NAMES The query parameter value for
        # __GCP_CloudEventsMode, set by the Eventarc service when configuring triggers.
        # Corresponds to the JSON property `GCPCloudEventsMode`
        # @return [String]
        attr_accessor :gcp_cloud_events_mode
      
        # The number of attempts that have been made to deliver this message. This is
        # set by Pub/Sub for subscriptions that have the "dead letter" feature enabled,
        # and hence provided here for compatibility, but is ignored by Workflows.
        # Corresponds to the JSON property `deliveryAttempt`
        # @return [Fixnum]
        attr_accessor :delivery_attempt
      
        # A message that is published by publishers and consumed by subscribers. The
        # message must contain either a non-empty data field or at least one attribute.
        # Note that client libraries represent this object differently depending on the
        # language. See the corresponding [client library documentation](https://cloud.
        # google.com/pubsub/docs/reference/libraries) for more information. See [quotas
        # and limits] (https://cloud.google.com/pubsub/quotas) for more information
        # about message limits.
        # Corresponds to the JSON property `message`
        # @return [Google::Apis::WorkflowexecutionsV1::PubsubMessage]
        attr_accessor :message
      
        # Required. The subscription of the Pub/Sub push notification. Format: projects/`
        # project`/subscriptions/`sub`
        # Corresponds to the JSON property `subscription`
        # @return [String]
        attr_accessor :subscription
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcp_cloud_events_mode = args[:gcp_cloud_events_mode] if args.key?(:gcp_cloud_events_mode)
          @delivery_attempt = args[:delivery_attempt] if args.key?(:delivery_attempt)
          @message = args[:message] if args.key?(:message)
          @subscription = args[:subscription] if args.key?(:subscription)
        end
      end
    end
  end
end
