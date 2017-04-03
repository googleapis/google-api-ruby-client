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
      
      # StackTrace collected in a trace.
      class StackTrace
        include Google::Apis::Core::Hashable
      
        # Stack frames of this stack trace.
        # Corresponds to the JSON property `stackFrame`
        # @return [Array<Google::Apis::TracingV1::StackFrame>]
        attr_accessor :stack_frame
      
        # The hash ID is used to conserve network bandwidth for duplicate
        # stack traces within a single trace.
        # Often multiple spans will have identical stack traces.
        # The first occurance of a stack trace should contain both the
        # `stackFrame` content and a value in `stackTraceHashId`.
        # Subsequent spans within the same request can refer
        # to that stack trace by only setting `stackTraceHashId`.
        # Corresponds to the JSON property `stackTraceHashId`
        # @return [Fixnum]
        attr_accessor :stack_trace_hash_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @stack_frame = args[:stack_frame] if args.key?(:stack_frame)
          @stack_trace_hash_id = args[:stack_trace_hash_id] if args.key?(:stack_trace_hash_id)
        end
      end
      
      # A time-stamped annotation in the Span.
      class TimeEvent
        include Google::Apis::Core::Hashable
      
        # An event describing an RPC message sent/received on the network.
        # Corresponds to the JSON property `networkEvent`
        # @return [Google::Apis::TracingV1::NetworkEvent]
        attr_accessor :network_event
      
        # Text annotation with a set of attributes.
        # Corresponds to the JSON property `annotation`
        # @return [Google::Apis::TracingV1::Annotation]
        attr_accessor :annotation
      
        # The timestamp indicating the time the event occurred.
        # Corresponds to the JSON property `localTime`
        # @return [String]
        attr_accessor :local_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @network_event = args[:network_event] if args.key?(:network_event)
          @annotation = args[:annotation] if args.key?(:annotation)
          @local_time = args[:local_time] if args.key?(:local_time)
        end
      end
      
      # An event describing an RPC message sent/received on the network.
      class NetworkEvent
        include Google::Apis::Core::Hashable
      
        # An identifier for the message, which must be unique in this span.
        # Corresponds to the JSON property `messageId`
        # @return [Fixnum]
        attr_accessor :message_id
      
        # The number of bytes sent or received.
        # Corresponds to the JSON property `messageSize`
        # @return [Fixnum]
        attr_accessor :message_size
      
        # If available, this is the kernel time:
        # *  For sent messages, this is the time at which the first bit was sent.
        # *  For received messages, this is the time at which the last bit was
        # received.
        # Corresponds to the JSON property `kernelTime`
        # @return [String]
        attr_accessor :kernel_time
      
        # Type of NetworkEvent. Indicates whether the RPC message was sent or
        # received.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message_id = args[:message_id] if args.key?(:message_id)
          @message_size = args[:message_size] if args.key?(:message_size)
          @kernel_time = args[:kernel_time] if args.key?(:kernel_time)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Collection of spans to update.
      class SpanUpdates
        include Google::Apis::Core::Hashable
      
        # A collection of spans.
        # Corresponds to the JSON property `spans`
        # @return [Array<Google::Apis::TracingV1::Span>]
        attr_accessor :spans
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @spans = args[:spans] if args.key?(:spans)
        end
      end
      
      # The response message for the `ListSpans` method.
      class ListSpansResponse
        include Google::Apis::Core::Hashable
      
        # If defined, indicates that there are more spans that match the request.
        # Pass this as the value of `pageToken` in a subsequent request to retrieve
        # additional spans.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The requested spans if there are any in the specified trace.
        # Corresponds to the JSON property `spans`
        # @return [Array<Google::Apis::TracingV1::Span>]
        attr_accessor :spans
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @spans = args[:spans] if args.key?(:spans)
        end
      end
      
      # Represents a single stack frame in a stack trace.
      class StackFrame
        include Google::Apis::Core::Hashable
      
        # Column number is important in JavaScript (anonymous functions).
        # May not be available in some languages.
        # Corresponds to the JSON property `columnNumber`
        # @return [Fixnum]
        attr_accessor :column_number
      
        # The filename of the file containing this frame.
        # Corresponds to the JSON property `fileName`
        # @return [String]
        attr_accessor :file_name
      
        # The version of the deployed source code.
        # Corresponds to the JSON property `sourceVersion`
        # @return [String]
        attr_accessor :source_version
      
        # Used when the function name is
        # [mangled](http://www.avabodh.com/cxxin/namemangling.html). May be
        # fully-qualified.
        # Corresponds to the JSON property `originalFunctionName`
        # @return [String]
        attr_accessor :original_function_name
      
        # The fully-qualified name that uniquely identifies this function or
        # method.
        # Corresponds to the JSON property `functionName`
        # @return [String]
        attr_accessor :function_name
      
        # Line number of the frame.
        # Corresponds to the JSON property `lineNumber`
        # @return [Fixnum]
        attr_accessor :line_number
      
        # Binary module.
        # Corresponds to the JSON property `loadModule`
        # @return [Google::Apis::TracingV1::Module]
        attr_accessor :load_module
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column_number = args[:column_number] if args.key?(:column_number)
          @file_name = args[:file_name] if args.key?(:file_name)
          @source_version = args[:source_version] if args.key?(:source_version)
          @original_function_name = args[:original_function_name] if args.key?(:original_function_name)
          @function_name = args[:function_name] if args.key?(:function_name)
          @line_number = args[:line_number] if args.key?(:line_number)
          @load_module = args[:load_module] if args.key?(:load_module)
        end
      end
      
      # A pointer from this span to another span in a different `Trace`. Used
      # (for example) in batching operations, where a single batch handler
      # processes multiple requests from different traces.
      class Link
        include Google::Apis::Core::Hashable
      
        # The relationship of the current span relative to the linked span.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The ID of the parent trace of the linked span.
        # Corresponds to the JSON property `traceId`
        # @return [String]
        attr_accessor :trace_id
      
        # The `id` of the linked span.
        # Corresponds to the JSON property `spanId`
        # @return [Fixnum]
        attr_accessor :span_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
          @trace_id = args[:trace_id] if args.key?(:trace_id)
          @span_id = args[:span_id] if args.key?(:span_id)
        end
      end
      
      # Text annotation with a set of attributes.
      class Annotation
        include Google::Apis::Core::Hashable
      
        # A user-supplied message describing the event.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A set of attributes on the annotation.
        # Corresponds to the JSON property `attributes`
        # @return [Hash<String,Google::Apis::TracingV1::AttributeValue>]
        attr_accessor :attributes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @attributes = args[:attributes] if args.key?(:attributes)
        end
      end
      
      # A trace describes how long it takes for an application to perform some
      # operations. It consists of a set of spans, each representing
      # an operation and including time information and operation details.
      class Trace
        include Google::Apis::Core::Hashable
      
        # A globally unique identifier for the trace in the format
        # `projects/PROJECT_NUMBER/traces/TRACE_ID`. `TRACE_ID` is a base16-encoded
        # string of a 128-bit number and is required to be 32 char long.
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
      
      # Binary module.
      class Module
        include Google::Apis::Core::Hashable
      
        # E.g. main binary, kernel modules, and dynamic libraries
        # such as libc.so, sharedlib.so
        # Corresponds to the JSON property `module`
        # @return [String]
        attr_accessor :module
      
        # Build_id is a unique identifier for the module,
        # usually a hash of its contents
        # Corresponds to the JSON property `buildId`
        # @return [String]
        attr_accessor :build_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @module = args[:module] if args.key?(:module)
          @build_id = args[:build_id] if args.key?(:build_id)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by
      # [gRPC](https://github.com/grpc). The error model is designed to be:
      # - Simple to use and understand for most users
      # - Flexible enough to meet unexpected needs
      # # Overview
      # The `Status` message contains three pieces of data: error code, error message,
      # and error details. The error code should be an enum value of
      # google.rpc.Code, but it may accept additional error codes if needed.  The
      # error message should be a developer-facing English message that helps
      # developers *understand* and *resolve* the error. If a localized user-facing
      # error message is needed, put the localized message in the error details or
      # localize it in the client. The optional error details may contain arbitrary
      # information about the error. There is a predefined set of error detail types
      # in the package `google.rpc` which can be used for common error conditions.
      # # Language mapping
      # The `Status` message is the logical representation of the error model, but it
      # is not necessarily the actual wire format. When the `Status` message is
      # exposed in different client libraries and different wire protocols, it can be
      # mapped differently. For example, it will likely be mapped to some exceptions
      # in Java, but more likely mapped to some error codes in C.
      # # Other uses
      # The error model and the `Status` message can be used in a variety of
      # environments, either with or without APIs, to provide a
      # consistent developer experience across different environments.
      # Example uses of this error model include:
      # - Partial errors. If a service needs to return partial errors to the client,
      # it may embed the `Status` in the normal response to indicate the partial
      # errors.
      # - Workflow errors. A typical workflow has multiple steps. Each step may
      # have a `Status` message for error reporting purpose.
      # - Batch operations. If a client uses batch request and batch response, the
      # `Status` message should be used directly inside batch response, one for
      # each error sub-response.
      # - Asynchronous operations. If an API call embeds asynchronous operation
      # results in its response, the status of those operations should be
      # represented directly using the `Status` message.
      # - Logging. If some API errors are stored in logs, the message `Status` could
      # be used directly after any stripping needed for security/privacy reasons.
      class Status
        include Google::Apis::Core::Hashable
      
        # A developer-facing error message, which should be in English. Any
        # user-facing error message should be localized and sent in the
        # google.rpc.Status.details field, or localized by the client.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # A list of messages that carry the error details.  There will be a
        # common set of message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message = args[:message] if args.key?(:message)
          @details = args[:details] if args.key?(:details)
          @code = args[:code] if args.key?(:code)
        end
      end
      
      # The response message for the `ListTraces` method.
      class ListTracesResponse
        include Google::Apis::Core::Hashable
      
        # List of trace records returned.
        # Corresponds to the JSON property `traces`
        # @return [Array<Google::Apis::TracingV1::Trace>]
        attr_accessor :traces
      
        # If defined, indicates that there are more traces that match the request
        # and that this value should be passed to the next request to continue
        # retrieving additional traces.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @traces = args[:traces] if args.key?(:traces)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # A span represents a single operation within a trace. Spans can be nested
      # to form a trace tree. Often, a trace contains a root span that
      # describes the end-to-end latency and, optionally, one or more subspans for
      # its sub-operations. (A trace could alternatively contain multiple root spans,
      # or none at all.) Spans do not need to be contiguous. There may be gaps
      # and/or overlaps between spans in a trace.
      class Span
        include Google::Apis::Core::Hashable
      
        # Properties of a span in key:value format. The maximum length for the
        # key is 128 characters. The value can be a string (up to 2000 characters),
        # int, or boolean.
        # Some common pair examples:
        # "/instance_id": "my-instance"
        # "/zone": "us-central1-a"
        # "/grpc/peer_address": "ip:port" (dns, etc.)
        # "/grpc/deadline": "Duration"
        # "/http/user_agent"
        # "/http/request_bytes": 300
        # "/http/response_bytes": 1200
        # "/http/url": google.com/apis
        # "abc.com/myattribute": true
        # Corresponds to the JSON property `attributes`
        # @return [Hash<String,Google::Apis::TracingV1::AttributeValue>]
        attr_accessor :attributes
      
        # Identifier for the span. Must be a 64-bit integer other than 0 and
        # unique within a trace.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # Start time of the span.
        # On the client side, this is the local machine clock time at which the span
        # execution was started; on the server
        # side, this is the time at which the server application handler started
        # running.
        # Corresponds to the JSON property `localStartTime`
        # @return [String]
        attr_accessor :local_start_time
      
        # True if this span has a remote parent (is an RPC server span).
        # Corresponds to the JSON property `hasRemoteParent`
        # @return [Boolean]
        attr_accessor :has_remote_parent
        alias_method :has_remote_parent?, :has_remote_parent
      
        # End time of the span.
        # On the client side, this is the local machine clock time at which the span
        # execution was ended; on the server
        # side, this is the time at which the server application handler stopped
        # running.
        # Corresponds to the JSON property `localEndTime`
        # @return [String]
        attr_accessor :local_end_time
      
        # ID of the parent span. If this is a root span, the value must be `0` or
        # empty.
        # Corresponds to the JSON property `parentId`
        # @return [Fixnum]
        attr_accessor :parent_id
      
        # A collection of `TimeEvent`s. A `TimeEvent` is a time-stamped annotation
        # on the span, consisting of either user-supplied key:value pairs, or
        # details of an RPC message sent/received on the network.
        # Corresponds to the JSON property `timeEvents`
        # @return [Array<Google::Apis::TracingV1::TimeEvent>]
        attr_accessor :time_events
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by
        # [gRPC](https://github.com/grpc). The error model is designed to be:
        # - Simple to use and understand for most users
        # - Flexible enough to meet unexpected needs
        # # Overview
        # The `Status` message contains three pieces of data: error code, error message,
        # and error details. The error code should be an enum value of
        # google.rpc.Code, but it may accept additional error codes if needed.  The
        # error message should be a developer-facing English message that helps
        # developers *understand* and *resolve* the error. If a localized user-facing
        # error message is needed, put the localized message in the error details or
        # localize it in the client. The optional error details may contain arbitrary
        # information about the error. There is a predefined set of error detail types
        # in the package `google.rpc` which can be used for common error conditions.
        # # Language mapping
        # The `Status` message is the logical representation of the error model, but it
        # is not necessarily the actual wire format. When the `Status` message is
        # exposed in different client libraries and different wire protocols, it can be
        # mapped differently. For example, it will likely be mapped to some exceptions
        # in Java, but more likely mapped to some error codes in C.
        # # Other uses
        # The error model and the `Status` message can be used in a variety of
        # environments, either with or without APIs, to provide a
        # consistent developer experience across different environments.
        # Example uses of this error model include:
        # - Partial errors. If a service needs to return partial errors to the client,
        # it may embed the `Status` in the normal response to indicate the partial
        # errors.
        # - Workflow errors. A typical workflow has multiple steps. Each step may
        # have a `Status` message for error reporting purpose.
        # - Batch operations. If a client uses batch request and batch response, the
        # `Status` message should be used directly inside batch response, one for
        # each error sub-response.
        # - Asynchronous operations. If an API call embeds asynchronous operation
        # results in its response, the status of those operations should be
        # represented directly using the `Status` message.
        # - Logging. If some API errors are stored in logs, the message `Status` could
        # be used directly after any stripping needed for security/privacy reasons.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::TracingV1::Status]
        attr_accessor :status
      
        # Name of the span. The span name is sanitized and displayed in the
        # Stackdriver Trace tool in the `% dynamic print site_values.console_name %`.
        # The name may be a method name or some other per-call site name.
        # For the same executable and the same call point, a best practice is
        # to use a consistent name, which makes it easier to correlate
        # cross-trace spans.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # StackTrace collected in a trace.
        # Corresponds to the JSON property `stackTrace`
        # @return [Google::Apis::TracingV1::StackTrace]
        attr_accessor :stack_trace
      
        # A collection of links, which are references from this span to another span
        # in a different trace.
        # Corresponds to the JSON property `links`
        # @return [Array<Google::Apis::TracingV1::Link>]
        attr_accessor :links
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @id = args[:id] if args.key?(:id)
          @local_start_time = args[:local_start_time] if args.key?(:local_start_time)
          @has_remote_parent = args[:has_remote_parent] if args.key?(:has_remote_parent)
          @local_end_time = args[:local_end_time] if args.key?(:local_end_time)
          @parent_id = args[:parent_id] if args.key?(:parent_id)
          @time_events = args[:time_events] if args.key?(:time_events)
          @status = args[:status] if args.key?(:status)
          @name = args[:name] if args.key?(:name)
          @stack_trace = args[:stack_trace] if args.key?(:stack_trace)
          @links = args[:links] if args.key?(:links)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated
      # empty messages in your APIs. A typical example is to use it as the request
      # or the response type of an API method. For instance:
      # service Foo `
      # rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
      # `
      # The JSON representation for `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The allowed types for the value side of an attribute key:value pair.
      class AttributeValue
        include Google::Apis::Core::Hashable
      
        # An integer value.
        # Corresponds to the JSON property `intValue`
        # @return [Fixnum]
        attr_accessor :int_value
      
        # A string value.
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        # A boolean value.
        # Corresponds to the JSON property `boolValue`
        # @return [Boolean]
        attr_accessor :bool_value
        alias_method :bool_value?, :bool_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @int_value = args[:int_value] if args.key?(:int_value)
          @string_value = args[:string_value] if args.key?(:string_value)
          @bool_value = args[:bool_value] if args.key?(:bool_value)
        end
      end
      
      # The request message for the `BatchUpdateSpans` method.
      class BatchUpdateSpansRequest
        include Google::Apis::Core::Hashable
      
        # A map from trace name to spans to be stored or updated.
        # Corresponds to the JSON property `spanUpdates`
        # @return [Hash<String,Google::Apis::TracingV1::SpanUpdates>]
        attr_accessor :span_updates
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @span_updates = args[:span_updates] if args.key?(:span_updates)
        end
      end
    end
  end
end
