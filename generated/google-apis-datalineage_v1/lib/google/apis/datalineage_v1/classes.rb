# Copyright 2020 Google LLC
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
    module DatalineageV1
      
      # Request message for BatchSearchLinkProcesses.
      class GoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesRequest
        include Google::Apis::Core::Hashable
      
        # Required. An array of links to check for their associated LineageProcesses.
        # The maximum number of items in this array is 100. If the request contains more
        # than 100 links, it returns the `INVALID_ARGUMENT` error. Format: `projects/`
        # project`/locations/`location`/links/`link``.
        # Corresponds to the JSON property `links`
        # @return [Array<String>]
        attr_accessor :links
      
        # The maximum number of processes to return in a single page of the response. A
        # page may contain fewer results than this value.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # The page token received from a previous `BatchSearchLinkProcesses` call. Use
        # it to get the next page. When requesting subsequent pages of a response,
        # remember that all parameters must match the values you provided in the
        # original request.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @links = args[:links] if args.key?(:links)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
        end
      end
      
      # Response message for BatchSearchLinkProcesses.
      class GoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesResponse
        include Google::Apis::Core::Hashable
      
        # The token to specify as `page_token` in the subsequent call to get the next
        # page. Omitted if there are no more pages in the response.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # An array of processes associated with the specified links.
        # Corresponds to the JSON property `processLinks`
        # @return [Array<Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1ProcessLinks>]
        attr_accessor :process_links
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @process_links = args[:process_links] if args.key?(:process_links)
        end
      end
      
      # The soft reference to everything you can attach a lineage event to.
      class GoogleCloudDatacatalogLineageV1EntityReference
        include Google::Apis::Core::Hashable
      
        # Required. [Fully Qualified Name (FQN)](https://cloud.google.com//data-catalog/
        # docs/fully-qualified-names) of the entity.
        # Corresponds to the JSON property `fullyQualifiedName`
        # @return [String]
        attr_accessor :fully_qualified_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fully_qualified_name = args[:fully_qualified_name] if args.key?(:fully_qualified_name)
        end
      end
      
      # A lineage between source and target entities.
      class GoogleCloudDatacatalogLineageV1EventLink
        include Google::Apis::Core::Hashable
      
        # The soft reference to everything you can attach a lineage event to.
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1EntityReference]
        attr_accessor :source
      
        # The soft reference to everything you can attach a lineage event to.
        # Corresponds to the JSON property `target`
        # @return [Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1EntityReference]
        attr_accessor :target
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @source = args[:source] if args.key?(:source)
          @target = args[:target] if args.key?(:target)
        end
      end
      
      # A lineage event represents an operation on assets. Within the operation, the
      # data flows from the source to the target defined in the links field.
      class GoogleCloudDatacatalogLineageV1LineageEvent
        include Google::Apis::Core::Hashable
      
        # Optional. The end of the transformation which resulted in this lineage event.
        # For streaming scenarios, it should be the end of the period from which the
        # lineage is being reported.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Optional. List of source-target pairs. Can't contain more than 100 tuples.
        # Corresponds to the JSON property `links`
        # @return [Array<Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1EventLink>]
        attr_accessor :links
      
        # Immutable. The resource name of the lineage event. Format: `projects/`project`/
        # locations/`location`/processes/`process`/runs/`run`/lineageEvents/`
        # lineage_event``. Can be specified or auto-assigned. `lineage_event` must be
        # not longer than 200 characters and only contain characters in a set: `a-zA-Z0-
        # 9_-:.`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The beginning of the transformation which resulted in this lineage
        # event. For streaming scenarios, it should be the beginning of the period from
        # which the lineage is being reported.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @links = args[:links] if args.key?(:links)
          @name = args[:name] if args.key?(:name)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Links represent the data flow between **source** (upstream) and **target** (
      # downstream) assets in transformation pipelines. Links are created when
      # LineageEvents record data transformation between related assets.
      class GoogleCloudDatacatalogLineageV1Link
        include Google::Apis::Core::Hashable
      
        # The end of the last event establishing this link.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Immutable. The name of the link. Format: `projects/`project`/
        # locations/`location`/links/`link``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The soft reference to everything you can attach a lineage event to.
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1EntityReference]
        attr_accessor :source
      
        # The start of the first event establishing this link.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # The soft reference to everything you can attach a lineage event to.
        # Corresponds to the JSON property `target`
        # @return [Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1EntityReference]
        attr_accessor :target
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @name = args[:name] if args.key?(:name)
          @source = args[:source] if args.key?(:source)
          @start_time = args[:start_time] if args.key?(:start_time)
          @target = args[:target] if args.key?(:target)
        end
      end
      
      # Response message for ListLineageEvents.
      class GoogleCloudDatacatalogLineageV1ListLineageEventsResponse
        include Google::Apis::Core::Hashable
      
        # Lineage events from the specified project and location.
        # Corresponds to the JSON property `lineageEvents`
        # @return [Array<Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1LineageEvent>]
        attr_accessor :lineage_events
      
        # The token to specify as `page_token` in the next call to get the next page. If
        # this field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @lineage_events = args[:lineage_events] if args.key?(:lineage_events)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListProcesses.
      class GoogleCloudDatacatalogLineageV1ListProcessesResponse
        include Google::Apis::Core::Hashable
      
        # The token to specify as `page_token` in the next call to get the next page. If
        # this field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The processes from the specified project and location.
        # Corresponds to the JSON property `processes`
        # @return [Array<Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1Process>]
        attr_accessor :processes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @processes = args[:processes] if args.key?(:processes)
        end
      end
      
      # Response message for ListRuns.
      class GoogleCloudDatacatalogLineageV1ListRunsResponse
        include Google::Apis::Core::Hashable
      
        # The token to specify as `page_token` in the next call to get the next page. If
        # this field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The runs from the specified project and location.
        # Corresponds to the JSON property `runs`
        # @return [Array<Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1Run>]
        attr_accessor :runs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @runs = args[:runs] if args.key?(:runs)
        end
      end
      
      # Metadata describing the operation.
      class GoogleCloudDatacatalogLineageV1OperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The timestamp of the operation submission to the server.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The timestamp of the operation termination, regardless of its
        # success. This field is unset if the operation is still ongoing.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. The type of the operation being performed.
        # Corresponds to the JSON property `operationType`
        # @return [String]
        attr_accessor :operation_type
      
        # Output only. The [relative name] (https://cloud.google.com//apis/design/
        # resource_names#relative_resource_name) of the resource being operated on.
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        # Output only. The UUID of the resource being operated on.
        # Corresponds to the JSON property `resourceUuid`
        # @return [String]
        attr_accessor :resource_uuid
      
        # Output only. The current operation state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @operation_type = args[:operation_type] if args.key?(:operation_type)
          @resource = args[:resource] if args.key?(:resource)
          @resource_uuid = args[:resource_uuid] if args.key?(:resource_uuid)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Origin of a process.
      class GoogleCloudDatacatalogLineageV1Origin
        include Google::Apis::Core::Hashable
      
        # If the source_type isn't CUSTOM, the value of this field should be a GCP
        # resource name of the system, which reports lineage. The project and location
        # parts of the resource name must match the project and location of the lineage
        # resource being created. Examples: - ``source_type: COMPOSER, name: "projects/
        # foo/locations/us/environments/bar"`` - ``source_type: BIGQUERY, name: "
        # projects/foo/locations/eu"`` - ``source_type: CUSTOM, name: "
        # myCustomIntegration"``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Type of the source. Use of a source_type other than `CUSTOM` for process
        # creation or updating is highly discouraged, and may be restricted in the
        # future without notice.
        # Corresponds to the JSON property `sourceType`
        # @return [String]
        attr_accessor :source_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @source_type = args[:source_type] if args.key?(:source_type)
        end
      end
      
      # A process is the definition of a data transformation operation.
      class GoogleCloudDatacatalogLineageV1Process
        include Google::Apis::Core::Hashable
      
        # Optional. The attributes of the process. Should only be used for the purpose
        # of non-semantic management (classifying, describing or labeling the process).
        # Up to 100 attributes are allowed.
        # Corresponds to the JSON property `attributes`
        # @return [Hash<String,Object>]
        attr_accessor :attributes
      
        # Optional. A human-readable name you can set to display in a user interface.
        # Must be not longer than 200 characters and only contain UTF-8 letters or
        # numbers, spaces or characters like `_-:&.`
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Immutable. The resource name of the lineage process. Format: `projects/`
        # project`/locations/`location`/processes/`process``. Can be specified or auto-
        # assigned. `process` must be not longer than 200 characters and only contain
        # characters in a set: `a-zA-Z0-9_-:.`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Origin of a process.
        # Corresponds to the JSON property `origin`
        # @return [Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1Origin]
        attr_accessor :origin
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @origin = args[:origin] if args.key?(:origin)
        end
      end
      
      # Link details.
      class GoogleCloudDatacatalogLineageV1ProcessLinkInfo
        include Google::Apis::Core::Hashable
      
        # The end of the last event establishing this link-process tuple.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The name of the link in the format of `projects/`project`/locations/`location`/
        # links/`link``.
        # Corresponds to the JSON property `link`
        # @return [String]
        attr_accessor :link
      
        # The start of the first event establishing this link-process tuple.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @link = args[:link] if args.key?(:link)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Links associated with a specific process.
      class GoogleCloudDatacatalogLineageV1ProcessLinks
        include Google::Apis::Core::Hashable
      
        # An array containing link details objects of the links provided in the original
        # request. A single process can result in creating multiple links. If any of the
        # links you provide in the request are created by the same process, they all are
        # included in this array.
        # Corresponds to the JSON property `links`
        # @return [Array<Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1ProcessLinkInfo>]
        attr_accessor :links
      
        # The process name in the format of `projects/`project`/locations/`location`/
        # processes/`process``.
        # Corresponds to the JSON property `process`
        # @return [String]
        attr_accessor :process
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @links = args[:links] if args.key?(:links)
          @process = args[:process] if args.key?(:process)
        end
      end
      
      # A lineage run represents an execution of a process that creates lineage events.
      class GoogleCloudDatacatalogLineageV1Run
        include Google::Apis::Core::Hashable
      
        # Optional. The attributes of the run. Should only be used for the purpose of
        # non-semantic management (classifying, describing or labeling the run). Up to
        # 100 attributes are allowed.
        # Corresponds to the JSON property `attributes`
        # @return [Hash<String,Object>]
        attr_accessor :attributes
      
        # Optional. A human-readable name you can set to display in a user interface.
        # Must be not longer than 1024 characters and only contain UTF-8 letters or
        # numbers, spaces or characters like `_-:&.`
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. The timestamp of the end of the run.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Immutable. The resource name of the run. Format: `projects/`project`/locations/
        # `location`/processes/`process`/runs/`run``. Can be specified or auto-assigned.
        # `run` must be not longer than 200 characters and only contain characters in a
        # set: `a-zA-Z0-9_-:.`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The timestamp of the start of the run.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Required. The state of the run.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @display_name = args[:display_name] if args.key?(:display_name)
          @end_time = args[:end_time] if args.key?(:end_time)
          @name = args[:name] if args.key?(:name)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Request message for SearchLinks.
      class GoogleCloudDatacatalogLineageV1SearchLinksRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The maximum number of links to return in a single page of the
        # response. A page may contain fewer links than this value. If unspecified, at
        # most 10 links are returned. Maximum value is 100; values greater than 100 are
        # reduced to 100.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # Optional. The page token received from a previous `SearchLinksRequest` call.
        # Use it to get the next page. When requesting subsequent pages of a response,
        # remember that all parameters must match the values you provided in the
        # original request.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # The soft reference to everything you can attach a lineage event to.
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1EntityReference]
        attr_accessor :source
      
        # The soft reference to everything you can attach a lineage event to.
        # Corresponds to the JSON property `target`
        # @return [Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1EntityReference]
        attr_accessor :target
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @source = args[:source] if args.key?(:source)
          @target = args[:target] if args.key?(:target)
        end
      end
      
      # Response message for SearchLinks.
      class GoogleCloudDatacatalogLineageV1SearchLinksResponse
        include Google::Apis::Core::Hashable
      
        # The list of links for a given asset. Can be empty if the asset has no
        # relations of requested type (source or target).
        # Corresponds to the JSON property `links`
        # @return [Array<Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1Link>]
        attr_accessor :links
      
        # The token to specify as `page_token` in the subsequent call to get the next
        # page. Omitted if there are no more pages in the response.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @links = args[:links] if args.key?(:links)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The request message for Operations.CancelOperation.
      class GoogleLongrunningCancelOperationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The response message for Operations.ListOperations.
      class GoogleLongrunningListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::DatalineageV1::GoogleLongrunningOperation>]
        attr_accessor :operations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class GoogleLongrunningOperation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress. If `true`
        # , the operation is completed, and either `error` or `response` is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::DatalineageV1::GoogleRpcStatus]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation. It typically contains
        # progress information and common metadata such as create time. Some services
        # might not provide such metadata. Any method that returns a long-running
        # operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the `name` should
        # be a resource name ending with `operations/`unique_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal response of the operation in case of success. If the original
        # method returns no data on success, such as `Delete`, the response is `google.
        # protobuf.Empty`. If the original method is standard `Get`/`Create`/`Update`,
        # the response should be the resource. For other methods, the response should
        # have the type `XxxResponse`, where `Xxx` is the original method name. For
        # example, if the original method name is `TakeSnapshot()`, the inferred
        # response type is `TakeSnapshotResponse`.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] if args.key?(:done)
          @error = args[:error] if args.key?(:error)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class GoogleProtobufEmpty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class GoogleRpcStatus
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details. There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any user-facing
        # error message should be localized and sent in the google.rpc.Status.details
        # field, or localized by the client.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @details = args[:details] if args.key?(:details)
          @message = args[:message] if args.key?(:message)
        end
      end
    end
  end
end
