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
      
      class ListLogsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class LogRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class EmptyRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class WriteLogEntriesRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class LogEntryRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class LogEntryMetadataRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class WriteLogEntriesResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ListLogServicesResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class LogServiceRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ListLogServiceIndexesResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ListLogSinksResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class LogSinkRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class LogErrorRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class StatusRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ListLogServiceSinksResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end

      # @private
      class ListLogsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :logs, as: 'logs', class: Google::Apis::LoggingV1beta3::Log, decorator: Google::Apis::LoggingV1beta3::LogRepresentation
        
        
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class LogRepresentation < Google::Apis::Core::JsonRepresentation
        property :name, as: 'name'
        property :display_name, as: 'displayName'
        property :payload_type, as: 'payloadType'
      end

      # @private
      class EmptyRepresentation < Google::Apis::Core::JsonRepresentation
        
      end

      # @private
      class WriteLogEntriesRequestRepresentation < Google::Apis::Core::JsonRepresentation
        hash :common_labels, as: 'commonLabels'
        
        collection :entries, as: 'entries', class: Google::Apis::LoggingV1beta3::LogEntry, decorator: Google::Apis::LoggingV1beta3::LogEntryRepresentation
      end

      # @private
      class LogEntryRepresentation < Google::Apis::Core::JsonRepresentation
        property :metadata, as: 'metadata', class: Google::Apis::LoggingV1beta3::LogEntryMetadata, decorator: Google::Apis::LoggingV1beta3::LogEntryMetadataRepresentation
        
        hash :proto_payload, as: 'protoPayload'
        
        property :text_payload, as: 'textPayload'
        hash :struct_payload, as: 'structPayload'
        
        property :insert_id, as: 'insertId'
        property :log, as: 'log'
      end

      # @private
      class LogEntryMetadataRepresentation < Google::Apis::Core::JsonRepresentation
        property :timestamp, as: 'timestamp'
        property :severity, as: 'severity'
        property :project_id, as: 'projectId'
        property :service_name, as: 'serviceName'
        property :region, as: 'region'
        property :zone, as: 'zone'
        property :user_id, as: 'userId'
        hash :labels, as: 'labels'
      end

      # @private
      class WriteLogEntriesResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end

      # @private
      class ListLogServicesResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :log_services, as: 'logServices', class: Google::Apis::LoggingV1beta3::LogService, decorator: Google::Apis::LoggingV1beta3::LogServiceRepresentation
        
        
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class LogServiceRepresentation < Google::Apis::Core::JsonRepresentation
        property :name, as: 'name'
        collection :index_keys, as: 'indexKeys'
      end

      # @private
      class ListLogServiceIndexesResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :service_index_prefixes, as: 'serviceIndexPrefixes'
        
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class ListLogSinksResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :sinks, as: 'sinks', class: Google::Apis::LoggingV1beta3::LogSink, decorator: Google::Apis::LoggingV1beta3::LogSinkRepresentation
      end

      # @private
      class LogSinkRepresentation < Google::Apis::Core::JsonRepresentation
        property :name, as: 'name'
        property :destination, as: 'destination'
        collection :errors, as: 'errors', class: Google::Apis::LoggingV1beta3::LogError, decorator: Google::Apis::LoggingV1beta3::LogErrorRepresentation
      end

      # @private
      class LogErrorRepresentation < Google::Apis::Core::JsonRepresentation
        property :resource, as: 'resource'
        property :status, as: 'status', class: Google::Apis::LoggingV1beta3::Status, decorator: Google::Apis::LoggingV1beta3::StatusRepresentation
        
        property :time_nanos, as: 'timeNanos'
      end

      # @private
      class StatusRepresentation < Google::Apis::Core::JsonRepresentation
        property :code, as: 'code'
        property :message, as: 'message'
        collection :details, as: 'details'
      end

      # @private
      class ListLogServiceSinksResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :sinks, as: 'sinks', class: Google::Apis::LoggingV1beta3::LogSink, decorator: Google::Apis::LoggingV1beta3::LogSinkRepresentation
      end
    end
  end
end
