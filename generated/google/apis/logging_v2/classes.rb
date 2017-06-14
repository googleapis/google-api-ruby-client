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
    module LoggingV2
      
      # A common proto for logging HTTP requests. Only contains semantics defined by
      # the HTTP specification. Product-specific logging information MUST be defined
      # in a separate message.
      class HttpRequest
        include Google::Apis::Core::Hashable
      
        # The request processing latency on the server, from the time the request was
        # received until the response was sent.
        # Corresponds to the JSON property `latency`
        # @return [String]
        attr_accessor :latency
      
        # The user agent sent by the client. Example: "Mozilla/4.0 (compatible; MSIE 6.0;
        # Windows 98; Q312461; .NET CLR 1.0.3705)".
        # Corresponds to the JSON property `userAgent`
        # @return [String]
        attr_accessor :user_agent
      
        # The number of HTTP response bytes inserted into cache. Set only when a cache
        # fill was attempted.
        # Corresponds to the JSON property `cacheFillBytes`
        # @return [Fixnum]
        attr_accessor :cache_fill_bytes
      
        # The request method. Examples: "GET", "HEAD", "PUT", "POST".
        # Corresponds to the JSON property `requestMethod`
        # @return [String]
        attr_accessor :request_method
      
        # The size of the HTTP request message in bytes, including the request headers
        # and the request body.
        # Corresponds to the JSON property `requestSize`
        # @return [Fixnum]
        attr_accessor :request_size
      
        # The size of the HTTP response message sent back to the client, in bytes,
        # including the response headers and the response body.
        # Corresponds to the JSON property `responseSize`
        # @return [Fixnum]
        attr_accessor :response_size
      
        # The scheme (http, https), the host name, the path and the query portion of the
        # URL that was requested. Example: "http://example.com/some/info?color=red".
        # Corresponds to the JSON property `requestUrl`
        # @return [String]
        attr_accessor :request_url
      
        # The IP address (IPv4 or IPv6) of the client that issued the HTTP request.
        # Examples: "192.168.1.1", "FE80::0202:B3FF:FE1E:8329".
        # Corresponds to the JSON property `remoteIp`
        # @return [String]
        attr_accessor :remote_ip
      
        # The IP address (IPv4 or IPv6) of the origin server that the request was sent
        # to.
        # Corresponds to the JSON property `serverIp`
        # @return [String]
        attr_accessor :server_ip
      
        # Whether or not a cache lookup was attempted.
        # Corresponds to the JSON property `cacheLookup`
        # @return [Boolean]
        attr_accessor :cache_lookup
        alias_method :cache_lookup?, :cache_lookup
      
        # Whether or not an entity was served from cache (with or without validation).
        # Corresponds to the JSON property `cacheHit`
        # @return [Boolean]
        attr_accessor :cache_hit
        alias_method :cache_hit?, :cache_hit
      
        # Whether or not the response was validated with the origin server before being
        # served from cache. This field is only meaningful if cache_hit is True.
        # Corresponds to the JSON property `cacheValidatedWithOriginServer`
        # @return [Boolean]
        attr_accessor :cache_validated_with_origin_server
        alias_method :cache_validated_with_origin_server?, :cache_validated_with_origin_server
      
        # The response code indicating the status of response. Examples: 200, 404.
        # Corresponds to the JSON property `status`
        # @return [Fixnum]
        attr_accessor :status
      
        # The referer URL of the request, as defined in HTTP/1.1 Header Field
        # Definitions (http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html).
        # Corresponds to the JSON property `referer`
        # @return [String]
        attr_accessor :referer
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @latency = args[:latency] if args.key?(:latency)
          @user_agent = args[:user_agent] if args.key?(:user_agent)
          @cache_fill_bytes = args[:cache_fill_bytes] if args.key?(:cache_fill_bytes)
          @request_method = args[:request_method] if args.key?(:request_method)
          @request_size = args[:request_size] if args.key?(:request_size)
          @response_size = args[:response_size] if args.key?(:response_size)
          @request_url = args[:request_url] if args.key?(:request_url)
          @remote_ip = args[:remote_ip] if args.key?(:remote_ip)
          @server_ip = args[:server_ip] if args.key?(:server_ip)
          @cache_lookup = args[:cache_lookup] if args.key?(:cache_lookup)
          @cache_hit = args[:cache_hit] if args.key?(:cache_hit)
          @cache_validated_with_origin_server = args[:cache_validated_with_origin_server] if args.key?(:cache_validated_with_origin_server)
          @status = args[:status] if args.key?(:status)
          @referer = args[:referer] if args.key?(:referer)
        end
      end
      
      # Result returned from ListSinks.
      class ListSinksResponse
        include Google::Apis::Core::Hashable
      
        # If there might be more results than appear in this response, then
        # nextPageToken is included. To get the next set of results, call the same
        # method again using the value of nextPageToken as pageToken.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of sinks.
        # Corresponds to the JSON property `sinks`
        # @return [Array<Google::Apis::LoggingV2::LogSink>]
        attr_accessor :sinks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @sinks = args[:sinks] if args.key?(:sinks)
        end
      end
      
      # A description of a label.
      class LabelDescriptor
        include Google::Apis::Core::Hashable
      
        # The label key.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # A human-readable description for the label.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The type of data that can be assigned to the label.
        # Corresponds to the JSON property `valueType`
        # @return [String]
        attr_accessor :value_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @description = args[:description] if args.key?(:description)
          @value_type = args[:value_type] if args.key?(:value_type)
        end
      end
      
      # An object that describes the schema of a MonitoredResource object using a type
      # name and a set of labels. For example, the monitored resource descriptor for
      # Google Compute Engine VM instances has a type of "gce_instance" and specifies
      # the use of the labels "instance_id" and "zone" to identify particular VM
      # instances.Different APIs can support different monitored resource types. APIs
      # generally provide a list method that returns the monitored resource
      # descriptors used by the API.
      class MonitoredResourceDescriptor
        include Google::Apis::Core::Hashable
      
        # Optional. The resource name of the monitored resource descriptor: "projects/`
        # project_id`/monitoredResourceDescriptors/`type`" where `type` is the value of
        # the type field in this object and `project_id` is a project ID that provides
        # API-specific context for accessing the type. APIs that do not use project
        # information can use the resource name format "monitoredResourceDescriptors/`
        # type`".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. A concise name for the monitored resource type that might be
        # displayed in user interfaces. It should be a Title Cased Noun Phrase, without
        # any article or other determiners. For example, "Google Cloud SQL Database".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. A detailed description of the monitored resource type that might be
        # used in documentation.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The monitored resource type. For example, the type "
        # cloudsql_database" represents databases in Google Cloud SQL. The maximum
        # length of this value is 256 characters.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Required. A set of labels used to describe instances of this monitored
        # resource type. For example, an individual Google Cloud SQL database is
        # identified by values for the labels "database_id" and "zone".
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::LoggingV2::LabelDescriptor>]
        attr_accessor :labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @display_name = args[:display_name] if args.key?(:display_name)
          @description = args[:description] if args.key?(:description)
          @type = args[:type] if args.key?(:type)
          @labels = args[:labels] if args.key?(:labels)
        end
      end
      
      # Additional information about the source code location that produced the log
      # entry.
      class LogEntrySourceLocation
        include Google::Apis::Core::Hashable
      
        # Optional. Source file name. Depending on the runtime environment, this might
        # be a simple name or a fully-qualified name.
        # Corresponds to the JSON property `file`
        # @return [String]
        attr_accessor :file
      
        # Optional. Human-readable name of the function or method being invoked, with
        # optional context such as the class or package name. This information may be
        # used in contexts such as the logs viewer, where a file and line number are
        # less meaningful. The format can vary by language. For example: qual.if.ied.
        # Class.method (Java), dir/package.func (Go), function (Python).
        # Corresponds to the JSON property `function`
        # @return [String]
        attr_accessor :function
      
        # Optional. Line within the source file. 1-based; 0 indicates no line number
        # available.
        # Corresponds to the JSON property `line`
        # @return [Fixnum]
        attr_accessor :line
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file = args[:file] if args.key?(:file)
          @function = args[:function] if args.key?(:function)
          @line = args[:line] if args.key?(:line)
        end
      end
      
      # Result returned from ListLogEntries.
      class ListLogEntriesResponse
        include Google::Apis::Core::Hashable
      
        # A list of log entries.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::LoggingV2::LogEntry>]
        attr_accessor :entries
      
        # If there might be more results than those appearing in this response, then
        # nextPageToken is included. To get the next set of results, call this method
        # again using the value of nextPageToken as pageToken.If a value for
        # next_page_token appears and the entries field is empty, it means that the
        # search found no log entries so far but it did not have time to search all the
        # possible log entries. Retry the method with this value for page_token to
        # continue the search. Alternatively, consider speeding up the search by
        # changing your filter to specify a single log name or resource type, or to
        # narrow the time range of the search.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Application log line emitted while processing a request.
      class LogLine
        include Google::Apis::Core::Hashable
      
        # Approximate time when this log entry was made.
        # Corresponds to the JSON property `time`
        # @return [String]
        attr_accessor :time
      
        # Severity of this log entry.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # App-provided log message.
        # Corresponds to the JSON property `logMessage`
        # @return [String]
        attr_accessor :log_message
      
        # Specifies a location in a source code file.
        # Corresponds to the JSON property `sourceLocation`
        # @return [Google::Apis::LoggingV2::SourceLocation]
        attr_accessor :source_location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @time = args[:time] if args.key?(:time)
          @severity = args[:severity] if args.key?(:severity)
          @log_message = args[:log_message] if args.key?(:log_message)
          @source_location = args[:source_location] if args.key?(:source_location)
        end
      end
      
      # Result returned from ListLogMetrics.
      class ListLogMetricsResponse
        include Google::Apis::Core::Hashable
      
        # A list of logs-based metrics.
        # Corresponds to the JSON property `metrics`
        # @return [Array<Google::Apis::LoggingV2::LogMetric>]
        attr_accessor :metrics
      
        # If there might be more results than appear in this response, then
        # nextPageToken is included. To get the next set of results, call this method
        # again using the value of nextPageToken as pageToken.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metrics = args[:metrics] if args.key?(:metrics)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance:
      # service Foo `
      # rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
      # `
      # The JSON representation for Empty is empty JSON object ``.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # An individual entry in a log.
      class LogEntry
        include Google::Apis::Core::Hashable
      
        # Optional. A unique identifier for the log entry. If you provide a value, then
        # Stackdriver Logging considers other log entries in the same project, with the
        # same timestamp, and with the same insert_id to be duplicates which can be
        # removed. If omitted in new log entries, then Stackdriver Logging will insert
        # its own unique identifier. The insert_id is used to order log entries that
        # have the same timestamp value.
        # Corresponds to the JSON property `insertId`
        # @return [String]
        attr_accessor :insert_id
      
        # Additional information about a potentially long-running operation with which a
        # log entry is associated.
        # Corresponds to the JSON property `operation`
        # @return [Google::Apis::LoggingV2::LogEntryOperation]
        attr_accessor :operation
      
        # The log entry payload, represented as a Unicode string (UTF-8).
        # Corresponds to the JSON property `textPayload`
        # @return [String]
        attr_accessor :text_payload
      
        # The log entry payload, represented as a protocol buffer. Some Google Cloud
        # Platform services use this field for their log entry payloads.
        # Corresponds to the JSON property `protoPayload`
        # @return [Hash<String,Object>]
        attr_accessor :proto_payload
      
        # Optional. Resource name of the trace associated with the log entry, if any. If
        # it contains a relative resource name, the name is assumed to be relative to //
        # tracing.googleapis.com. Example: projects/my-projectid/traces/
        # 06796866738c859f2f19b7cfb3214824
        # Corresponds to the JSON property `trace`
        # @return [String]
        attr_accessor :trace
      
        # Optional. A set of user-defined (key, value) data that provides additional
        # information about the log entry.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Optional. The severity of the log entry. The default value is LogSeverity.
        # DEFAULT.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # Additional information about the source code location that produced the log
        # entry.
        # Corresponds to the JSON property `sourceLocation`
        # @return [Google::Apis::LoggingV2::LogEntrySourceLocation]
        attr_accessor :source_location
      
        # Output only. The time the log entry was received by Stackdriver Logging.
        # Corresponds to the JSON property `receiveTimestamp`
        # @return [String]
        attr_accessor :receive_timestamp
      
        # Optional. The time the event described by the log entry occurred. If omitted
        # in a new log entry, Stackdriver Logging will insert the time the log entry is
        # received. Stackdriver Logging might reject log entries whose time stamps are
        # more than a couple of hours in the future. Log entries with time stamps in the
        # past are accepted.
        # Corresponds to the JSON property `timestamp`
        # @return [String]
        attr_accessor :timestamp
      
        # Required. The resource name of the log to which this log entry belongs:
        # "projects/[PROJECT_ID]/logs/[LOG_ID]"
        # "organizations/[ORGANIZATION_ID]/logs/[LOG_ID]"
        # "billingAccounts/[BILLING_ACCOUNT_ID]/logs/[LOG_ID]"
        # "folders/[FOLDER_ID]/logs/[LOG_ID]"
        # [LOG_ID] must be URL-encoded within log_name. Example: "organizations/
        # 1234567890/logs/cloudresourcemanager.googleapis.com%2Factivity". [LOG_ID] must
        # be less than 512 characters long and can only include the following characters:
        # upper and lower case alphanumeric characters, forward-slash, underscore,
        # hyphen, and period.For backward compatibility, if log_name begins with a
        # forward-slash, such as /projects/..., then the log entry is ingested as usual
        # but the forward-slash is removed. Listing the log entry will not show the
        # leading slash and filtering for a log name with a leading slash will never
        # return any results.
        # Corresponds to the JSON property `logName`
        # @return [String]
        attr_accessor :log_name
      
        # A common proto for logging HTTP requests. Only contains semantics defined by
        # the HTTP specification. Product-specific logging information MUST be defined
        # in a separate message.
        # Corresponds to the JSON property `httpRequest`
        # @return [Google::Apis::LoggingV2::HttpRequest]
        attr_accessor :http_request
      
        # An object representing a resource that can be used for monitoring, logging,
        # billing, or other purposes. Examples include virtual machine instances,
        # databases, and storage devices such as disks. The type field identifies a
        # MonitoredResourceDescriptor object that describes the resource's schema.
        # Information in the labels field identifies the actual resource and its
        # attributes according to the schema. For example, a particular Compute Engine
        # VM instance could be represented by the following object, because the
        # MonitoredResourceDescriptor for "gce_instance" has labels "instance_id" and "
        # zone":
        # ` "type": "gce_instance",
        # "labels": ` "instance_id": "12345678901234",
        # "zone": "us-central1-a" ``
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::LoggingV2::MonitoredResource]
        attr_accessor :resource
      
        # The log entry payload, represented as a structure that is expressed as a JSON
        # object.
        # Corresponds to the JSON property `jsonPayload`
        # @return [Hash<String,Object>]
        attr_accessor :json_payload
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @insert_id = args[:insert_id] if args.key?(:insert_id)
          @operation = args[:operation] if args.key?(:operation)
          @text_payload = args[:text_payload] if args.key?(:text_payload)
          @proto_payload = args[:proto_payload] if args.key?(:proto_payload)
          @trace = args[:trace] if args.key?(:trace)
          @labels = args[:labels] if args.key?(:labels)
          @severity = args[:severity] if args.key?(:severity)
          @source_location = args[:source_location] if args.key?(:source_location)
          @receive_timestamp = args[:receive_timestamp] if args.key?(:receive_timestamp)
          @timestamp = args[:timestamp] if args.key?(:timestamp)
          @log_name = args[:log_name] if args.key?(:log_name)
          @http_request = args[:http_request] if args.key?(:http_request)
          @resource = args[:resource] if args.key?(:resource)
          @json_payload = args[:json_payload] if args.key?(:json_payload)
        end
      end
      
      # Specifies a location in a source code file.
      class SourceLocation
        include Google::Apis::Core::Hashable
      
        # Source file name. Depending on the runtime environment, this might be a simple
        # name or a fully-qualified name.
        # Corresponds to the JSON property `file`
        # @return [String]
        attr_accessor :file
      
        # Human-readable name of the function or method being invoked, with optional
        # context such as the class or package name. This information is used in
        # contexts such as the logs viewer, where a file and line number are less
        # meaningful. The format can vary by language. For example: qual.if.ied.Class.
        # method (Java), dir/package.func (Go), function (Python).
        # Corresponds to the JSON property `functionName`
        # @return [String]
        attr_accessor :function_name
      
        # Line within the source file.
        # Corresponds to the JSON property `line`
        # @return [Fixnum]
        attr_accessor :line
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file = args[:file] if args.key?(:file)
          @function_name = args[:function_name] if args.key?(:function_name)
          @line = args[:line] if args.key?(:line)
        end
      end
      
      # The parameters to ListLogEntries.
      class ListLogEntriesRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The maximum number of results to return from this request. Non-
        # positive values are ignored. The presence of next_page_token in the response
        # indicates that more results might be available.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # Optional. How the results should be sorted. Presently, the only permitted
        # values are "timestamp asc" (default) and "timestamp desc". The first option
        # returns entries in order of increasing values of LogEntry.timestamp (oldest
        # first), and the second option returns entries in order of decreasing
        # timestamps (newest first). Entries with equal timestamps are returned in order
        # of their insert_id values.
        # Corresponds to the JSON property `orderBy`
        # @return [String]
        attr_accessor :order_by
      
        # Required. Names of one or more parent resources from which to retrieve log
        # entries:
        # "projects/[PROJECT_ID]"
        # "organizations/[ORGANIZATION_ID]"
        # "billingAccounts/[BILLING_ACCOUNT_ID]"
        # "folders/[FOLDER_ID]"
        # Projects listed in the project_ids field are added to this list.
        # Corresponds to the JSON property `resourceNames`
        # @return [Array<String>]
        attr_accessor :resource_names
      
        # Deprecated. Use resource_names instead. One or more project identifiers or
        # project numbers from which to retrieve log entries. Example: "my-project-1A".
        # If present, these project identifiers are converted to resource name format
        # and added to the list of resources in resource_names.
        # Corresponds to the JSON property `projectIds`
        # @return [Array<String>]
        attr_accessor :project_ids
      
        # Optional. A filter that chooses which log entries to return. See Advanced Logs
        # Filters. Only log entries that match the filter are returned. An empty filter
        # matches all log entries in the resources listed in resource_names. Referencing
        # a parent resource that is not listed in resource_names will cause the filter
        # to return no results. The maximum length of the filter is 20000 characters.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Optional. If present, then retrieve the next batch of results from the
        # preceding call to this method. page_token must be the value of next_page_token
        # from the previous response. The values of other method parameters should be
        # identical to those in the previous call.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @page_size = args[:page_size] if args.key?(:page_size)
          @order_by = args[:order_by] if args.key?(:order_by)
          @resource_names = args[:resource_names] if args.key?(:resource_names)
          @project_ids = args[:project_ids] if args.key?(:project_ids)
          @filter = args[:filter] if args.key?(:filter)
          @page_token = args[:page_token] if args.key?(:page_token)
        end
      end
      
      # Complete log information about a single HTTP request to an App Engine
      # application.
      class RequestLog
        include Google::Apis::Core::Hashable
      
        # Number of CPU megacycles used to process request.
        # Corresponds to the JSON property `megaCycles`
        # @return [Fixnum]
        attr_accessor :mega_cycles
      
        # Whether this is the first RequestLog entry for this request. If an active
        # request has several RequestLog entries written to Stackdriver Logging, then
        # this field will be set for one of them.
        # Corresponds to the JSON property `first`
        # @return [Boolean]
        attr_accessor :first
        alias_method :first?, :first
      
        # Version of the application that handled this request.
        # Corresponds to the JSON property `versionId`
        # @return [String]
        attr_accessor :version_id
      
        # Module of the application that handled this request.
        # Corresponds to the JSON property `moduleId`
        # @return [String]
        attr_accessor :module_id
      
        # Time when the request finished.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # User agent that made the request.
        # Corresponds to the JSON property `userAgent`
        # @return [String]
        attr_accessor :user_agent
      
        # Whether this was a loading request for the instance.
        # Corresponds to the JSON property `wasLoadingRequest`
        # @return [Boolean]
        attr_accessor :was_loading_request
        alias_method :was_loading_request?, :was_loading_request
      
        # Source code for the application that handled this request. There can be more
        # than one source reference per deployed application if source code is
        # distributed among multiple repositories.
        # Corresponds to the JSON property `sourceReference`
        # @return [Array<Google::Apis::LoggingV2::SourceReference>]
        attr_accessor :source_reference
      
        # Size in bytes sent back to client by request.
        # Corresponds to the JSON property `responseSize`
        # @return [Fixnum]
        attr_accessor :response_size
      
        # Stackdriver Trace identifier for this request.
        # Corresponds to the JSON property `traceId`
        # @return [String]
        attr_accessor :trace_id
      
        # A list of log lines emitted by the application while serving this request.
        # Corresponds to the JSON property `line`
        # @return [Array<Google::Apis::LoggingV2::LogLine>]
        attr_accessor :line
      
        # Referrer URL of request.
        # Corresponds to the JSON property `referrer`
        # @return [String]
        attr_accessor :referrer
      
        # Queue name of the request, in the case of an offline request.
        # Corresponds to the JSON property `taskQueueName`
        # @return [String]
        attr_accessor :task_queue_name
      
        # Globally unique identifier for a request, which is based on the request start
        # time. Request IDs for requests which started later will compare greater as
        # strings than those for requests which started earlier.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # The logged-in user who made the request.Most likely, this is the part of the
        # user's email before the @ sign. The field value is the same for different
        # requests from the same user, but different users can have similar names. This
        # information is also available to the application via the App Engine Users API.
        # This field will be populated starting with App Engine 1.9.21.
        # Corresponds to the JSON property `nickname`
        # @return [String]
        attr_accessor :nickname
      
        # HTTP response status code. Example: 200, 404.
        # Corresponds to the JSON property `status`
        # @return [Fixnum]
        attr_accessor :status
      
        # Contains the path and query portion of the URL that was requested. For example,
        # if the URL was "http://example.com/app?name=val", the resource would be "/app?
        # name=val". The fragment identifier, which is identified by the # character, is
        # not included.
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        # Time this request spent in the pending request queue.
        # Corresponds to the JSON property `pendingTime`
        # @return [String]
        attr_accessor :pending_time
      
        # Task name of the request, in the case of an offline request.
        # Corresponds to the JSON property `taskName`
        # @return [String]
        attr_accessor :task_name
      
        # File or class that handled the request.
        # Corresponds to the JSON property `urlMapEntry`
        # @return [String]
        attr_accessor :url_map_entry
      
        # If the instance processing this request belongs to a manually scaled module,
        # then this is the 0-based index of the instance. Otherwise, this value is -1.
        # Corresponds to the JSON property `instanceIndex`
        # @return [Fixnum]
        attr_accessor :instance_index
      
        # Internet host and port number of the resource being requested.
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        # Whether this request is finished or active.
        # Corresponds to the JSON property `finished`
        # @return [Boolean]
        attr_accessor :finished
        alias_method :finished?, :finished
      
        # HTTP version of request. Example: "HTTP/1.1".
        # Corresponds to the JSON property `httpVersion`
        # @return [String]
        attr_accessor :http_version
      
        # Time when the request started.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Latency of the request.
        # Corresponds to the JSON property `latency`
        # @return [String]
        attr_accessor :latency
      
        # Origin IP address.
        # Corresponds to the JSON property `ip`
        # @return [String]
        attr_accessor :ip
      
        # Application that handled this request.
        # Corresponds to the JSON property `appId`
        # @return [String]
        attr_accessor :app_id
      
        # App Engine release version.
        # Corresponds to the JSON property `appEngineRelease`
        # @return [String]
        attr_accessor :app_engine_release
      
        # Request method. Example: "GET", "HEAD", "PUT", "POST", "DELETE".
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        # An indication of the relative cost of serving this request.
        # Corresponds to the JSON property `cost`
        # @return [Float]
        attr_accessor :cost
      
        # An identifier for the instance that handled the request.
        # Corresponds to the JSON property `instanceId`
        # @return [String]
        attr_accessor :instance_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mega_cycles = args[:mega_cycles] if args.key?(:mega_cycles)
          @first = args[:first] if args.key?(:first)
          @version_id = args[:version_id] if args.key?(:version_id)
          @module_id = args[:module_id] if args.key?(:module_id)
          @end_time = args[:end_time] if args.key?(:end_time)
          @user_agent = args[:user_agent] if args.key?(:user_agent)
          @was_loading_request = args[:was_loading_request] if args.key?(:was_loading_request)
          @source_reference = args[:source_reference] if args.key?(:source_reference)
          @response_size = args[:response_size] if args.key?(:response_size)
          @trace_id = args[:trace_id] if args.key?(:trace_id)
          @line = args[:line] if args.key?(:line)
          @referrer = args[:referrer] if args.key?(:referrer)
          @task_queue_name = args[:task_queue_name] if args.key?(:task_queue_name)
          @request_id = args[:request_id] if args.key?(:request_id)
          @nickname = args[:nickname] if args.key?(:nickname)
          @status = args[:status] if args.key?(:status)
          @resource = args[:resource] if args.key?(:resource)
          @pending_time = args[:pending_time] if args.key?(:pending_time)
          @task_name = args[:task_name] if args.key?(:task_name)
          @url_map_entry = args[:url_map_entry] if args.key?(:url_map_entry)
          @instance_index = args[:instance_index] if args.key?(:instance_index)
          @host = args[:host] if args.key?(:host)
          @finished = args[:finished] if args.key?(:finished)
          @http_version = args[:http_version] if args.key?(:http_version)
          @start_time = args[:start_time] if args.key?(:start_time)
          @latency = args[:latency] if args.key?(:latency)
          @ip = args[:ip] if args.key?(:ip)
          @app_id = args[:app_id] if args.key?(:app_id)
          @app_engine_release = args[:app_engine_release] if args.key?(:app_engine_release)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
          @cost = args[:cost] if args.key?(:cost)
          @instance_id = args[:instance_id] if args.key?(:instance_id)
        end
      end
      
      # Result returned from ListMonitoredResourceDescriptors.
      class ListMonitoredResourceDescriptorsResponse
        include Google::Apis::Core::Hashable
      
        # If there might be more results than those appearing in this response, then
        # nextPageToken is included. To get the next set of results, call this method
        # again using the value of nextPageToken as pageToken.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of resource descriptors.
        # Corresponds to the JSON property `resourceDescriptors`
        # @return [Array<Google::Apis::LoggingV2::MonitoredResourceDescriptor>]
        attr_accessor :resource_descriptors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @resource_descriptors = args[:resource_descriptors] if args.key?(:resource_descriptors)
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
      
        # The canonical and persistent identifier of the deployed revision. Example (git)
        # : "0035781c50ec7aa23385dc841529ce8a4b70db1b"
        # Corresponds to the JSON property `revisionId`
        # @return [String]
        attr_accessor :revision_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @repository = args[:repository] if args.key?(:repository)
          @revision_id = args[:revision_id] if args.key?(:revision_id)
        end
      end
      
      # Describes a logs-based metric. The value of the metric is the number of log
      # entries that match a logs filter in a given time interval.
      class LogMetric
        include Google::Apis::Core::Hashable
      
        # Required. An advanced logs filter which is used to match log entries. Example:
        # "resource.type=gae_app AND severity>=ERROR"
        # The maximum length of the filter is 20000 characters.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Required. The client-assigned metric identifier. Examples: "error_count", "
        # nginx/requests".Metric identifiers are limited to 100 characters and can
        # include only the following characters: A-Z, a-z, 0-9, and the special
        # characters _-.,+!*',()%/. The forward-slash character (/) denotes a hierarchy
        # of name pieces, and it cannot be the first character of the name.The metric
        # identifier in this field must not be URL-encoded (https://en.wikipedia.org/
        # wiki/Percent-encoding). However, when the metric identifier appears as the [
        # METRIC_ID] part of a metric_name API parameter, then the metric identifier
        # must be URL-encoded. Example: "projects/my-project/metrics/nginx%2Frequests".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. A description of this metric, which is used in documentation.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. The API version that created or updated this metric. The version
        # also dictates the syntax of the filter expression. When a value for this field
        # is missing, the default value of V2 should be assumed.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter = args[:filter] if args.key?(:filter)
          @name = args[:name] if args.key?(:name)
          @description = args[:description] if args.key?(:description)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Additional information about a potentially long-running operation with which a
      # log entry is associated.
      class LogEntryOperation
        include Google::Apis::Core::Hashable
      
        # Optional. Set this to True if this is the last log entry in the operation.
        # Corresponds to the JSON property `last`
        # @return [Boolean]
        attr_accessor :last
        alias_method :last?, :last
      
        # Optional. An arbitrary operation identifier. Log entries with the same
        # identifier are assumed to be part of the same operation.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Optional. An arbitrary producer identifier. The combination of id and producer
        # must be globally unique. Examples for producer: "MyDivision.MyBigCompany.com",
        # "github.com/MyProject/MyApplication".
        # Corresponds to the JSON property `producer`
        # @return [String]
        attr_accessor :producer
      
        # Optional. Set this to True if this is the first log entry in the operation.
        # Corresponds to the JSON property `first`
        # @return [Boolean]
        attr_accessor :first
        alias_method :first?, :first
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @last = args[:last] if args.key?(:last)
          @id = args[:id] if args.key?(:id)
          @producer = args[:producer] if args.key?(:producer)
          @first = args[:first] if args.key?(:first)
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
      
      # An object representing a resource that can be used for monitoring, logging,
      # billing, or other purposes. Examples include virtual machine instances,
      # databases, and storage devices such as disks. The type field identifies a
      # MonitoredResourceDescriptor object that describes the resource's schema.
      # Information in the labels field identifies the actual resource and its
      # attributes according to the schema. For example, a particular Compute Engine
      # VM instance could be represented by the following object, because the
      # MonitoredResourceDescriptor for "gce_instance" has labels "instance_id" and "
      # zone":
      # ` "type": "gce_instance",
      # "labels": ` "instance_id": "12345678901234",
      # "zone": "us-central1-a" ``
      class MonitoredResource
        include Google::Apis::Core::Hashable
      
        # Required. The monitored resource type. This field must match the type field of
        # a MonitoredResourceDescriptor object. For example, the type of a Compute
        # Engine VM instance is gce_instance.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Required. Values for all of the labels listed in the associated monitored
        # resource descriptor. For example, Compute Engine VM instances use the labels "
        # project_id", "instance_id", and "zone".
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
          @labels = args[:labels] if args.key?(:labels)
        end
      end
      
      # Describes a sink used to export log entries to one of the following
      # destinations in any project: a Cloud Storage bucket, a BigQuery dataset, or a
      # Cloud Pub/Sub topic. A logs filter controls which log entries are exported.
      # The sink must be created within a project, organization, billing account, or
      # folder.
      class LogSink
        include Google::Apis::Core::Hashable
      
        # Optional. This field applies only to sinks owned by organizations and folders.
        # If the field is false, the default, only the logs owned by the sink's parent
        # resource are available for export. If the field is true, then logs from all
        # the projects, folders, and billing accounts contained in the sink's parent
        # resource are also available for export. Whether a particular log entry from
        # the children is exported depends on the sink's filter expression. For example,
        # if this field is true, then the filter resource.type=gce_instance would export
        # all Compute Engine VM instance log entries from all projects in the sink's
        # parent. To only export entries from certain child projects, filter on the
        # project part of the log name:
        # logName:("projects/test-project1/" OR "projects/test-project2/") AND
        # resource.type=gce_instance
        # Corresponds to the JSON property `includeChildren`
        # @return [Boolean]
        attr_accessor :include_children
        alias_method :include_children?, :include_children
      
        # Optional. An advanced logs filter. The only exported log entries are those
        # that are in the resource owning the sink and that match the filter. The filter
        # must use the log entry format specified by the output_version_format parameter.
        # For example, in the v2 format:
        # logName="projects/[PROJECT_ID]/logs/[LOG_ID]" AND severity>=ERROR
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Required. The export destination:
        # "storage.googleapis.com/[GCS_BUCKET]"
        # "bigquery.googleapis.com/projects/[PROJECT_ID]/datasets/[DATASET]"
        # "pubsub.googleapis.com/projects/[PROJECT_ID]/topics/[TOPIC_ID]"
        # The sink's writer_identity, set when the sink is created, must have permission
        # to write to the destination or else the log entries are not exported. For more
        # information, see Exporting Logs With Sinks.
        # Corresponds to the JSON property `destination`
        # @return [String]
        attr_accessor :destination
      
        # Optional. The time at which this sink will stop exporting log entries. Log
        # entries are exported only if their timestamp is earlier than the end time. If
        # this field is not supplied, there is no end time. If both a start time and an
        # end time are provided, then the end time must be later than the start time.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Optional. The time at which this sink will begin exporting log entries. Log
        # entries are exported only if their timestamp is not earlier than the start
        # time. The default value of this field is the time the sink is created or
        # updated.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Output only. An IAM identity&mdash;a service account or group&mdash;under
        # which Stackdriver Logging writes the exported log entries to the sink's
        # destination. This field is set by sinks.create and sinks.update, based on the
        # setting of unique_writer_identity in those methods.Until you grant this
        # identity write-access to the destination, log entry exports from this sink
        # will fail. For more information, see Granting access for a resource. Consult
        # the destination service's documentation to determine the appropriate IAM roles
        # to assign to the identity.
        # Corresponds to the JSON property `writerIdentity`
        # @return [String]
        attr_accessor :writer_identity
      
        # Optional. The log entry format to use for this sink's exported log entries.
        # The v2 format is used by default. The v1 format is deprecated and should be
        # used only as part of a migration effort to v2. See Migration to the v2 API.
        # Corresponds to the JSON property `outputVersionFormat`
        # @return [String]
        attr_accessor :output_version_format
      
        # Required. The client-assigned sink identifier, unique within the project.
        # Example: "my-syslog-errors-to-pubsub". Sink identifiers are limited to 100
        # characters and can include only the following characters: upper and lower-case
        # alphanumeric characters, underscores, hyphens, and periods.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @include_children = args[:include_children] if args.key?(:include_children)
          @filter = args[:filter] if args.key?(:filter)
          @destination = args[:destination] if args.key?(:destination)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
          @writer_identity = args[:writer_identity] if args.key?(:writer_identity)
          @output_version_format = args[:output_version_format] if args.key?(:output_version_format)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # The parameters to WriteLogEntries.
      class WriteLogEntriesRequest
        include Google::Apis::Core::Hashable
      
        # Optional. A default log resource name that is assigned to all log entries in
        # entries that do not specify a value for log_name:
        # "projects/[PROJECT_ID]/logs/[LOG_ID]"
        # "organizations/[ORGANIZATION_ID]/logs/[LOG_ID]"
        # "billingAccounts/[BILLING_ACCOUNT_ID]/logs/[LOG_ID]"
        # "folders/[FOLDER_ID]/logs/[LOG_ID]"
        # [LOG_ID] must be URL-encoded. For example, "projects/my-project-id/logs/syslog"
        # or "organizations/1234567890/logs/cloudresourcemanager.googleapis.com%
        # 2Factivity". For more information about log names, see LogEntry.
        # Corresponds to the JSON property `logName`
        # @return [String]
        attr_accessor :log_name
      
        # Required. The log entries to write. Values supplied for the fields log_name,
        # resource, and labels in this entries.write request are inserted into those log
        # entries in this list that do not provide their own values.Stackdriver Logging
        # also creates and inserts values for timestamp and insert_id if the entries do
        # not provide them. The created insert_id for the N'th entry in this list will
        # be greater than earlier entries and less than later entries. Otherwise, the
        # order of log entries in this list does not matter.To improve throughput and to
        # avoid exceeding the quota limit for calls to entries.write, you should write
        # multiple log entries at once rather than calling this method for each
        # individual log entry.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::LoggingV2::LogEntry>]
        attr_accessor :entries
      
        # Optional. Whether valid entries should be written even if some other entries
        # fail due to INVALID_ARGUMENT or PERMISSION_DENIED errors. If any entry is not
        # written, then the response status is the error associated with one of the
        # failed entries and the response includes error details keyed by the entries'
        # zero-based index in the entries.write method.
        # Corresponds to the JSON property `partialSuccess`
        # @return [Boolean]
        attr_accessor :partial_success
        alias_method :partial_success?, :partial_success
      
        # Optional. Default labels that are added to the labels field of all log entries
        # in entries. If a log entry already has a label with the same key as a label in
        # this parameter, then the log entry's label is not changed. See LogEntry.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # An object representing a resource that can be used for monitoring, logging,
        # billing, or other purposes. Examples include virtual machine instances,
        # databases, and storage devices such as disks. The type field identifies a
        # MonitoredResourceDescriptor object that describes the resource's schema.
        # Information in the labels field identifies the actual resource and its
        # attributes according to the schema. For example, a particular Compute Engine
        # VM instance could be represented by the following object, because the
        # MonitoredResourceDescriptor for "gce_instance" has labels "instance_id" and "
        # zone":
        # ` "type": "gce_instance",
        # "labels": ` "instance_id": "12345678901234",
        # "zone": "us-central1-a" ``
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::LoggingV2::MonitoredResource]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @log_name = args[:log_name] if args.key?(:log_name)
          @entries = args[:entries] if args.key?(:entries)
          @partial_success = args[:partial_success] if args.key?(:partial_success)
          @labels = args[:labels] if args.key?(:labels)
          @resource = args[:resource] if args.key?(:resource)
        end
      end
      
      # Result returned from ListLogs.
      class ListLogsResponse
        include Google::Apis::Core::Hashable
      
        # If there might be more results than those appearing in this response, then
        # nextPageToken is included. To get the next set of results, call this method
        # again using the value of nextPageToken as pageToken.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of log names. For example, "projects/my-project/syslog" or "
        # organizations/123/cloudresourcemanager.googleapis.com%2Factivity".
        # Corresponds to the JSON property `logNames`
        # @return [Array<String>]
        attr_accessor :log_names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @log_names = args[:log_names] if args.key?(:log_names)
        end
      end
    end
  end
end
