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
      
      class ListTracesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Trace
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TraceSpan
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Traces
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListTracesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :traces, as: 'traces', class: Google::Apis::CloudtraceV1::Trace, decorator: Google::Apis::CloudtraceV1::Trace::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class Trace
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :project_id, as: 'projectId'
          property :trace_id, as: 'traceId'
          collection :spans, as: 'spans', class: Google::Apis::CloudtraceV1::TraceSpan, decorator: Google::Apis::CloudtraceV1::TraceSpan::Representation
      
        end
      end
      
      class TraceSpan
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :span_id, as: 'spanId'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :start_time, as: 'startTime'
          property :end_time, as: 'endTime'
          property :parent_span_id, as: 'parentSpanId'
          hash :labels, as: 'labels'
        end
      end
      
      class Traces
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :traces, as: 'traces', class: Google::Apis::CloudtraceV1::Trace, decorator: Google::Apis::CloudtraceV1::Trace::Representation
      
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
    end
  end
end
