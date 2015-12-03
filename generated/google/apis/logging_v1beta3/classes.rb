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
      
        # A list of log descriptions matching the criteria.
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
      
      # _Output only._ Describes a log, which is a named stream of log entries.
      class Log
        include Google::Apis::Core::Hashable
      
        # The resource name of the log. Example: `"/projects/my-gcp-project-id/logs/
        # LOG_NAME"`, where `LOG_NAME` is the URL-encoded given name of the log. The log
        # includes those log entries whose `LogEntry.log` field contains this given name.
        # To avoid name collisions, it is a best practice to prefix the given log name
        # with the service name, but this is not required. Examples of log given names: `
        # "appengine.googleapis.com/request_log"`, `"apache-access"`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # _Optional._ The common name of the log. Example: `"request_log"`.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # _Optional_. A URI representing the expected payload type for log entries.
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
      
      # The parameters to WriteLogEntries.
      class WriteLogEntriesRequest
        include Google::Apis::Core::Hashable
      
        # Metadata labels that apply to all log entries in this request, so that you don'
        # t have to repeat them in each log entry's `metadata.labels` field. If any of
        # the log entries contains a (key, value) with the same key that is in `
        # commonLabels`, then the entry's (key, value) overrides the one in `
        # commonLabels`.
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
      
        # The log entry payload, represented as a Unicode string (UTF-8).
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
      
        # A common proto for logging HTTP requests.
        # Corresponds to the JSON property `httpRequest`
        # @return [Google::Apis::LoggingV1beta3::HttpRequest]
        attr_accessor :http_request
      
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
          @http_request = args[:http_request] unless args[:http_request].nil?
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
      
      # A common proto for logging HTTP requests.
      class HttpRequest
        include Google::Apis::Core::Hashable
      
        # Request method, such as `GET`, `HEAD`, `PUT` or `POST`.
        # Corresponds to the JSON property `requestMethod`
        # @return [String]
        attr_accessor :request_method
      
        # Contains the scheme (http|https), the host name, the path and the query
        # portion of the URL that was requested.
        # Corresponds to the JSON property `requestUrl`
        # @return [String]
        attr_accessor :request_url
      
        # Size of the HTTP request message in bytes, including request headers and the
        # request body.
        # Corresponds to the JSON property `requestSize`
        # @return [String]
        attr_accessor :request_size
      
        # A response code indicates the status of response, e.g., 200.
        # Corresponds to the JSON property `status`
        # @return [Fixnum]
        attr_accessor :status
      
        # Size of the HTTP response message in bytes sent back to the client, including
        # response headers and response body.
        # Corresponds to the JSON property `responseSize`
        # @return [String]
        attr_accessor :response_size
      
        # User agent sent by the client, e.g., "Mozilla/4.0 (compatible; MSIE 6.0;
        # Windows 98; Q312461; .NET CLR 1.0.3705)".
        # Corresponds to the JSON property `userAgent`
        # @return [String]
        attr_accessor :user_agent
      
        # IP address of the client who issues the HTTP request. Could be either IPv4 or
        # IPv6.
        # Corresponds to the JSON property `remoteIp`
        # @return [String]
        attr_accessor :remote_ip
      
        # Referer (a.k.a. referrer) URL of request, as defined in http://www.w3.org/
        # Protocols/rfc2616/rfc2616-sec14.html.
        # Corresponds to the JSON property `referer`
        # @return [String]
        attr_accessor :referer
      
        # Whether or not an entity was served from cache (with or without validation).
        # Corresponds to the JSON property `cacheHit`
        # @return [Boolean]
        attr_accessor :cache_hit
        alias_method :cache_hit?, :cache_hit
      
        # Whether or not the response was validated with the origin server before being
        # served from cache. This field is only meaningful if cache_hit is True.
        # Corresponds to the JSON property `validatedWithOriginServer`
        # @return [Boolean]
        attr_accessor :validated_with_origin_server
        alias_method :validated_with_origin_server?, :validated_with_origin_server
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_method = args[:request_method] unless args[:request_method].nil?
          @request_url = args[:request_url] unless args[:request_url].nil?
          @request_size = args[:request_size] unless args[:request_size].nil?
          @status = args[:status] unless args[:status].nil?
          @response_size = args[:response_size] unless args[:response_size].nil?
          @user_agent = args[:user_agent] unless args[:user_agent].nil?
          @remote_ip = args[:remote_ip] unless args[:remote_ip].nil?
          @referer = args[:referer] unless args[:referer].nil?
          @cache_hit = args[:cache_hit] unless args[:cache_hit].nil?
          @validated_with_origin_server = args[:validated_with_origin_server] unless args[:validated_with_origin_server].nil?
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
      
      # _Output only._ Describes a service that writes log entries.
      class LogService
        include Google::Apis::Core::Hashable
      
        # The service's name. Example: `"appengine.googleapis.com"`. Log names beginning
        # with this string are reserved for this service. This value can appear in the `
        # LogEntry.metadata.serviceName` field of log entries associated with this log
        # service.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A list of the names of the keys used to index and label individual log entries
        # from this service. The first two keys are used as the primary and secondary
        # index, respectively. Additional keys may be used to label the entries. For
        # example, App Engine indexes its entries by module and by version, so its `
        # indexKeys` field is the following: [ "appengine.googleapis.com/module_id", "
        # appengine.googleapis.com/version_id" ]
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
      
        # A list of log service index values. Each index value has the form `"/value1/
        # value2/..."`, where `value1` is a value in the primary index, `value2` is a
        # value in the secondary index, and so forth.
        # Corresponds to the JSON property `serviceIndexPrefixes`
        # @return [Array<String>]
        attr_accessor :service_index_prefixes
      
        # If there are more results, then `nextPageToken` is returned in the response.
        # To get the next batch of indexes, use the value of `nextPageToken` as `
        # pageToken` in the next call of `ListLogServiceIndexes`. If `nextPageToken` is
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
      
        # The requested log sinks. If a returned `LogSink` object has an empty `
        # destination` field, the client can retrieve the complete `LogSink` object by
        # calling `log.sinks.get`.
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
      
      # Describes where log entries are written outside of Cloud Logging.
      class LogSink
        include Google::Apis::Core::Hashable
      
        # The client-assigned name of this sink. For example, `"my-syslog-sink"`. The
        # name must be unique among the sinks of a similar kind in the project.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The resource name of the destination. Cloud Logging writes designated log
        # entries to this destination. For example, `"storage.googleapis.com/my-output-
        # bucket"`.
        # Corresponds to the JSON property `destination`
        # @return [String]
        attr_accessor :destination
      
        # An advanced logs filter. If present, only log entries matching the filter are
        # written. Only project sinks use this field; log sinks and log service sinks
        # must not include a filter.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # _Output only._ If any errors occur when invoking a sink method, then this
        # field contains descriptions of the errors.
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
          @filter = args[:filter] unless args[:filter].nil?
          @errors = args[:errors] unless args[:errors].nil?
        end
      end
      
      # Describes a problem with a logging resource or operation.
      class LogError
        include Google::Apis::Core::Hashable
      
        # A resource name associated with this error. For example, the name of a Cloud
        # Storage bucket that has insufficient permissions to be a destination for log
        # entries.
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). The error model is designed to be: - Simple to
        # use and understand for most users - Flexible enough to meet unexpected needs #
        # Overview The `Status` message contains three pieces of data: error code, error
        # message, and error details. The error code should be an enum value of google.
        # rpc.Code, but it may accept additional error codes if needed. The error
        # message should be a developer-facing English message that helps developers *
        # understand* and *resolve* the error. If a localized user-facing error message
        # is needed, put the localized message in the error details or localize it in
        # the client. The optional error details may contain arbitrary information about
        # the error. There is a predefined set of error detail types in the package `
        # google.rpc` which can be used for common error conditions. # Language mapping
        # The `Status` message is the logical representation of the error model, but it
        # is not necessarily the actual wire format. When the `Status` message is
        # exposed in different client libraries and different wire protocols, it can be
        # mapped differently. For example, it will likely be mapped to some exceptions
        # in Java, but more likely mapped to some error codes in C. # Other uses The
        # error model and the `Status` message can be used in a variety of environments,
        # either with or without APIs, to provide a consistent developer experience
        # across different environments. Example uses of this error model include: -
        # Partial errors. If a service needs to return partial errors to the client, it
        # may embed the `Status` in the normal response to indicate the partial errors. -
        # Workflow errors. A typical workflow has multiple steps. Each step may have a `
        # Status` message for error reporting purpose. - Batch operations. If a client
        # uses batch request and batch response, the `Status` message should be used
        # directly inside batch response, one for each error sub-response. -
        # Asynchronous operations. If an API call embeds asynchronous operation results
        # in its response, the status of those operations should be represented directly
        # using the `Status` message. - Logging. If some API errors are stored in logs,
        # the message `Status` could be used directly after any stripping needed for
        # security/privacy reasons.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::LoggingV1beta3::Status]
        attr_accessor :status
      
        # The time the error was observed, in nanoseconds since the Unix epoch.
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
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). The error model is designed to be: - Simple to
      # use and understand for most users - Flexible enough to meet unexpected needs #
      # Overview The `Status` message contains three pieces of data: error code, error
      # message, and error details. The error code should be an enum value of google.
      # rpc.Code, but it may accept additional error codes if needed. The error
      # message should be a developer-facing English message that helps developers *
      # understand* and *resolve* the error. If a localized user-facing error message
      # is needed, put the localized message in the error details or localize it in
      # the client. The optional error details may contain arbitrary information about
      # the error. There is a predefined set of error detail types in the package `
      # google.rpc` which can be used for common error conditions. # Language mapping
      # The `Status` message is the logical representation of the error model, but it
      # is not necessarily the actual wire format. When the `Status` message is
      # exposed in different client libraries and different wire protocols, it can be
      # mapped differently. For example, it will likely be mapped to some exceptions
      # in Java, but more likely mapped to some error codes in C. # Other uses The
      # error model and the `Status` message can be used in a variety of environments,
      # either with or without APIs, to provide a consistent developer experience
      # across different environments. Example uses of this error model include: -
      # Partial errors. If a service needs to return partial errors to the client, it
      # may embed the `Status` in the normal response to indicate the partial errors. -
      # Workflow errors. A typical workflow has multiple steps. Each step may have a `
      # Status` message for error reporting purpose. - Batch operations. If a client
      # uses batch request and batch response, the `Status` message should be used
      # directly inside batch response, one for each error sub-response. -
      # Asynchronous operations. If an API call embeds asynchronous operation results
      # in its response, the status of those operations should be represented directly
      # using the `Status` message. - Logging. If some API errors are stored in logs,
      # the message `Status` could be used directly after any stripping needed for
      # security/privacy reasons.
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A developer-facing error message, which should be in English. Any user-facing
        # error message should be localized and sent in the google.rpc.Status.details
        # field, or localized by the client.
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
      
        # The requested log service sinks. If a returned `LogSink` object has an empty `
        # destination` field, the client can retrieve the complete `LogSink` object by
        # calling `logServices.sinks.get`.
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
      
      # Result returned from `ListSinks`.
      class ListSinksResponse
        include Google::Apis::Core::Hashable
      
        # The requested sinks. If a returned `LogSink` object has an empty `destination`
        # field, the client can retrieve the complete `LogSink` object by calling `
        # projects.sinks.get`.
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
      
      # Result returned from ListLogMetrics.
      class ListLogMetricsResponse
        include Google::Apis::Core::Hashable
      
        # The list of metrics that was requested.
        # Corresponds to the JSON property `metrics`
        # @return [Array<Google::Apis::LoggingV1beta3::LogMetric>]
        attr_accessor :metrics
      
        # If there are more results, then `nextPageToken` is returned in the response.
        # To get the next batch of entries, use the value of `nextPageToken` as `
        # pageToken` in the next call of `ListLogMetrics`. If `nextPageToken` is empty,
        # then there are no more results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metrics = args[:metrics] unless args[:metrics].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # Describes a logs-based metric. The value of the metric is the number of log
      # entries in your project that match a logs filter.
      class LogMetric
        include Google::Apis::Core::Hashable
      
        # The client-assigned name for this metric, such as `"severe_errors"`. Metric
        # names are limited to 1000 characters and can include only the following
        # characters: `A-Z`, `a-z`, `0-9`, and the special characters `_-.,+!*',()%/\`.
        # The slash character (`/`) denotes a hierarchy of name pieces, and it cannot be
        # the first character of the name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A description of this metric.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # An [advanced logs filter](/logging/docs/view/advanced_filters). Example: `"log:
        # syslog AND metadata.severity>=ERROR"`.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] unless args[:name].nil?
          @description = args[:description] unless args[:description].nil?
          @filter = args[:filter] unless args[:filter].nil?
        end
      end
      
      # Complete log information about a single request to an application.
      class RequestLog
        include Google::Apis::Core::Hashable
      
        # Identifies the application that handled this request.
        # Corresponds to the JSON property `appId`
        # @return [String]
        attr_accessor :app_id
      
        # Identifies the module of the application that handled this request.
        # Corresponds to the JSON property `moduleId`
        # @return [String]
        attr_accessor :module_id
      
        # Version of the application that handled this request.
        # Corresponds to the JSON property `versionId`
        # @return [String]
        attr_accessor :version_id
      
        # Globally unique identifier for a request, based on request start time. Request
        # IDs for requests which started later will compare greater as strings than
        # those for requests which started earlier.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # Origin IP address.
        # Corresponds to the JSON property `ip`
        # @return [String]
        attr_accessor :ip
      
        # Time at which request was known to have begun processing.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Time at which request was known to end processing.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Latency of the request.
        # Corresponds to the JSON property `latency`
        # @return [String]
        attr_accessor :latency
      
        # Number of CPU megacycles used to process request.
        # Corresponds to the JSON property `megaCycles`
        # @return [String]
        attr_accessor :mega_cycles
      
        # Request method, such as `GET`, `HEAD`, `PUT`, `POST`, or `DELETE`.
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        # Contains the path and query portion of the URL that was requested. For example,
        # if the URL was "http://example.com/app?name=val", the resource would be "/app?
        # name=val". Any trailing fragment (separated by a '#' character) will not be
        # included.
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        # HTTP version of request.
        # Corresponds to the JSON property `httpVersion`
        # @return [String]
        attr_accessor :http_version
      
        # Response status of request.
        # Corresponds to the JSON property `status`
        # @return [Fixnum]
        attr_accessor :status
      
        # Size in bytes sent back to client by request.
        # Corresponds to the JSON property `responseSize`
        # @return [String]
        attr_accessor :response_size
      
        # Referrer URL of request.
        # Corresponds to the JSON property `referrer`
        # @return [String]
        attr_accessor :referrer
      
        # User agent used for making request.
        # Corresponds to the JSON property `userAgent`
        # @return [String]
        attr_accessor :user_agent
      
        # A string that identifies a logged-in user who made this request, or empty if
        # the user is not logged in. Most likely, this is the part of the user's email
        # before the '@' sign. The field value is the same for different requests from
        # the same user, but different users may have a similar name. This information
        # is also available to the application via Users API. This field will be
        # populated starting with App Engine 1.9.21.
        # Corresponds to the JSON property `nickname`
        # @return [String]
        attr_accessor :nickname
      
        # File or class within URL mapping used for request. Useful for tracking down
        # the source code which was responsible for managing request. Especially for
        # multiply mapped handlers.
        # Corresponds to the JSON property `urlMapEntry`
        # @return [String]
        attr_accessor :url_map_entry
      
        # The Internet host and port number of the resource being requested.
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        # An indication of the relative cost of serving this request.
        # Corresponds to the JSON property `cost`
        # @return [Float]
        attr_accessor :cost
      
        # Queue name of the request (for an offline request).
        # Corresponds to the JSON property `taskQueueName`
        # @return [String]
        attr_accessor :task_queue_name
      
        # Task name of the request (for an offline request).
        # Corresponds to the JSON property `taskName`
        # @return [String]
        attr_accessor :task_name
      
        # Was this request a loading request for this instance?
        # Corresponds to the JSON property `wasLoadingRequest`
        # @return [Boolean]
        attr_accessor :was_loading_request
        alias_method :was_loading_request?, :was_loading_request
      
        # Time this request spent in the pending request queue, if it was pending at all.
        # Corresponds to the JSON property `pendingTime`
        # @return [String]
        attr_accessor :pending_time
      
        # If the instance that processed this request was individually addressable (i.e.
        # belongs to a manually scaled module), this is the index of the instance.
        # Corresponds to the JSON property `instanceIndex`
        # @return [Fixnum]
        attr_accessor :instance_index
      
        # If true, represents a finished request. Otherwise, the request is active.
        # Corresponds to the JSON property `finished`
        # @return [Boolean]
        attr_accessor :finished
        alias_method :finished?, :finished
      
        # An opaque identifier for the instance that handled the request.
        # Corresponds to the JSON property `instanceId`
        # @return [String]
        attr_accessor :instance_id
      
        # List of log lines emitted by the application while serving this request, if
        # requested.
        # Corresponds to the JSON property `line`
        # @return [Array<Google::Apis::LoggingV1beta3::LogLine>]
        attr_accessor :line
      
        # App Engine release version string.
        # Corresponds to the JSON property `appEngineRelease`
        # @return [String]
        attr_accessor :app_engine_release
      
        # Cloud Trace identifier of the trace for this request.
        # Corresponds to the JSON property `traceId`
        # @return [String]
        attr_accessor :trace_id
      
        # Source code for the application that handled this request. There can be more
        # than one source reference per deployed application if source code is
        # distributed among multiple repositories.
        # Corresponds to the JSON property `sourceReference`
        # @return [Array<Google::Apis::LoggingV1beta3::SourceReference>]
        attr_accessor :source_reference
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_id = args[:app_id] unless args[:app_id].nil?
          @module_id = args[:module_id] unless args[:module_id].nil?
          @version_id = args[:version_id] unless args[:version_id].nil?
          @request_id = args[:request_id] unless args[:request_id].nil?
          @ip = args[:ip] unless args[:ip].nil?
          @start_time = args[:start_time] unless args[:start_time].nil?
          @end_time = args[:end_time] unless args[:end_time].nil?
          @latency = args[:latency] unless args[:latency].nil?
          @mega_cycles = args[:mega_cycles] unless args[:mega_cycles].nil?
          @method_prop = args[:method_prop] unless args[:method_prop].nil?
          @resource = args[:resource] unless args[:resource].nil?
          @http_version = args[:http_version] unless args[:http_version].nil?
          @status = args[:status] unless args[:status].nil?
          @response_size = args[:response_size] unless args[:response_size].nil?
          @referrer = args[:referrer] unless args[:referrer].nil?
          @user_agent = args[:user_agent] unless args[:user_agent].nil?
          @nickname = args[:nickname] unless args[:nickname].nil?
          @url_map_entry = args[:url_map_entry] unless args[:url_map_entry].nil?
          @host = args[:host] unless args[:host].nil?
          @cost = args[:cost] unless args[:cost].nil?
          @task_queue_name = args[:task_queue_name] unless args[:task_queue_name].nil?
          @task_name = args[:task_name] unless args[:task_name].nil?
          @was_loading_request = args[:was_loading_request] unless args[:was_loading_request].nil?
          @pending_time = args[:pending_time] unless args[:pending_time].nil?
          @instance_index = args[:instance_index] unless args[:instance_index].nil?
          @finished = args[:finished] unless args[:finished].nil?
          @instance_id = args[:instance_id] unless args[:instance_id].nil?
          @line = args[:line] unless args[:line].nil?
          @app_engine_release = args[:app_engine_release] unless args[:app_engine_release].nil?
          @trace_id = args[:trace_id] unless args[:trace_id].nil?
          @source_reference = args[:source_reference] unless args[:source_reference].nil?
        end
      end
      
      # Application log line emitted while processing a request.
      class LogLine
        include Google::Apis::Core::Hashable
      
        # Time when log entry was made. May be inaccurate.
        # Corresponds to the JSON property `time`
        # @return [String]
        attr_accessor :time
      
        # Severity of log.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # App provided log message.
        # Corresponds to the JSON property `logMessage`
        # @return [String]
        attr_accessor :log_message
      
        # Specifies a location in a source file.
        # Corresponds to the JSON property `sourceLocation`
        # @return [Google::Apis::LoggingV1beta3::SourceLocation]
        attr_accessor :source_location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @time = args[:time] unless args[:time].nil?
          @severity = args[:severity] unless args[:severity].nil?
          @log_message = args[:log_message] unless args[:log_message].nil?
          @source_location = args[:source_location] unless args[:source_location].nil?
        end
      end
      
      # Specifies a location in a source file.
      class SourceLocation
        include Google::Apis::Core::Hashable
      
        # Source file name. May or may not be a fully qualified name, depending on the
        # runtime environment.
        # Corresponds to the JSON property `file`
        # @return [String]
        attr_accessor :file
      
        # Line within the source file.
        # Corresponds to the JSON property `line`
        # @return [String]
        attr_accessor :line
      
        # Human-readable name of the function or method being invoked, with optional
        # context such as the class or package name, for use in contexts such as the
        # logs viewer where file:line number is less meaningful. This may vary by
        # language, for example: in Java: qual.if.ied.Class.method in Go: dir/package.
        # func in Python: function ...
        # Corresponds to the JSON property `functionName`
        # @return [String]
        attr_accessor :function_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file = args[:file] unless args[:file].nil?
          @line = args[:line] unless args[:line].nil?
          @function_name = args[:function_name] unless args[:function_name].nil?
        end
      end
      
      # A reference to a particular snapshot of the source tree used to build and
      # deploy an application.
      class SourceReference
        include Google::Apis::Core::Hashable
      
        # Optional. A URI string identifying the repository. Example: "https://github.
        # com/GoogleCloudPlatform/kubernetes.git"
        # Corresponds to the JSON property `repository`
        # @return [String]
        attr_accessor :repository
      
        # The canonical (and persistent) identifier of the deployed revision. Example (
        # git): "0035781c50ec7aa23385dc841529ce8a4b70db1b"
        # Corresponds to the JSON property `revisionId`
        # @return [String]
        attr_accessor :revision_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @repository = args[:repository] unless args[:repository].nil?
          @revision_id = args[:revision_id] unless args[:revision_id].nil?
        end
      end
    end
  end
end
