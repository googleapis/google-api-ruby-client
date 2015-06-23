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
      
      # Result returned from ListLogs.
      class ListLogsResponse
        include Google::Apis::Core::Hashable
      
        # A list of log resources.
        # Corresponds to the JSON property `logs`
        # @return [Array<Google::Apis::LoggingV1beta3::Log>]
        attr_accessor :logs
      
        # If there are more results, then `nextPageToken` is returned in the response.
        # To get the next batch of logs, use the value of `nextPageToken` as `pageToken`
        # in the next call of `ListLogs`. If `nextPageToken` is empty, then there are no
        # more results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @logs = args[:logs] unless args[:logs].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # A log object.
      class Log
        include Google::Apis::Core::Hashable
      
        # REQUIRED: The log's name name. Example: `"compute.googleapis.com/activity_log"`
        # .
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Name used when displaying the log to the user (for example, in a UI). Example:
        # `"activity_log"`
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Type URL describing the expected payload type for the log.
        # Corresponds to the JSON property `payloadType`
        # @return [String]
        attr_accessor :payload_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] unless args[:name].nil?
          @display_name = args[:display_name] unless args[:display_name].nil?
          @payload_type = args[:payload_type] unless args[:payload_type].nil?
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The parameters to WriteLogEntries.
      class WriteLogEntriesRequest
        include Google::Apis::Core::Hashable
      
        # Metadata labels that apply to all entries in this request. If one of the log
        # entries contains a (key, value) with the same key that is in `commonLabels`,
        # then the entry's (key, value) overrides the one in `commonLabels`.
        # Corresponds to the JSON property `commonLabels`
        # @return [Hash<String,String>]
        attr_accessor :common_labels
      
        # Log entries to insert.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::LoggingV1beta3::LogEntry>]
        attr_accessor :entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_labels = args[:common_labels] unless args[:common_labels].nil?
          @entries = args[:entries] unless args[:entries].nil?
        end
      end
      
      # An individual entry in a log.
      class LogEntry
        include Google::Apis::Core::Hashable
      
        # Additional data that is associated with a log entry, set by the service
        # creating the log entry.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::LoggingV1beta3::LogEntryMetadata]
        attr_accessor :metadata
      
        # The log entry payload, represented as a protocol buffer that is expressed as a
        # JSON object. You can only pass `protoPayload` values that belong to a set of
        # approved types.
        # Corresponds to the JSON property `protoPayload`
        # @return [Hash<String,Object>]
        attr_accessor :proto_payload
      
        # The log entry payload, represented as a text string.
        # Corresponds to the JSON property `textPayload`
        # @return [String]
        attr_accessor :text_payload
      
        # The log entry payload, represented as a structure that is expressed as a JSON
        # object.
        # Corresponds to the JSON property `structPayload`
        # @return [Hash<String,Object>]
        attr_accessor :struct_payload
      
        # A unique ID for the log entry. If you provide this field, the logging service
        # considers other log entries in the same log with the same ID as duplicates
        # which can be removed.
        # Corresponds to the JSON property `insertId`
        # @return [String]
        attr_accessor :insert_id
      
        # The log to which this entry belongs. When a log entry is ingested, the value
        # of this field is set by the logging system.
        # Corresponds to the JSON property `log`
        # @return [String]
        attr_accessor :log
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metadata = args[:metadata] unless args[:metadata].nil?
          @proto_payload = args[:proto_payload] unless args[:proto_payload].nil?
          @text_payload = args[:text_payload] unless args[:text_payload].nil?
          @struct_payload = args[:struct_payload] unless args[:struct_payload].nil?
          @insert_id = args[:insert_id] unless args[:insert_id].nil?
          @log = args[:log] unless args[:log].nil?
        end
      end
      
      # Additional data that is associated with a log entry, set by the service
      # creating the log entry.
      class LogEntryMetadata
        include Google::Apis::Core::Hashable
      
        # The time the event described by the log entry occurred. Timestamps must be
        # later than January 1, 1970.
        # Corresponds to the JSON property `timestamp`
        # @return [String]
        attr_accessor :timestamp
      
        # The severity of the log entry.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # The project ID of the Google Cloud Platform service that created the log entry.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # The API name of the Google Cloud Platform service that created the log entry.
        # For example, `"compute.googleapis.com"`.
        # Corresponds to the JSON property `serviceName`
        # @return [String]
        attr_accessor :service_name
      
        # The region name of the Google Cloud Platform service that created the log
        # entry. For example, `"us-central1"`.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # The zone of the Google Cloud Platform service that created the log entry. For
        # example, `"us-central1-a"`.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        # The fully-qualified email address of the authenticated user that performed or
        # requested the action represented by the log entry. If the log entry does not
        # apply to an action taken by an authenticated user, then the field should be
        # empty.
        # Corresponds to the JSON property `userId`
        # @return [String]
        attr_accessor :user_id
      
        # A set of (key, value) data that provides additional information about the log
        # entry. If the log entry is from one of the Google Cloud Platform sources
        # listed below, the indicated (key, value) information must be provided: Google
        # App Engine, service_name `appengine.googleapis.com`: "appengine.googleapis.com/
        # module_id",  "appengine.googleapis.com/version_id",  and one of: "appengine.
        # googleapis.com/replica_index",  "appengine.googleapis.com/clone_id",  or else
        # provide the following Compute Engine labels: Google Compute Engine,
        # service_name `compute.googleapis.com`: "compute.googleapis.com/resource_type",
        # "instance" "compute.googleapis.com/resource_id",
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @timestamp = args[:timestamp] unless args[:timestamp].nil?
          @severity = args[:severity] unless args[:severity].nil?
          @project_id = args[:project_id] unless args[:project_id].nil?
          @service_name = args[:service_name] unless args[:service_name].nil?
          @region = args[:region] unless args[:region].nil?
          @zone = args[:zone] unless args[:zone].nil?
          @user_id = args[:user_id] unless args[:user_id].nil?
          @labels = args[:labels] unless args[:labels].nil?
        end
      end
      
      # Result returned from WriteLogEntries. empty
      class WriteLogEntriesResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Result returned from `ListLogServicesRequest`.
      class ListLogServicesResponse
        include Google::Apis::Core::Hashable
      
        # A list of log services.
        # Corresponds to the JSON property `logServices`
        # @return [Array<Google::Apis::LoggingV1beta3::LogService>]
        attr_accessor :log_services
      
        # If there are more results, then `nextPageToken` is returned in the response.
        # To get the next batch of services, use the value of `nextPageToken` as `
        # pageToken` in the next call of `ListLogServices`. If `nextPageToken` is empty,
        # then there are no more results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @log_services = args[:log_services] unless args[:log_services].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # A log service object.
      class LogService
        include Google::Apis::Core::Hashable
      
        # The service's name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Label keys used when labeling log entries for this service. The order of the
        # keys is significant, with higher priority keys coming earlier in the list.
        # Corresponds to the JSON property `indexKeys`
        # @return [Array<String>]
        attr_accessor :index_keys
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] unless args[:name].nil?
          @index_keys = args[:index_keys] unless args[:index_keys].nil?
        end
      end
      
      # Result returned from ListLogServiceIndexesRequest.
      class ListLogServiceIndexesResponse
        include Google::Apis::Core::Hashable
      
        # A list of log service index prefixes.
        # Corresponds to the JSON property `serviceIndexPrefixes`
        # @return [Array<String>]
        attr_accessor :service_index_prefixes
      
        # If there are more results, then `nextPageToken` is returned in the response.
        # To get the next batch of indexes, use the value of `nextPageToken` as `
        # pageToken` in the next call of `ListLogServiceIndexess`. If `nextPageToken` is
        # empty, then there are no more results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @service_index_prefixes = args[:service_index_prefixes] unless args[:service_index_prefixes].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # Result returned from `ListLogSinks`.
      class ListLogSinksResponse
        include Google::Apis::Core::Hashable
      
        # The requested log sinks. If any of the returned `LogSink` objects have an
        # empty `destination` field, then call `logServices.sinks.get` to retrieve the
        # complete `LogSink` object.
        # Corresponds to the JSON property `sinks`
        # @return [Array<Google::Apis::LoggingV1beta3::LogSink>]
        attr_accessor :sinks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sinks = args[:sinks] unless args[:sinks].nil?
        end
      end
      
      # An object that describes where a log may be written.
      class LogSink
        include Google::Apis::Core::Hashable
      
        # The name of this sink. This is a client-assigned identifier for the resource.
        # This is ignored by UpdateLogSink and UpdateLogServicesSink.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The resource to send log entries to. The supported sink resource types are: +
        # Google Cloud Storage: `storage.googleapis.com/BUCKET` or `BUCKET.storage.
        # googleapis.com/` + Google BigQuery: `bigquery.googleapis.com/projects/PROJECT/
        # datasets/DATASET` Currently the Cloud Logging API supports at most one sink
        # for each resource type per log or log service resource.
        # Corresponds to the JSON property `destination`
        # @return [String]
        attr_accessor :destination
      
        # _Output only._ All active errors found for this sink.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::LoggingV1beta3::LogError>]
        attr_accessor :errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] unless args[:name].nil?
          @destination = args[:destination] unless args[:destination].nil?
          @errors = args[:errors] unless args[:errors].nil?
        end
      end
      
      # A problem in a sink or the sink's configuration.
      class LogError
        include Google::Apis::Core::Hashable
      
        # The resource associated with the error. It may be different from the sink
        # destination. For example, the sink may point to a BigQuery dataset, but the
        # error may refer to a table resource inside the dataset.
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        # Represents the RPC error status for Google APIs. See http://go/errormodel for
        # details.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::LoggingV1beta3::Status]
        attr_accessor :status
      
        # The last time the error was observed, in nanoseconds since the Unix epoch.
        # Corresponds to the JSON property `timeNanos`
        # @return [String]
        attr_accessor :time_nanos
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource = args[:resource] unless args[:resource].nil?
          @status = args[:status] unless args[:status].nil?
          @time_nanos = args[:time_nanos] unless args[:time_nanos].nil?
        end
      end
      
      # Represents the RPC error status for Google APIs. See http://go/errormodel for
      # details.
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of [google.rpc.Code][].
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A developer-facing error message, which should be in English. The user-facing
        # error message should be localized and stored in the [google.rpc.Status.details]
        # [google.rpc.Status.details] field.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # A list of messages that carry the error details. There will be a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] unless args[:code].nil?
          @message = args[:message] unless args[:message].nil?
          @details = args[:details] unless args[:details].nil?
        end
      end
      
      # Result returned from `ListLogServiceSinks`.
      class ListLogServiceSinksResponse
        include Google::Apis::Core::Hashable
      
        # The requested log service sinks. If any of the returned `LogSink` objects have
        # an empty `destination` field, then call `logServices.sinks.get` to retrieve
        # the complete `LogSink` object.
        # Corresponds to the JSON property `sinks`
        # @return [Array<Google::Apis::LoggingV1beta3::LogSink>]
        attr_accessor :sinks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sinks = args[:sinks] unless args[:sinks].nil?
        end
      end
    end
  end
end
