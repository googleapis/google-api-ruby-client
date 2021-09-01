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
    module WorkflowexecutionsV1beta
      
      class CancelExecutionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Error
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Execution
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListExecutionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Position
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
          property :stack_trace, as: 'stackTrace', class: Google::Apis::WorkflowexecutionsV1beta::StackTrace, decorator: Google::Apis::WorkflowexecutionsV1beta::StackTrace::Representation
      
        end
      end
      
      class Execution
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :argument, as: 'argument'
          property :call_log_level, as: 'callLogLevel'
          property :end_time, as: 'endTime'
          property :error, as: 'error', class: Google::Apis::WorkflowexecutionsV1beta::Error, decorator: Google::Apis::WorkflowexecutionsV1beta::Error::Representation
      
          property :name, as: 'name'
          property :result, as: 'result'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          property :workflow_revision_id, as: 'workflowRevisionId'
        end
      end
      
      class ListExecutionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :executions, as: 'executions', class: Google::Apis::WorkflowexecutionsV1beta::Execution, decorator: Google::Apis::WorkflowexecutionsV1beta::Execution::Representation
      
          property :next_page_token, as: 'nextPageToken'
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
      
      class StackTrace
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :elements, as: 'elements', class: Google::Apis::WorkflowexecutionsV1beta::StackTraceElement, decorator: Google::Apis::WorkflowexecutionsV1beta::StackTraceElement::Representation
      
        end
      end
      
      class StackTraceElement
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :position, as: 'position', class: Google::Apis::WorkflowexecutionsV1beta::Position, decorator: Google::Apis::WorkflowexecutionsV1beta::Position::Representation
      
          property :routine, as: 'routine'
          property :step, as: 'step'
        end
      end
    end
  end
end
