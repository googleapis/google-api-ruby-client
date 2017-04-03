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
    module TracingV1
      
      class StackTrace
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SpanUpdates
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSpansResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StackFrame
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Link
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Annotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Trace
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Module
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListTracesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Span
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AttributeValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchUpdateSpansRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StackTrace
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :stack_frame, as: 'stackFrame', class: Google::Apis::TracingV1::StackFrame, decorator: Google::Apis::TracingV1::StackFrame::Representation
      
          property :stack_trace_hash_id, :numeric_string => true, as: 'stackTraceHashId'
        end
      end
      
      class TimeEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :network_event, as: 'networkEvent', class: Google::Apis::TracingV1::NetworkEvent, decorator: Google::Apis::TracingV1::NetworkEvent::Representation
      
          property :annotation, as: 'annotation', class: Google::Apis::TracingV1::Annotation, decorator: Google::Apis::TracingV1::Annotation::Representation
      
          property :local_time, as: 'localTime'
        end
      end
      
      class NetworkEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message_id, :numeric_string => true, as: 'messageId'
          property :message_size, :numeric_string => true, as: 'messageSize'
          property :kernel_time, as: 'kernelTime'
          property :type, as: 'type'
        end
      end
      
      class SpanUpdates
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :spans, as: 'spans', class: Google::Apis::TracingV1::Span, decorator: Google::Apis::TracingV1::Span::Representation
      
        end
      end
      
      class ListSpansResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :spans, as: 'spans', class: Google::Apis::TracingV1::Span, decorator: Google::Apis::TracingV1::Span::Representation
      
        end
      end
      
      class StackFrame
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column_number, :numeric_string => true, as: 'columnNumber'
          property :file_name, as: 'fileName'
          property :source_version, as: 'sourceVersion'
          property :original_function_name, as: 'originalFunctionName'
          property :function_name, as: 'functionName'
          property :line_number, :numeric_string => true, as: 'lineNumber'
          property :load_module, as: 'loadModule', class: Google::Apis::TracingV1::Module, decorator: Google::Apis::TracingV1::Module::Representation
      
        end
      end
      
      class Link
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
          property :trace_id, as: 'traceId'
          property :span_id, :numeric_string => true, as: 'spanId'
        end
      end
      
      class Annotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          hash :attributes, as: 'attributes', class: Google::Apis::TracingV1::AttributeValue, decorator: Google::Apis::TracingV1::AttributeValue::Representation
      
        end
      end
      
      class Trace
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class Module
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :module, as: 'module'
          property :build_id, as: 'buildId'
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
      
      class ListTracesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :traces, as: 'traces', class: Google::Apis::TracingV1::Trace, decorator: Google::Apis::TracingV1::Trace::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class Span
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attributes, as: 'attributes', class: Google::Apis::TracingV1::AttributeValue, decorator: Google::Apis::TracingV1::AttributeValue::Representation
      
          property :id, :numeric_string => true, as: 'id'
          property :local_start_time, as: 'localStartTime'
          property :has_remote_parent, as: 'hasRemoteParent'
          property :local_end_time, as: 'localEndTime'
          property :parent_id, :numeric_string => true, as: 'parentId'
          collection :time_events, as: 'timeEvents', class: Google::Apis::TracingV1::TimeEvent, decorator: Google::Apis::TracingV1::TimeEvent::Representation
      
          property :status, as: 'status', class: Google::Apis::TracingV1::Status, decorator: Google::Apis::TracingV1::Status::Representation
      
          property :name, as: 'name'
          property :stack_trace, as: 'stackTrace', class: Google::Apis::TracingV1::StackTrace, decorator: Google::Apis::TracingV1::StackTrace::Representation
      
          collection :links, as: 'links', class: Google::Apis::TracingV1::Link, decorator: Google::Apis::TracingV1::Link::Representation
      
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class AttributeValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :int_value, :numeric_string => true, as: 'intValue'
          property :string_value, as: 'stringValue'
          property :bool_value, as: 'boolValue'
        end
      end
      
      class BatchUpdateSpansRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :span_updates, as: 'spanUpdates', class: Google::Apis::TracingV1::SpanUpdates, decorator: Google::Apis::TracingV1::SpanUpdates::Representation
      
        end
      end
    end
  end
end
