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
    module LoggingV2beta1
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WriteLogEntriesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MonitoredResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogEntryOperation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WriteLogEntriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLogEntriesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLogEntriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListMonitoredResourceDescriptorsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MonitoredResourceDescriptor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LabelDescriptor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSinksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogSink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLogMetricsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogMetric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RequestLog
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogLine
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class WriteLogEntriesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :log_name, as: 'logName'
          property :resource, as: 'resource', class: Google::Apis::LoggingV2beta1::MonitoredResource, decorator: Google::Apis::LoggingV2beta1::MonitoredResource::Representation
      
          hash :labels, as: 'labels'
          collection :entries, as: 'entries', class: Google::Apis::LoggingV2beta1::LogEntry, decorator: Google::Apis::LoggingV2beta1::LogEntry::Representation
      
          property :partial_success, as: 'partialSuccess'
        end
      end
      
      class MonitoredResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
          hash :labels, as: 'labels'
        end
      end
      
      class LogEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :log_name, as: 'logName'
          property :resource, as: 'resource', class: Google::Apis::LoggingV2beta1::MonitoredResource, decorator: Google::Apis::LoggingV2beta1::MonitoredResource::Representation
      
          hash :proto_payload, as: 'protoPayload'
          property :text_payload, as: 'textPayload'
          hash :json_payload, as: 'jsonPayload'
          property :timestamp, as: 'timestamp'
          property :severity, as: 'severity'
          property :insert_id, as: 'insertId'
          property :http_request, as: 'httpRequest', class: Google::Apis::LoggingV2beta1::HttpRequest, decorator: Google::Apis::LoggingV2beta1::HttpRequest::Representation
      
          hash :labels, as: 'labels'
          property :operation, as: 'operation', class: Google::Apis::LoggingV2beta1::LogEntryOperation, decorator: Google::Apis::LoggingV2beta1::LogEntryOperation::Representation
      
        end
      end
      
      class HttpRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_method, as: 'requestMethod'
          property :request_url, as: 'requestUrl'
          property :request_size, as: 'requestSize'
          property :status, as: 'status'
          property :response_size, as: 'responseSize'
          property :user_agent, as: 'userAgent'
          property :remote_ip, as: 'remoteIp'
          property :referer, as: 'referer'
          property :cache_lookup, as: 'cacheLookup'
          property :cache_hit, as: 'cacheHit'
          property :cache_validated_with_origin_server, as: 'cacheValidatedWithOriginServer'
          property :cache_fill_bytes, as: 'cacheFillBytes'
        end
      end
      
      class LogEntryOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :producer, as: 'producer'
          property :first, as: 'first'
          property :last, as: 'last'
        end
      end
      
      class WriteLogEntriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ListLogEntriesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :project_ids, as: 'projectIds'
          property :filter, as: 'filter'
          property :order_by, as: 'orderBy'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          property :partial_success, as: 'partialSuccess'
        end
      end
      
      class ListLogEntriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::LoggingV2beta1::LogEntry, decorator: Google::Apis::LoggingV2beta1::LogEntry::Representation
      
          property :next_page_token, as: 'nextPageToken'
          hash :project_id_errors, as: 'projectIdErrors', class: Google::Apis::LoggingV2beta1::Status, decorator: Google::Apis::LoggingV2beta1::Status::Representation
      
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :message, as: 'message'
          collection :details, as: 'details'
        end
      end
      
      class ListMonitoredResourceDescriptorsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :resource_descriptors, as: 'resourceDescriptors', class: Google::Apis::LoggingV2beta1::MonitoredResourceDescriptor, decorator: Google::Apis::LoggingV2beta1::MonitoredResourceDescriptor::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class MonitoredResourceDescriptor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :type, as: 'type'
          property :display_name, as: 'displayName'
          property :description, as: 'description'
          collection :labels, as: 'labels', class: Google::Apis::LoggingV2beta1::LabelDescriptor, decorator: Google::Apis::LoggingV2beta1::LabelDescriptor::Representation
      
        end
      end
      
      class LabelDescriptor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :value_type, as: 'valueType'
          property :description, as: 'description'
        end
      end
      
      class ListSinksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :sinks, as: 'sinks', class: Google::Apis::LoggingV2beta1::LogSink, decorator: Google::Apis::LoggingV2beta1::LogSink::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class LogSink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :destination, as: 'destination'
          property :filter, as: 'filter'
          property :output_version_format, as: 'outputVersionFormat'
        end
      end
      
      class ListLogMetricsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :metrics, as: 'metrics', class: Google::Apis::LoggingV2beta1::LogMetric, decorator: Google::Apis::LoggingV2beta1::LogMetric::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class LogMetric
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :description, as: 'description'
          property :filter, as: 'filter'
        end
      end
      
      class RequestLog
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_id, as: 'appId'
          property :module_id, as: 'moduleId'
          property :version_id, as: 'versionId'
          property :request_id, as: 'requestId'
          property :ip, as: 'ip'
          property :start_time, as: 'startTime'
          property :end_time, as: 'endTime'
          property :latency, as: 'latency'
          property :mega_cycles, as: 'megaCycles'
          property :method_prop, as: 'method'
          property :resource, as: 'resource'
          property :http_version, as: 'httpVersion'
          property :status, as: 'status'
          property :response_size, as: 'responseSize'
          property :referrer, as: 'referrer'
          property :user_agent, as: 'userAgent'
          property :nickname, as: 'nickname'
          property :url_map_entry, as: 'urlMapEntry'
          property :host, as: 'host'
          property :cost, as: 'cost'
          property :task_queue_name, as: 'taskQueueName'
          property :task_name, as: 'taskName'
          property :was_loading_request, as: 'wasLoadingRequest'
          property :pending_time, as: 'pendingTime'
          property :instance_index, as: 'instanceIndex'
          property :finished, as: 'finished'
          property :first, as: 'first'
          property :instance_id, as: 'instanceId'
          collection :line, as: 'line', class: Google::Apis::LoggingV2beta1::LogLine, decorator: Google::Apis::LoggingV2beta1::LogLine::Representation
      
          property :app_engine_release, as: 'appEngineRelease'
          property :trace_id, as: 'traceId'
          collection :source_reference, as: 'sourceReference', class: Google::Apis::LoggingV2beta1::SourceReference, decorator: Google::Apis::LoggingV2beta1::SourceReference::Representation
      
        end
      end
      
      class LogLine
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :time, as: 'time'
          property :severity, as: 'severity'
          property :log_message, as: 'logMessage'
          property :source_location, as: 'sourceLocation', class: Google::Apis::LoggingV2beta1::SourceLocation, decorator: Google::Apis::LoggingV2beta1::SourceLocation::Representation
      
        end
      end
      
      class SourceLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file, as: 'file'
          property :line, as: 'line'
          property :function_name, as: 'functionName'
        end
      end
      
      class SourceReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :repository, as: 'repository'
          property :revision_id, as: 'revisionId'
        end
      end
    end
  end
end
