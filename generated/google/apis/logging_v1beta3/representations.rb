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
    module LoggingV1beta3
      
      class ListLogsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Log
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class WriteLogEntriesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class LogEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class LogEntryMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class HttpRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class WriteLogEntriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListLogServicesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class LogService
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListLogServiceIndexesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListLogSinksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class LogSink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class LogError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListLogServiceSinksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListSinksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListLogMetricsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class LogMetric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class RequestLog
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class LogLine
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class SourceLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class SourceReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListLogsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :logs, as: 'logs', class: Google::Apis::LoggingV1beta3::Log, decorator: Google::Apis::LoggingV1beta3::Log::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class Log
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :display_name, as: 'displayName'
          property :payload_type, as: 'payloadType'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class WriteLogEntriesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :common_labels, as: 'commonLabels'
          collection :entries, as: 'entries', class: Google::Apis::LoggingV1beta3::LogEntry, decorator: Google::Apis::LoggingV1beta3::LogEntry::Representation
      
        end
      end
      
      class LogEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metadata, as: 'metadata', class: Google::Apis::LoggingV1beta3::LogEntryMetadata, decorator: Google::Apis::LoggingV1beta3::LogEntryMetadata::Representation
      
          hash :proto_payload, as: 'protoPayload'
          property :text_payload, as: 'textPayload'
          hash :struct_payload, as: 'structPayload'
          property :insert_id, as: 'insertId'
          property :log, as: 'log'
          property :http_request, as: 'httpRequest', class: Google::Apis::LoggingV1beta3::HttpRequest, decorator: Google::Apis::LoggingV1beta3::HttpRequest::Representation
      
        end
      end
      
      class LogEntryMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :timestamp, as: 'timestamp'
          property :severity, as: 'severity'
          property :project_id, as: 'projectId'
          property :service_name, as: 'serviceName'
          property :region, as: 'region'
          property :zone, as: 'zone'
          property :user_id, as: 'userId'
          hash :labels, as: 'labels'
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
          property :cache_hit, as: 'cacheHit'
          property :validated_with_origin_server, as: 'validatedWithOriginServer'
        end
      end
      
      class WriteLogEntriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ListLogServicesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :log_services, as: 'logServices', class: Google::Apis::LoggingV1beta3::LogService, decorator: Google::Apis::LoggingV1beta3::LogService::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class LogService
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          collection :index_keys, as: 'indexKeys'
        end
      end
      
      class ListLogServiceIndexesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :service_index_prefixes, as: 'serviceIndexPrefixes'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListLogSinksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :sinks, as: 'sinks', class: Google::Apis::LoggingV1beta3::LogSink, decorator: Google::Apis::LoggingV1beta3::LogSink::Representation
      
        end
      end
      
      class LogSink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :destination, as: 'destination'
          property :filter, as: 'filter'
          collection :errors, as: 'errors', class: Google::Apis::LoggingV1beta3::LogError, decorator: Google::Apis::LoggingV1beta3::LogError::Representation
      
        end
      end
      
      class LogError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource, as: 'resource'
          property :status, as: 'status', class: Google::Apis::LoggingV1beta3::Status, decorator: Google::Apis::LoggingV1beta3::Status::Representation
      
          property :time_nanos, as: 'timeNanos'
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
      
      class ListLogServiceSinksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :sinks, as: 'sinks', class: Google::Apis::LoggingV1beta3::LogSink, decorator: Google::Apis::LoggingV1beta3::LogSink::Representation
      
        end
      end
      
      class ListSinksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :sinks, as: 'sinks', class: Google::Apis::LoggingV1beta3::LogSink, decorator: Google::Apis::LoggingV1beta3::LogSink::Representation
      
        end
      end
      
      class ListLogMetricsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :metrics, as: 'metrics', class: Google::Apis::LoggingV1beta3::LogMetric, decorator: Google::Apis::LoggingV1beta3::LogMetric::Representation
      
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
          property :instance_id, as: 'instanceId'
          collection :line, as: 'line', class: Google::Apis::LoggingV1beta3::LogLine, decorator: Google::Apis::LoggingV1beta3::LogLine::Representation
      
          property :app_engine_release, as: 'appEngineRelease'
          property :trace_id, as: 'traceId'
          collection :source_reference, as: 'sourceReference', class: Google::Apis::LoggingV1beta3::SourceReference, decorator: Google::Apis::LoggingV1beta3::SourceReference::Representation
      
        end
      end
      
      class LogLine
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :time, as: 'time'
          property :severity, as: 'severity'
          property :log_message, as: 'logMessage'
          property :source_location, as: 'sourceLocation', class: Google::Apis::LoggingV1beta3::SourceLocation, decorator: Google::Apis::LoggingV1beta3::SourceLocation::Representation
      
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
