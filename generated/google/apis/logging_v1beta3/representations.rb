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
    end
  end
end
