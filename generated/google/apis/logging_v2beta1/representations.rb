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
      
      class ListLogEntriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSinksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogSink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogMetric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogLine
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MonitoredResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WriteLogEntriesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LabelDescriptor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLogMetricsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MonitoredResourceDescriptor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListMonitoredResourceDescriptorsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogEntryOperation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RequestLog
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
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::LoggingV2beta1::LogEntry, decorator: Google::Apis::LoggingV2beta1::LogEntry::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListSinksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :sinks, as: 'sinks', class: Google::Apis::LoggingV2beta1::LogSink, decorator: Google::Apis::LoggingV2beta1::LogSink::Representation
      
        end
      end
      
      class SourceLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file, as: 'file'
          property :function_name, as: 'functionName'
          property :line, as: 'line'
        end
      end
      
      class LogSink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination, as: 'destination'
          property :filter, as: 'filter'
          property :end_time, as: 'endTime'
          property :name, as: 'name'
          property :start_time, as: 'startTime'
          property :output_version_format, as: 'outputVersionFormat'
          property :writer_identity, as: 'writerIdentity'
        end
      end
      
      class LogMetric
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :filter, as: 'filter'
          property :name, as: 'name'
          property :version, as: 'version'
        end
      end
      
      class LogEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :text_payload, as: 'textPayload'
          property :http_request, as: 'httpRequest', class: Google::Apis::LoggingV2beta1::HttpRequest, decorator: Google::Apis::LoggingV2beta1::HttpRequest::Representation
      
          hash :json_payload, as: 'jsonPayload'
          hash :labels, as: 'labels'
          property :log_name, as: 'logName'
          property :severity, as: 'severity'
          property :resource, as: 'resource', class: Google::Apis::LoggingV2beta1::MonitoredResource, decorator: Google::Apis::LoggingV2beta1::MonitoredResource::Representation
      
          hash :proto_payload, as: 'protoPayload'
          property :timestamp, as: 'timestamp'
          property :insert_id, as: 'insertId'
          property :operation, as: 'operation', class: Google::Apis::LoggingV2beta1::LogEntryOperation, decorator: Google::Apis::LoggingV2beta1::LogEntryOperation::Representation
      
        end
      end
      
      class LogLine
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :time, as: 'time'
          property :severity, as: 'severity'
          property :source_location, as: 'sourceLocation', class: Google::Apis::LoggingV2beta1::SourceLocation, decorator: Google::Apis::LoggingV2beta1::SourceLocation::Representation
      
          property :log_message, as: 'logMessage'
        end
      end
      
      class SourceReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :repository, as: 'repository'
          property :revision_id, as: 'revisionId'
        end
      end
      
      class MonitoredResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :labels, as: 'labels'
          property :type, as: 'type'
        end
      end
      
      class WriteLogEntriesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :labels, as: 'labels'
          collection :entries, as: 'entries', class: Google::Apis::LoggingV2beta1::LogEntry, decorator: Google::Apis::LoggingV2beta1::LogEntry::Representation
      
          property :log_name, as: 'logName'
          property :partial_success, as: 'partialSuccess'
          property :resource, as: 'resource', class: Google::Apis::LoggingV2beta1::MonitoredResource, decorator: Google::Apis::LoggingV2beta1::MonitoredResource::Representation
      
        end
      end
      
      class LabelDescriptor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :value_type, as: 'valueType'
          property :key, as: 'key'
        end
      end
      
      class ListLogMetricsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :metrics, as: 'metrics', class: Google::Apis::LoggingV2beta1::LogMetric, decorator: Google::Apis::LoggingV2beta1::LogMetric::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class MonitoredResourceDescriptor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :description, as: 'description'
          collection :labels, as: 'labels', class: Google::Apis::LoggingV2beta1::LabelDescriptor, decorator: Google::Apis::LoggingV2beta1::LabelDescriptor::Representation
      
          property :type, as: 'type'
          property :name, as: 'name'
        end
      end
      
      class ListMonitoredResourceDescriptorsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :resource_descriptors, as: 'resourceDescriptors', class: Google::Apis::LoggingV2beta1::MonitoredResourceDescriptor, decorator: Google::Apis::LoggingV2beta1::MonitoredResourceDescriptor::Representation
      
        end
      end
      
      class LogEntryOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :producer, as: 'producer'
          property :last, as: 'last'
          property :first, as: 'first'
          property :id, as: 'id'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class HttpRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cache_lookup, as: 'cacheLookup'
          property :response_size, as: 'responseSize'
          property :status, as: 'status'
          property :cache_validated_with_origin_server, as: 'cacheValidatedWithOriginServer'
          property :referer, as: 'referer'
          property :cache_hit, as: 'cacheHit'
          property :request_url, as: 'requestUrl'
          property :latency, as: 'latency'
          property :cache_fill_bytes, as: 'cacheFillBytes'
          property :request_method, as: 'requestMethod'
          property :remote_ip, as: 'remoteIp'
          property :server_ip, as: 'serverIp'
          property :user_agent, as: 'userAgent'
          property :request_size, as: 'requestSize'
        end
      end
      
      class RequestLog
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :response_size, as: 'responseSize'
          property :request_id, as: 'requestId'
          property :first, as: 'first'
          property :method_prop, as: 'method'
          property :version_id, as: 'versionId'
          property :status, as: 'status'
          property :was_loading_request, as: 'wasLoadingRequest'
          property :ip, as: 'ip'
          property :nickname, as: 'nickname'
          property :task_queue_name, as: 'taskQueueName'
          property :pending_time, as: 'pendingTime'
          property :instance_index, as: 'instanceIndex'
          collection :source_reference, as: 'sourceReference', class: Google::Apis::LoggingV2beta1::SourceReference, decorator: Google::Apis::LoggingV2beta1::SourceReference::Representation
      
          property :module_id, as: 'moduleId'
          property :host, as: 'host'
          property :latency, as: 'latency'
          property :url_map_entry, as: 'urlMapEntry'
          property :end_time, as: 'endTime'
          collection :line, as: 'line', class: Google::Apis::LoggingV2beta1::LogLine, decorator: Google::Apis::LoggingV2beta1::LogLine::Representation
      
          property :mega_cycles, as: 'megaCycles'
          property :app_id, as: 'appId'
          property :trace_id, as: 'traceId'
          property :task_name, as: 'taskName'
          property :cost, as: 'cost'
          property :instance_id, as: 'instanceId'
          property :start_time, as: 'startTime'
          property :app_engine_release, as: 'appEngineRelease'
          property :resource, as: 'resource'
          property :http_version, as: 'httpVersion'
          property :referrer, as: 'referrer'
          property :user_agent, as: 'userAgent'
          property :finished, as: 'finished'
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
          property :filter, as: 'filter'
          collection :project_ids, as: 'projectIds'
          collection :resource_names, as: 'resourceNames'
          property :page_size, as: 'pageSize'
          property :order_by, as: 'orderBy'
          property :page_token, as: 'pageToken'
        end
      end
    end
  end
end
