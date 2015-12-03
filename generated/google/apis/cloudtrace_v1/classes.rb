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
    module CloudtraceV1
      
      # The response message for the ListTraces method.
      class ListTracesResponse
        include Google::Apis::Core::Hashable
      
        # The list of trace records returned.
        # Corresponds to the JSON property `traces`
        # @return [Array<Google::Apis::CloudtraceV1::Trace>]
        attr_accessor :traces
      
        # If defined, indicates that there are more topics that match the request, and
        # this value should be passed to the next ListTopicsRequest to continue.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @traces = args[:traces] unless args[:traces].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # A Trace is a collection of spans describing the execution timings of a single
      # operation.
      class Trace
        include Google::Apis::Core::Hashable
      
        # The Project ID of the Google Cloud project.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # A 128-bit numeric value, formatted as a 32-byte hex string, that represents a
        # trace. Each trace should have an identifier that is globally unique.
        # Corresponds to the JSON property `traceId`
        # @return [String]
        attr_accessor :trace_id
      
        # The collection of span records within this trace. Spans that appear in calls
        # to PatchTraces may be incomplete or partial.
        # Corresponds to the JSON property `spans`
        # @return [Array<Google::Apis::CloudtraceV1::TraceSpan>]
        attr_accessor :spans
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @project_id = args[:project_id] unless args[:project_id].nil?
          @trace_id = args[:trace_id] unless args[:trace_id].nil?
          @spans = args[:spans] unless args[:spans].nil?
        end
      end
      
      # A span is the data recorded with a single span.
      class TraceSpan
        include Google::Apis::Core::Hashable
      
        # Identifier of the span within the trace. Each span should have an identifier
        # that is unique per trace.
        # Corresponds to the JSON property `spanId`
        # @return [String]
        attr_accessor :span_id
      
        # SpanKind distinguishes spans generated in a particular context. For example,
        # two spans with the same name, one with the kind RPC_CLIENT, and the other with
        # RPC_SERVER can indicate the queueing latency associated with the span.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The name of the trace. This is sanitized and displayed on the UI. This may be
        # a method name or some other per-callsite name. For the same binary and the
        # same call point, it is a good practice to choose a consistent name in order to
        # correlate cross-trace spans.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The start time of the span in nanoseconds from the UNIX epoch.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # The end time of the span in nanoseconds from the UNIX epoch.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Identifies the parent of the current span. May be missing. Serialized bytes
        # representation of SpanId.
        # Corresponds to the JSON property `parentSpanId`
        # @return [String]
        attr_accessor :parent_span_id
      
        # Annotations via labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @span_id = args[:span_id] unless args[:span_id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @start_time = args[:start_time] unless args[:start_time].nil?
          @end_time = args[:end_time] unless args[:end_time].nil?
          @parent_span_id = args[:parent_span_id] unless args[:parent_span_id].nil?
          @labels = args[:labels] unless args[:labels].nil?
        end
      end
      
      # A list of traces for the PatchTraces method.
      class Traces
        include Google::Apis::Core::Hashable
      
        # A list of traces.
        # Corresponds to the JSON property `traces`
        # @return [Array<Google::Apis::CloudtraceV1::Trace>]
        attr_accessor :traces
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @traces = args[:traces] unless args[:traces].nil?
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); ` The JSON representation for
      # `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
    end
  end
end
