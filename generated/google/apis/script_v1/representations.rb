# Copyright 2015 Google Inc.
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
    module ScriptV1
      
      class ScriptStackTraceElement
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExecutionError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExecutionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JoinAsyncRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExecutionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JoinAsyncResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ScriptStackTraceElement
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :line_number, as: 'lineNumber'
          property :function, as: 'function'
        end
      end
      
      class ExecutionError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :script_stack_trace_elements, as: 'scriptStackTraceElements', class: Google::Apis::ScriptV1::ScriptStackTraceElement, decorator: Google::Apis::ScriptV1::ScriptStackTraceElement::Representation
      
          property :error_type, as: 'errorType'
          property :error_message, as: 'errorMessage'
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message'
          collection :details, as: 'details'
          property :code, as: 'code'
        end
      end
      
      class ExecutionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :function, as: 'function'
          property :dev_mode, as: 'devMode'
          collection :parameters, as: 'parameters'
          property :session_state, as: 'sessionState'
        end
      end
      
      class JoinAsyncRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :names, as: 'names'
          property :timeout, as: 'timeout'
          property :script_id, as: 'scriptId'
        end
      end
      
      class ExecutionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :result, as: 'result'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :response, as: 'response'
          property :name, as: 'name'
          property :error, as: 'error', class: Google::Apis::ScriptV1::Status, decorator: Google::Apis::ScriptV1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :done, as: 'done'
        end
      end
      
      class JoinAsyncResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :results, as: 'results', class: Google::Apis::ScriptV1::Operation, decorator: Google::Apis::ScriptV1::Operation::Representation
      
        end
      end
    end
  end
end
