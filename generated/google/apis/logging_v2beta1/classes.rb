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
      
        # Optional. A default log resource name for those log entries in `entries` that
        # do not specify their own `logName`. Example: `"projects/my-project/logs/syslog"
        # `. See LogEntry.
        # Corresponds to the JSON property `logName`
        # @return [String]
        attr_accessor :log_name
      
        # An object representing a resource that can be used for monitoring, logging,
        # billing, or other purposes. Examples include virtual machine instances,
        # databases, and storage devices such as disks. The `type` field identifies a
        # MonitoredResourceDescriptor object that describes the resource's schema.
        # Information in the `labels` field identifies the actual resource and its
        # attributes according to the schema. For example, a particular Compute Engine
        # VM instance could be represented by the following object, because the
        # MonitoredResourceDescriptor for `"gce_instance"` has labels `"instance_id"`
        # and `"zone"`: ` "type": "gce_instance", "labels": ` "instance_id": "my-
        # instance", "zone": "us-central1-a" ``
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::LoggingV2beta1::MonitoredResource]
        attr_accessor :resource
      
        # Optional. User-defined `key:value` items that are added to the `labels` field
        # of each log entry in `entries`, except when a log entry specifies its own `key:
        # value` item with the same key. Example: `` "size": "large", "color":"red" ``
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. The log entries to write. The log entries must have values for all
        # required fields.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::LoggingV2beta1::LogEntry>]
        attr_accessor :entries
      
        # Optional. Whether valid entries should be written even if some other entries
        # fail due to INVALID_ARGUMENT or PERMISSION_DENIED errors. If any entry is not
        # written, the response status will be the error associated with one of the
        # failed entries and include error details in the form of
        # WriteLogEntriesPartialErrors.
        # Corresponds to the JSON property `partialSuccess`
        # @return [Boolean]
        attr_accessor :partial_success
        alias_method :partial_success?, :partial_success
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @log_name = args[:log_name] if args.key?(:log_name)
          @resource = args[:resource] if args.key?(:resource)
          @labels = args[:labels] if args.key?(:labels)
          @entries = args[:entries] if args.key?(:entries)
          @partial_success = args[:partial_success] if args.key?(:partial_success)
        end
      end
      
      # An object representing a resource that can be used for monitoring, logging,
      # billing, or other purposes. Examples include virtual machine instances,
      # databases, and storage devices such as disks. The `type` field identifies a
      # MonitoredResourceDescriptor object that describes the resource's schema.
      # Information in the `labels` field identifies the actual resource and its
      # attributes according to the schema. For example, a particular Compute Engine
      # VM instance could be represented by the following object, because the
      # MonitoredResourceDescriptor for `"gce_instance"` has labels `"instance_id"`
      # and `"zone"`: ` "type": "gce_instance", "labels": ` "instance_id": "my-
      # instance", "zone": "us-central1-a" ``
      class MonitoredResource
        include Google::Apis::Core::Hashable
      
        # Required. The monitored resource type. This field must match the `type` field
        # of a MonitoredResourceDescriptor object. For example, the type of a Cloud SQL
        # database is `"cloudsql_database"`.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Required. Values for all of the labels listed in the associated monitored
        # resource descriptor. For example, Cloud SQL databases use the labels `"
        # database_id"` and `"zone"`.
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
      
      # An individual entry in a log.
      class LogEntry
        include Google::Apis::Core::Hashable
      
        # Required. The resource name of the log to which this log entry belongs. The
        # format of the name is `"projects/
        # /logs/"`. Examples: `"projects/my-projectid/logs/syslog"`, `"projects/
        # 1234567890/logs/library.googleapis.com%2Fbook_log"`. The log ID part of
        # resource name must be less than 512 characters long and can only include the
        # following characters: upper and lower case alphanumeric characters: [A-Za-z0-9]
        # ; and punctuation characters: forward-slash, underscore, hyphen, and period.
        # Forward-slash (`/`) characters in the log ID must be URL-encoded.
        # Corresponds to the JSON property `logName`
        # @return [String]
        attr_accessor :log_name
      
        # An object representing a resource that can be used for monitoring, logging,
        # billing, or other purposes. Examples include virtual machine instances,
        # databases, and storage devices such as disks. The `type` field identifies a
        # MonitoredResourceDescriptor object that describes the resource's schema.
        # Information in the `labels` field identifies the actual resource and its
        # attributes according to the schema. For example, a particular Compute Engine
        # VM instance could be represented by the following object, because the
        # MonitoredResourceDescriptor for `"gce_instance"` has labels `"instance_id"`
        # and `"zone"`: ` "type": "gce_instance", "labels": ` "instance_id": "my-
        # instance", "zone": "us-central1-a" ``
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::LoggingV2beta1::MonitoredResource]
        attr_accessor :resource
      
        # The log entry payload, represented as a protocol buffer. You can only use `
        # protoPayload` values that belong to a set of approved types.
        # Corresponds to the JSON property `protoPayload`
        # @return [Hash<String,Object>]
        attr_accessor :proto_payload
      
        # The log entry payload, represented as a Unicode string (UTF-8).
        # Corresponds to the JSON property `textPayload`
        # @return [String]
        attr_accessor :text_payload
      
        # The log entry payload, represented as a structure that is expressed as a JSON
        # object.
        # Corresponds to the JSON property `jsonPayload`
        # @return [Hash<String,Object>]
        attr_accessor :json_payload
      
        # Optional. The time the event described by the log entry occurred. If omitted,
        # Cloud Logging will use the time the log entry is written.
        # Corresponds to the JSON property `timestamp`
        # @return [String]
        attr_accessor :timestamp
      
        # Optional. The severity of the log entry. The default value is `LogSeverity.
        # DEFAULT`.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # Optional. A unique ID for the log entry. If you provide this field, the
        # logging service considers other log entries in the same log with the same ID
        # as duplicates which can be removed. If omitted, Cloud Logging will generate a
        # unique ID for this log entry.
        # Corresponds to the JSON property `insertId`
        # @return [String]
        attr_accessor :insert_id
      
        # A common proto for logging HTTP requests.
        # Corresponds to the JSON property `httpRequest`
        # @return [Google::Apis::LoggingV2beta1::HttpRequest]
        attr_accessor :http_request
      
        # Optional. A set of user-defined (key, value) data that provides additional
        # information about the log entry.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Additional information about a potentially long-running operation with which a
        # log entry is associated.
        # Corresponds to the JSON property `operation`
        # @return [Google::Apis::LoggingV2beta1::LogEntryOperation]
        attr_accessor :operation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @log_name = args[:log_name] if args.key?(:log_name)
          @resource = args[:resource] if args.key?(:resource)
          @proto_payload = args[:proto_payload] if args.key?(:proto_payload)
          @text_payload = args[:text_payload] if args.key?(:text_payload)
          @json_payload = args[:json_payload] if args.key?(:json_payload)
          @timestamp = args[:timestamp] if args.key?(:timestamp)
          @severity = args[:severity] if args.key?(:severity)
          @insert_id = args[:insert_id] if args.key?(:insert_id)
          @http_request = args[:http_request] if args.key?(:http_request)
          @labels = args[:labels] if args.key?(:labels)
          @operation = args[:operation] if args.key?(:operation)
        end
      end
      
      # A common proto for logging HTTP requests.
      class HttpRequest
        include Google::Apis::Core::Hashable
      
        # The request method. Examples: `"GET"`, `"HEAD"`, `"PUT"`, `"POST"`.
        # Corresponds to the JSON property `requestMethod`
        # @return [String]
        attr_accessor :request_method
      
        # The scheme (http, https), the host name, the path and the query portion of the
        # URL that was requested. Example: `"http://example.com/some/info?color=red"`.
        # Corresponds to the JSON property `requestUrl`
        # @return [String]
        attr_accessor :request_url
      
        # The size of the HTTP request message in bytes, including the request headers
        # and the request body.
        # Corresponds to the JSON property `requestSize`
        # @return [String]
        attr_accessor :request_size
      
        # The response code indicating the status of response. Examples: 200, 404.
        # Corresponds to the JSON property `status`
        # @return [Fixnum]
        attr_accessor :status
      
        # The size of the HTTP response message sent back to the client, in bytes,
        # including the response headers and the response body.
        # Corresponds to the JSON property `responseSize`
        # @return [String]
        attr_accessor :response_size
      
        # The user agent sent by the client. Example: `"Mozilla/4.0 (compatible; MSIE 6.
        # 0; Windows 98; Q312461; .NET CLR 1.0.3705)"`.
        # Corresponds to the JSON property `userAgent`
        # @return [String]
        attr_accessor :user_agent
      
        # The IP address (IPv4 or IPv6) of the client that issued the HTTP request.
        # Examples: `"192.168.1.1"`, `"FE80::0202:B3FF:FE1E:8329"`.
        # Corresponds to the JSON property `remoteIp`
        # @return [String]
        attr_accessor :remote_ip
      
        # The referer URL of the request, as defined in [HTTP/1.1 Header Field
        # Definitions](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html).
        # Corresponds to the JSON property `referer`
        # @return [String]
        attr_accessor :referer
      
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
        # served from cache. This field is only meaningful if `cache_hit` is True.
        # Corresponds to the JSON property `cacheValidatedWithOriginServer`
        # @return [Boolean]
        attr_accessor :cache_validated_with_origin_server
        alias_method :cache_validated_with_origin_server?, :cache_validated_with_origin_server
      
        # The number of HTTP response bytes inserted into cache. Set only when a cache
        # fill was attempted.
        # Corresponds to the JSON property `cacheFillBytes`
        # @return [String]
        attr_accessor :cache_fill_bytes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_method = args[:request_method] if args.key?(:request_method)
          @request_url = args[:request_url] if args.key?(:request_url)
          @request_size = args[:request_size] if args.key?(:request_size)
          @status = args[:status] if args.key?(:status)
          @response_size = args[:response_size] if args.key?(:response_size)
          @user_agent = args[:user_agent] if args.key?(:user_agent)
          @remote_ip = args[:remote_ip] if args.key?(:remote_ip)
          @referer = args[:referer] if args.key?(:referer)
          @cache_lookup = args[:cache_lookup] if args.key?(:cache_lookup)
          @cache_hit = args[:cache_hit] if args.key?(:cache_hit)
          @cache_validated_with_origin_server = args[:cache_validated_with_origin_server] if args.key?(:cache_validated_with_origin_server)
          @cache_fill_bytes = args[:cache_fill_bytes] if args.key?(:cache_fill_bytes)
        end
      end
      
      # Additional information about a potentially long-running operation with which a
      # log entry is associated.
      class LogEntryOperation
        include Google::Apis::Core::Hashable
      
        # Required. An arbitrary operation identifier. Log entries with the same
        # identifier are assumed to be part of the same operation.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Required. An arbitrary producer identifier. The combination of `id` and `
        # producer` must be globally unique. Examples for `producer`: `"MyDivision.
        # MyBigCompany.com"`, "github.com/MyProject/MyApplication"`.
        # Corresponds to the JSON property `producer`
        # @return [String]
        attr_accessor :producer
      
        # Optional. Set this to True if this is the first log entry in the operation.
        # Corresponds to the JSON property `first`
        # @return [Boolean]
        attr_accessor :first
        alias_method :first?, :first
      
        # Optional. Set this to True if this is the last log entry in the operation.
        # Corresponds to the JSON property `last`
        # @return [Boolean]
        attr_accessor :last
        alias_method :last?, :last
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @producer = args[:producer] if args.key?(:producer)
          @first = args[:first] if args.key?(:first)
          @last = args[:last] if args.key?(:last)
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
      
      # The parameters to `ListLogEntries`.
      class ListLogEntriesRequest
        include Google::Apis::Core::Hashable
      
        # Required. One or more project IDs or project numbers from which to retrieve
        # log entries. Examples of a project ID: `"my-project-1A"`, `"1234567890"`.
        # Corresponds to the JSON property `projectIds`
        # @return [Array<String>]
        attr_accessor :project_ids
      
        # Optional. An [advanced logs filter](/logging/docs/view/advanced_filters). The
        # filter is compared against all log entries in the projects specified by `
        # projectIds`. Only entries that match the filter are retrieved. An empty filter
        # matches all log entries.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Optional. How the results should be sorted. Presently, the only permitted
        # values are `"timestamp asc"` (default) and `"timestamp desc"`. The first
        # option returns entries in order of increasing values of `LogEntry.timestamp` (
        # oldest first), and the second option returns entries in order of decreasing
        # timestamps (newest first). Entries with equal timestamps are returned in order
        # of `LogEntry.insertId`.
        # Corresponds to the JSON property `orderBy`
        # @return [String]
        attr_accessor :order_by
      
        # Optional. The maximum number of results to return from this request. You must
        # check for presence of `nextPageToken` to determine if additional results are
        # available, which you can retrieve by passing the `nextPageToken` value as the `
        # pageToken` parameter in the next request.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # Optional. If the `pageToken` parameter is supplied, then the next page of
        # results is retrieved. The `pageToken` parameter must be set to the value of
        # the `nextPageToken` from the previous response. The values of `projectIds`, `
        # filter`, and `orderBy` must be the same as in the previous request.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Optional. If true, read access to all projects is not required and results
        # will be returned for the subset of projects for which read access is permitted
        # (empty subset is permitted).
        # Corresponds to the JSON property `partialSuccess`
        # @return [Boolean]
        attr_accessor :partial_success
        alias_method :partial_success?, :partial_success
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @project_ids = args[:project_ids] if args.key?(:project_ids)
          @filter = args[:filter] if args.key?(:filter)
          @order_by = args[:order_by] if args.key?(:order_by)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @partial_success = args[:partial_success] if args.key?(:partial_success)
        end
      end
      
      # Result returned from `ListLogEntries`.
      class ListLogEntriesResponse
        include Google::Apis::Core::Hashable
      
        # A list of log entries.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::LoggingV2beta1::LogEntry>]
        attr_accessor :entries
      
        # If there are more results than were returned, then `nextPageToken` is included
        # in the response. To get the next set of results, call this method again using
        # the value of `nextPageToken` as `pageToken`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # If partial_success is true, contains the project ids that had errors and the
        # associated errors.
        # Corresponds to the JSON property `projectIdErrors`
        # @return [Hash<String,Google::Apis::LoggingV2beta1::Status>]
        attr_accessor :project_id_errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @project_id_errors = args[:project_id_errors] if args.key?(:project_id_errors)
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
          @code = args[:code] if args.key?(:code)
          @message = args[:message] if args.key?(:message)
          @details = args[:details] if args.key?(:details)
        end
      end
      
      # Result returned from ListMonitoredResourceDescriptors.
      class ListMonitoredResourceDescriptorsResponse
        include Google::Apis::Core::Hashable
      
        # A list of resource descriptors.
        # Corresponds to the JSON property `resourceDescriptors`
        # @return [Array<Google::Apis::LoggingV2beta1::MonitoredResourceDescriptor>]
        attr_accessor :resource_descriptors
      
        # If there are more results than were returned, then `nextPageToken` is included
        # in the response. To get the next set of results, call this method again using
        # the value of `nextPageToken` as `pageToken`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_descriptors = args[:resource_descriptors] if args.key?(:resource_descriptors)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # An object that describes the schema of a MonitoredResource object using a type
      # name and a set of labels. For example, the monitored resource descriptor for
      # Google Compute Engine VM instances has a type of `"gce_instance"` and
      # specifies the use of the labels `"instance_id"` and `"zone"` to identify
      # particular VM instances. Different APIs can support different monitored
      # resource types. APIs generally provide a `list` method that returns the
      # monitored resource descriptors used by the API.
      class MonitoredResourceDescriptor
        include Google::Apis::Core::Hashable
      
        # Optional. The resource name of the monitored resource descriptor: `"projects/`
        # project_id`/monitoredResourceDescriptors/`type`"` where `type` is the value of
        # the `type` field in this object and `project_id` is a project ID that provides
        # API-specific context for accessing the type. APIs that do not use project
        # information can use the resource name format `"monitoredResourceDescriptors/`
        # type`"`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The monitored resource type. For example, the type `"
        # cloudsql_database"` represents databases in Google Cloud SQL.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Optional. A concise name for the monitored resource type that might be
        # displayed in user interfaces. For example, `"Google Cloud SQL Database"`.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. A detailed description of the monitored resource type that might be
        # used in documentation.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. A set of labels used to describe instances of this monitored
        # resource type. For example, an individual Google Cloud SQL database is
        # identified by values for the labels `"database_id"` and `"zone"`.
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::LoggingV2beta1::LabelDescriptor>]
        attr_accessor :labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
          @display_name = args[:display_name] if args.key?(:display_name)
          @description = args[:description] if args.key?(:description)
          @labels = args[:labels] if args.key?(:labels)
        end
      end
      
      # A description of a label.
      class LabelDescriptor
        include Google::Apis::Core::Hashable
      
        # The label key.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # The type of data that can be assigned to the label.
        # Corresponds to the JSON property `valueType`
        # @return [String]
        attr_accessor :value_type
      
        # A human-readable description for the label.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @value_type = args[:value_type] if args.key?(:value_type)
          @description = args[:description] if args.key?(:description)
        end
      end
      
      # Result returned from `ListSinks`.
      class ListSinksResponse
        include Google::Apis::Core::Hashable
      
        # A list of sinks.
        # Corresponds to the JSON property `sinks`
        # @return [Array<Google::Apis::LoggingV2beta1::LogSink>]
        attr_accessor :sinks
      
        # If there are more results than were returned, then `nextPageToken` is included
        # in the response. To get the next set of results, call this method again using
        # the value of `nextPageToken` as `pageToken`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sinks = args[:sinks] if args.key?(:sinks)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Describes a sink used to export log entries outside Cloud Logging.
      class LogSink
        include Google::Apis::Core::Hashable
      
        # Required. The client-assigned sink identifier. Example: `"my-severe-errors-to-
        # pubsub"`. Sink identifiers are limited to 1000 characters and can include only
        # the following characters: `A-Z`, `a-z`, `0-9`, and the special characters `_-.`
        # .
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The export destination. See [Exporting Logs With Sinks](/logging/docs/api/
        # tasks/exporting-logs). Examples: `"storage.googleapis.com/a-bucket"`, `"
        # bigquery.googleapis.com/projects/a-project-id/datasets/a-dataset"`.
        # Corresponds to the JSON property `destination`
        # @return [String]
        attr_accessor :destination
      
        # An [advanced logs filter](/logging/docs/view/advanced_filters). Only log
        # entries matching that filter are exported. The filter must be consistent with
        # the log entry format specified by the `outputVersionFormat` parameter,
        # regardless of the format of the log entry that was originally written to Cloud
        # Logging. Example (V2 format): `"logName=projects/my-projectid/logs/syslog AND
        # severity>=ERROR"`.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # The log entry version to use for this sink's exported log entries. This
        # version does not have to correspond to the version of the log entry when it
        # was written to Cloud Logging.
        # Corresponds to the JSON property `outputVersionFormat`
        # @return [String]
        attr_accessor :output_version_format
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @destination = args[:destination] if args.key?(:destination)
          @filter = args[:filter] if args.key?(:filter)
          @output_version_format = args[:output_version_format] if args.key?(:output_version_format)
        end
      end
      
      # Result returned from ListLogMetrics.
      class ListLogMetricsResponse
        include Google::Apis::Core::Hashable
      
        # A list of logs-based metrics.
        # Corresponds to the JSON property `metrics`
        # @return [Array<Google::Apis::LoggingV2beta1::LogMetric>]
        attr_accessor :metrics
      
        # If there are more results than were returned, then `nextPageToken` is included
        # in the response. To get the next set of results, call this method again using
        # the value of `nextPageToken` as `pageToken`.
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
      
      # Describes a logs-based metric. The value of the metric is the number of log
      # entries that match a logs filter.
      class LogMetric
        include Google::Apis::Core::Hashable
      
        # Required. The client-assigned metric identifier. Example: `"severe_errors"`.
        # Metric identifiers are limited to 1000 characters and can include only the
        # following characters: `A-Z`, `a-z`, `0-9`, and the special characters `_-.,+!*'
        # ,()%/\`. The forward-slash character (`/`) denotes a hierarchy of name pieces,
        # and it cannot be the first character of the name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A description of this metric, which is used in documentation.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # An [advanced logs filter](/logging/docs/view/advanced_filters). Example: `"
        # logName:syslog AND severity>=ERROR"`.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @description = args[:description] if args.key?(:description)
          @filter = args[:filter] if args.key?(:filter)
        end
      end
      
      # Complete log information about a single HTTP request to an App Engine
      # application.
      class RequestLog
        include Google::Apis::Core::Hashable
      
        # Application that handled this request.
        # Corresponds to the JSON property `appId`
        # @return [String]
        attr_accessor :app_id
      
        # Module of the application that handled this request.
        # Corresponds to the JSON property `moduleId`
        # @return [String]
        attr_accessor :module_id
      
        # Version of the application that handled this request.
        # Corresponds to the JSON property `versionId`
        # @return [String]
        attr_accessor :version_id
      
        # Globally unique identifier for a request, which is based on the request start
        # time. Request IDs for requests which started later will compare greater as
        # strings than those for requests which started earlier.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # Origin IP address.
        # Corresponds to the JSON property `ip`
        # @return [String]
        attr_accessor :ip
      
        # Time when the request started.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Time when the request finished.
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
      
        # Request method. Example: `"GET"`, `"HEAD"`, `"PUT"`, `"POST"`, `"DELETE"`.
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        # Contains the path and query portion of the URL that was requested. For example,
        # if the URL was "http://example.com/app?name=val", the resource would be "/app?
        # name=val". The fragment identifier, which is identified by the `#` character,
        # is not included.
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        # HTTP version of request. Example: `"HTTP/1.1"`.
        # Corresponds to the JSON property `httpVersion`
        # @return [String]
        attr_accessor :http_version
      
        # HTTP response status code. Example: 200, 404.
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
      
        # User agent that made the request.
        # Corresponds to the JSON property `userAgent`
        # @return [String]
        attr_accessor :user_agent
      
        # The logged-in user who made the request. Most likely, this is the part of the
        # user's email before the `@` sign. The field value is the same for different
        # requests from the same user, but different users can have similar names. This
        # information is also available to the application via the App Engine Users API.
        # This field will be populated starting with App Engine 1.9.21.
        # Corresponds to the JSON property `nickname`
        # @return [String]
        attr_accessor :nickname
      
        # File or class that handled the request.
        # Corresponds to the JSON property `urlMapEntry`
        # @return [String]
        attr_accessor :url_map_entry
      
        # Internet host and port number of the resource being requested.
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        # An indication of the relative cost of serving this request.
        # Corresponds to the JSON property `cost`
        # @return [Float]
        attr_accessor :cost
      
        # Queue name of the request, in the case of an offline request.
        # Corresponds to the JSON property `taskQueueName`
        # @return [String]
        attr_accessor :task_queue_name
      
        # Task name of the request, in the case of an offline request.
        # Corresponds to the JSON property `taskName`
        # @return [String]
        attr_accessor :task_name
      
        # Whether this was a loading request for the instance.
        # Corresponds to the JSON property `wasLoadingRequest`
        # @return [Boolean]
        attr_accessor :was_loading_request
        alias_method :was_loading_request?, :was_loading_request
      
        # Time this request spent in the pending request queue.
        # Corresponds to the JSON property `pendingTime`
        # @return [String]
        attr_accessor :pending_time
      
        # If the instance processing this request belongs to a manually scaled module,
        # then this is the 0-based index of the instance. Otherwise, this value is -1.
        # Corresponds to the JSON property `instanceIndex`
        # @return [Fixnum]
        attr_accessor :instance_index
      
        # Whether this request is finished or active.
        # Corresponds to the JSON property `finished`
        # @return [Boolean]
        attr_accessor :finished
        alias_method :finished?, :finished
      
        # Whether this is the first RequestLog entry for this request. If an active
        # request has several RequestLog entries written to Cloud Logging, this field
        # will be set for one of them.
        # Corresponds to the JSON property `first`
        # @return [Boolean]
        attr_accessor :first
        alias_method :first?, :first
      
        # An identifier for the instance that handled the request.
        # Corresponds to the JSON property `instanceId`
        # @return [String]
        attr_accessor :instance_id
      
        # A list of log lines emitted by the application while serving this request.
        # Corresponds to the JSON property `line`
        # @return [Array<Google::Apis::LoggingV2beta1::LogLine>]
        attr_accessor :line
      
        # App Engine release version.
        # Corresponds to the JSON property `appEngineRelease`
        # @return [String]
        attr_accessor :app_engine_release
      
        # Cloud Trace identifier for this request.
        # Corresponds to the JSON property `traceId`
        # @return [String]
        attr_accessor :trace_id
      
        # Source code for the application that handled this request. There can be more
        # than one source reference per deployed application if source code is
        # distributed among multiple repositories.
        # Corresponds to the JSON property `sourceReference`
        # @return [Array<Google::Apis::LoggingV2beta1::SourceReference>]
        attr_accessor :source_reference
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_id = args[:app_id] if args.key?(:app_id)
          @module_id = args[:module_id] if args.key?(:module_id)
          @version_id = args[:version_id] if args.key?(:version_id)
          @request_id = args[:request_id] if args.key?(:request_id)
          @ip = args[:ip] if args.key?(:ip)
          @start_time = args[:start_time] if args.key?(:start_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @latency = args[:latency] if args.key?(:latency)
          @mega_cycles = args[:mega_cycles] if args.key?(:mega_cycles)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
          @resource = args[:resource] if args.key?(:resource)
          @http_version = args[:http_version] if args.key?(:http_version)
          @status = args[:status] if args.key?(:status)
          @response_size = args[:response_size] if args.key?(:response_size)
          @referrer = args[:referrer] if args.key?(:referrer)
          @user_agent = args[:user_agent] if args.key?(:user_agent)
          @nickname = args[:nickname] if args.key?(:nickname)
          @url_map_entry = args[:url_map_entry] if args.key?(:url_map_entry)
          @host = args[:host] if args.key?(:host)
          @cost = args[:cost] if args.key?(:cost)
          @task_queue_name = args[:task_queue_name] if args.key?(:task_queue_name)
          @task_name = args[:task_name] if args.key?(:task_name)
          @was_loading_request = args[:was_loading_request] if args.key?(:was_loading_request)
          @pending_time = args[:pending_time] if args.key?(:pending_time)
          @instance_index = args[:instance_index] if args.key?(:instance_index)
          @finished = args[:finished] if args.key?(:finished)
          @first = args[:first] if args.key?(:first)
          @instance_id = args[:instance_id] if args.key?(:instance_id)
          @line = args[:line] if args.key?(:line)
          @app_engine_release = args[:app_engine_release] if args.key?(:app_engine_release)
          @trace_id = args[:trace_id] if args.key?(:trace_id)
          @source_reference = args[:source_reference] if args.key?(:source_reference)
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
        # @return [Google::Apis::LoggingV2beta1::SourceLocation]
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
      
      # Specifies a location in a source code file.
      class SourceLocation
        include Google::Apis::Core::Hashable
      
        # Source file name. Depending on the runtime environment, this might be a simple
        # name or a fully-qualified name.
        # Corresponds to the JSON property `file`
        # @return [String]
        attr_accessor :file
      
        # Line within the source file.
        # Corresponds to the JSON property `line`
        # @return [String]
        attr_accessor :line
      
        # Human-readable name of the function or method being invoked, with optional
        # context such as the class or package name. This information is used in
        # contexts such as the logs viewer, where a file and line number are less
        # meaningful. The format can vary by language. For example: `qual.if.ied.Class.
        # method` (Java), `dir/package.func` (Go), `function` (Python).
        # Corresponds to the JSON property `functionName`
        # @return [String]
        attr_accessor :function_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file = args[:file] if args.key?(:file)
          @line = args[:line] if args.key?(:line)
          @function_name = args[:function_name] if args.key?(:function_name)
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
    end
  end
end
