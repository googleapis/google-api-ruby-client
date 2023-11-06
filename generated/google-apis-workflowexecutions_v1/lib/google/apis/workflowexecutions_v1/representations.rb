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
      
      class Callback
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelExecutionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Error
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Exception
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Execution
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExportDataResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCallbacksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListExecutionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListStepEntriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NavigationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Position
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PubsubMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StackTrace
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StackTraceElement
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StateError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Step
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StepEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StepEntryMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TriggerPubsubExecutionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Callback
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :available_payloads, as: 'availablePayloads'
          property :method_prop, as: 'method'
          property :name, as: 'name'
          property :waiters, :numeric_string => true, as: 'waiters'
        end
      end
      
      class CancelExecutionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Error
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context, as: 'context'
          property :payload, as: 'payload'
          property :stack_trace, as: 'stackTrace', class: Google::Apis::WorkflowexecutionsV1::StackTrace, decorator: Google::Apis::WorkflowexecutionsV1::StackTrace::Representation
      
        end
      end
      
      class Exception
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :payload, as: 'payload'
        end
      end
      
      class Execution
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :argument, as: 'argument'
          property :call_log_level, as: 'callLogLevel'
          property :duration, as: 'duration'
          property :end_time, as: 'endTime'
          property :error, as: 'error', class: Google::Apis::WorkflowexecutionsV1::Error, decorator: Google::Apis::WorkflowexecutionsV1::Error::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :result, as: 'result'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          property :state_error, as: 'stateError', class: Google::Apis::WorkflowexecutionsV1::StateError, decorator: Google::Apis::WorkflowexecutionsV1::StateError::Representation
      
          property :status, as: 'status', class: Google::Apis::WorkflowexecutionsV1::Status, decorator: Google::Apis::WorkflowexecutionsV1::Status::Representation
      
          property :workflow_revision_id, as: 'workflowRevisionId'
        end
      end
      
      class ExportDataResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data, as: 'data'
        end
      end
      
      class ListCallbacksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :callbacks, as: 'callbacks', class: Google::Apis::WorkflowexecutionsV1::Callback, decorator: Google::Apis::WorkflowexecutionsV1::Callback::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListExecutionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :executions, as: 'executions', class: Google::Apis::WorkflowexecutionsV1::Execution, decorator: Google::Apis::WorkflowexecutionsV1::Execution::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListStepEntriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :step_entries, as: 'stepEntries', class: Google::Apis::WorkflowexecutionsV1::StepEntry, decorator: Google::Apis::WorkflowexecutionsV1::StepEntry::Representation
      
          property :total_size, as: 'totalSize'
        end
      end
      
      class NavigationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :children, as: 'children'
          property :next, :numeric_string => true, as: 'next'
          property :parent, :numeric_string => true, as: 'parent'
          property :previous, :numeric_string => true, as: 'previous'
        end
      end
      
      class Position
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column, :numeric_string => true, as: 'column'
          property :length, :numeric_string => true, as: 'length'
          property :line, :numeric_string => true, as: 'line'
        end
      end
      
      class PubsubMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attributes, as: 'attributes'
          property :data, :base64 => true, as: 'data'
          property :message_id, as: 'messageId'
          property :ordering_key, as: 'orderingKey'
          property :publish_time, as: 'publishTime'
        end
      end
      
      class StackTrace
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :elements, as: 'elements', class: Google::Apis::WorkflowexecutionsV1::StackTraceElement, decorator: Google::Apis::WorkflowexecutionsV1::StackTraceElement::Representation
      
        end
      end
      
      class StackTraceElement
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :position, as: 'position', class: Google::Apis::WorkflowexecutionsV1::Position, decorator: Google::Apis::WorkflowexecutionsV1::Position::Representation
      
          property :routine, as: 'routine'
          property :step, as: 'step'
        end
      end
      
      class StateError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :details, as: 'details'
          property :type, as: 'type'
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :current_steps, as: 'currentSteps', class: Google::Apis::WorkflowexecutionsV1::Step, decorator: Google::Apis::WorkflowexecutionsV1::Step::Representation
      
        end
      end
      
      class Step
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :routine, as: 'routine'
          property :step, as: 'step'
        end
      end
      
      class StepEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :entry_id, :numeric_string => true, as: 'entryId'
          property :exception, as: 'exception', class: Google::Apis::WorkflowexecutionsV1::Exception, decorator: Google::Apis::WorkflowexecutionsV1::Exception::Representation
      
          property :name, as: 'name'
          property :navigation_info, as: 'navigationInfo', class: Google::Apis::WorkflowexecutionsV1::NavigationInfo, decorator: Google::Apis::WorkflowexecutionsV1::NavigationInfo::Representation
      
          property :routine, as: 'routine'
          property :state, as: 'state'
          property :step, as: 'step'
          property :step_entry_metadata, as: 'stepEntryMetadata', class: Google::Apis::WorkflowexecutionsV1::StepEntryMetadata, decorator: Google::Apis::WorkflowexecutionsV1::StepEntryMetadata::Representation
      
          property :step_type, as: 'stepType'
          property :update_time, as: 'updateTime'
        end
      end
      
      class StepEntryMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :progress_number, :numeric_string => true, as: 'progressNumber'
          property :progress_type, as: 'progressType'
          property :thread_id, as: 'threadId'
        end
      end
      
      class TriggerPubsubExecutionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcp_cloud_events_mode, as: 'GCPCloudEventsMode'
          property :delivery_attempt, as: 'deliveryAttempt'
          property :message, as: 'message', class: Google::Apis::WorkflowexecutionsV1::PubsubMessage, decorator: Google::Apis::WorkflowexecutionsV1::PubsubMessage::Representation
      
          property :subscription, as: 'subscription'
        end
      end
    end
  end
end
