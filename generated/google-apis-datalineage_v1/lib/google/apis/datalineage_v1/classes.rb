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
      
      # Configuration for Data Lineage. Defines different configuration options for
      # Lineage customers to control behaviour of lineage systems.
      class GoogleCloudDatacatalogLineageConfigmanagementV1Config
        include Google::Apis::Core::Hashable
      
        # Optional. `etag` is used for optimistic concurrency control as a way to help
        # prevent simultaneous updates of a config from overwriting each other. It is
        # required that systems make use of the `etag` in the read-modify-write cycle to
        # perform config updates in order to avoid race conditions: An `etag` is
        # returned in the response to `GetConfig`, and systems are expected to put that
        # etag in the request to `UpdateConfig` to ensure that their change will be
        # applied to the same version of the config. If an `etag` is not provided in the
        # call to `UpdateConfig`, then the existing config, if any, will be overwritten.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Defines how Lineage should be ingested for a given resource.
        # Corresponds to the JSON property `ingestion`
        # @return [Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestion]
        attr_accessor :ingestion
      
        # Identifier. The resource name of the config. Format: `organizations/`
        # organization_id`/locations/global/config` `folders/`folder_id`/locations/
        # global/config` `projects/`project_id`/locations/global/config` `projects/`
        # project_number`/locations/global/config`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @ingestion = args[:ingestion] if args.key?(:ingestion)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Defines how Lineage should be ingested for a given resource.
      class GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestion
        include Google::Apis::Core::Hashable
      
        # Optional. List of rules for Data Lineage ingestion.
        # Corresponds to the JSON property `rules`
        # @return [Array<Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRule>]
        attr_accessor :rules
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rules = args[:rules] if args.key?(:rules)
        end
      end
      
      # Ingestion rule for Data Lineage ingestion.
      class GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRule
        include Google::Apis::Core::Hashable
      
        # Integration selector of the rule. The rule is only applied to the Integration
        # selected by the selector.
        # Corresponds to the JSON property `integrationSelector`
        # @return [Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRuleIntegrationSelector]
        attr_accessor :integration_selector
      
        # Lineage enablement configuration. Defines configurations for the ingestion of
        # lineage for the resource and its children.
        # Corresponds to the JSON property `lineageEnablement`
        # @return [Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRuleLineageEnablement]
        attr_accessor :lineage_enablement
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @integration_selector = args[:integration_selector] if args.key?(:integration_selector)
          @lineage_enablement = args[:lineage_enablement] if args.key?(:lineage_enablement)
        end
      end
      
      # Integration selector of the rule. The rule is only applied to the Integration
      # selected by the selector.
      class GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRuleIntegrationSelector
        include Google::Apis::Core::Hashable
      
        # Required. Integration to which the rule applies. This field can be used to
        # specify the integration against which the ingestion rule should be applied.
        # Corresponds to the JSON property `integration`
        # @return [String]
        attr_accessor :integration
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @integration = args[:integration] if args.key?(:integration)
        end
      end
      
      # Lineage enablement configuration. Defines configurations for the ingestion of
      # lineage for the resource and its children.
      class GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRuleLineageEnablement
        include Google::Apis::Core::Hashable
      
        # Optional. If true, ingestion of lineage should be enabled. If false, it should
        # be disabled. If unspecified, the system default value is used.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
        end
      end
      
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
      
        # Optional. The maximum number of processes to return in a single page of the
        # response. A page may contain fewer results than this value.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # Optional. The page token received from a previous `BatchSearchLinkProcesses`
        # call. Use it to get the next page. When requesting subsequent pages of a
        # response, remember that all parameters must match the values you provided in
        # the original request.
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
      
      # Dependency info describes how one entity depends on another.
      class GoogleCloudDatacatalogLineageV1DependencyInfo
        include Google::Apis::Core::Hashable
      
        # Required. Type of dependency.
        # Corresponds to the JSON property `dependencyType`
        # @return [String]
        attr_accessor :dependency_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dependency_type = args[:dependency_type] if args.key?(:dependency_type)
        end
      end
      
      # The soft reference to everything you can attach a lineage event to.
      class GoogleCloudDatacatalogLineageV1EntityReference
        include Google::Apis::Core::Hashable
      
        # Optional. Field path within the entity. Each nesting level should be a
        # separate value in the repeated field. The order matters. Must be empty for
        # asset level lineage For example to address "salary.net" subfield where "salary"
        # is a column and "net" is a proto field two values in the `field` should be
        # reported, the first is "salary" and the second is "net". Each field length is
        # limited to 500 characters. Maximum supported nesting level is 20.
        # Corresponds to the JSON property `field`
        # @return [Array<String>]
        attr_accessor :field
      
        # Required. [Fully Qualified Name (FQN)](https://cloud.google.com/dataplex/docs/
        # fully-qualified-names) of the entity.
        # Corresponds to the JSON property `fullyQualifiedName`
        # @return [String]
        attr_accessor :fully_qualified_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field = args[:field] if args.key?(:field)
          @fully_qualified_name = args[:fully_qualified_name] if args.key?(:fully_qualified_name)
        end
      end
      
      # A lineage between source and target entities.
      class GoogleCloudDatacatalogLineageV1EventLink
        include Google::Apis::Core::Hashable
      
        # Dependency info describes how one entity depends on another.
        # Corresponds to the JSON property `dependencyInfo`
        # @return [Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1DependencyInfo]
        attr_accessor :dependency_info
      
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
          @dependency_info = args[:dependency_info] if args.key?(:dependency_info)
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
      
        # Required. The beginning of the transformation which resulted in this lineage
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
      
      # Lineage link between two entities.
      class GoogleCloudDatacatalogLineageV1LineageLink
        include Google::Apis::Core::Hashable
      
        # Describes how the target entity is dependent on the source entity.
        # Corresponds to the JSON property `dependencyInfo`
        # @return [Array<Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1LineageLinkDependencyInfo>]
        attr_accessor :dependency_info
      
        # Depth of the current link in the graph starting from 1.
        # Corresponds to the JSON property `depth`
        # @return [Fixnum]
        attr_accessor :depth
      
        # The location where the LineageEvent that created the link is stored.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Processes metadata associated with the link.
        # Corresponds to the JSON property `processes`
        # @return [Array<Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1LineageLinkLineageProcess>]
        attr_accessor :processes
      
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
          @dependency_info = args[:dependency_info] if args.key?(:dependency_info)
          @depth = args[:depth] if args.key?(:depth)
          @location = args[:location] if args.key?(:location)
          @processes = args[:processes] if args.key?(:processes)
          @source = args[:source] if args.key?(:source)
          @target = args[:target] if args.key?(:target)
        end
      end
      
      # Dependency info describes how one entity is dependent on another.
      class GoogleCloudDatacatalogLineageV1LineageLinkDependencyInfo
        include Google::Apis::Core::Hashable
      
        # The type of dependency.
        # Corresponds to the JSON property `dependencyType`
        # @return [String]
        attr_accessor :dependency_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dependency_type = args[:dependency_type] if args.key?(:dependency_type)
        end
      end
      
      # Process metadata for the link.
      class GoogleCloudDatacatalogLineageV1LineageLinkLineageProcess
        include Google::Apis::Core::Hashable
      
        # A process is the definition of a data transformation operation.
        # Corresponds to the JSON property `process`
        # @return [Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1Process]
        attr_accessor :process
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @process = args[:process] if args.key?(:process)
        end
      end
      
      # Links represent the data flow between **source** (upstream) and **target** (
      # downstream) assets in transformation pipelines. Links are created when
      # LineageEvents record data transformation between related assets.
      class GoogleCloudDatacatalogLineageV1Link
        include Google::Apis::Core::Hashable
      
        # Optional. The dependency info of the link (applies only to column level links).
        # Corresponds to the JSON property `dependencyInfo`
        # @return [Array<Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1LinkDependencyInfo>]
        attr_accessor :dependency_info
      
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
          @dependency_info = args[:dependency_info] if args.key?(:dependency_info)
          @end_time = args[:end_time] if args.key?(:end_time)
          @name = args[:name] if args.key?(:name)
          @source = args[:source] if args.key?(:source)
          @start_time = args[:start_time] if args.key?(:start_time)
          @target = args[:target] if args.key?(:target)
        end
      end
      
      # Dependency info describes how one entity depends on another.
      class GoogleCloudDatacatalogLineageV1LinkDependencyInfo
        include Google::Apis::Core::Hashable
      
        # The type of dependency.
        # Corresponds to the JSON property `dependencyType`
        # @return [String]
        attr_accessor :dependency_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dependency_type = args[:dependency_type] if args.key?(:dependency_type)
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
      
      # Multiple entity reference for SearchLinksRequest.
      class GoogleCloudDatacatalogLineageV1MultipleEntityReference
        include Google::Apis::Core::Hashable
      
        # Optional. The list of entities to search for links. The maximum number of
        # entities is 20.
        # Corresponds to the JSON property `entities`
        # @return [Array<Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1EntityReference>]
        attr_accessor :entities
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entities = args[:entities] if args.key?(:entities)
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
      
        # If the source_type isn't CUSTOM, the value of this field should be a Google
        # Cloud resource name of the system, which reports lineage. The project and
        # location parts of the resource name must match the project and location of the
        # lineage resource being created. Examples: - ``source_type: COMPOSER, name: "
        # projects/foo/locations/us/environments/bar"`` - ``source_type: BIGQUERY, name:
        # "projects/foo/locations/eu"`` - ``source_type: CUSTOM, name: "
        # myCustomIntegration"``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Type of the source. Use of a source_type other than `CUSTOM` for process
        # creation or updating is highly discouraged. It might be restricted in the
        # future without notice. There will be increase in cost if you use any of the
        # source types other than `CUSTOM`.
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
      
      # Response message for ProcessOpenLineageRunEvent.
      class GoogleCloudDatacatalogLineageV1ProcessOpenLineageRunEventResponse
        include Google::Apis::Core::Hashable
      
        # Created lineage event names. Format: `projects/`project`/locations/`location`/
        # processes/`process`/runs/`run`/lineageEvents/`lineage_event``.
        # Corresponds to the JSON property `lineageEvents`
        # @return [Array<String>]
        attr_accessor :lineage_events
      
        # Created process name. Format: `projects/`project`/locations/`location`/
        # processes/`process``.
        # Corresponds to the JSON property `process`
        # @return [String]
        attr_accessor :process
      
        # Created run name. Format: `projects/`project`/locations/`location`/processes/`
        # process`/runs/`run``.
        # Corresponds to the JSON property `run`
        # @return [String]
        attr_accessor :run
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @lineage_events = args[:lineage_events] if args.key?(:lineage_events)
          @process = args[:process] if args.key?(:process)
          @run = args[:run] if args.key?(:run)
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
        # Must be not longer than 200 characters and only contain UTF-8 letters or
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
      
      # Request message for SearchLineageStreaming.
      class GoogleCloudDatacatalogLineageV1SearchLineageStreamingRequest
        include Google::Apis::Core::Hashable
      
        # Required. Direction of the search.
        # Corresponds to the JSON property `direction`
        # @return [String]
        attr_accessor :direction
      
        # Filters for the search.
        # Corresponds to the JSON property `filters`
        # @return [Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1SearchLineageStreamingRequestSearchFilters]
        attr_accessor :filters
      
        # Limits for the search results.
        # Corresponds to the JSON property `limits`
        # @return [Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1SearchLineageStreamingRequestSearchLimits]
        attr_accessor :limits
      
        # Required. The locations to search in.
        # Corresponds to the JSON property `locations`
        # @return [Array<String>]
        attr_accessor :locations
      
        # Criteria for the root of the search.
        # Corresponds to the JSON property `rootCriteria`
        # @return [Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1SearchLineageStreamingRequestRootCriteria]
        attr_accessor :root_criteria
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @direction = args[:direction] if args.key?(:direction)
          @filters = args[:filters] if args.key?(:filters)
          @limits = args[:limits] if args.key?(:limits)
          @locations = args[:locations] if args.key?(:locations)
          @root_criteria = args[:root_criteria] if args.key?(:root_criteria)
        end
      end
      
      # Criteria for the root of the search.
      class GoogleCloudDatacatalogLineageV1SearchLineageStreamingRequestRootCriteria
        include Google::Apis::Core::Hashable
      
        # Multiple entity reference for SearchLinksRequest.
        # Corresponds to the JSON property `entities`
        # @return [Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1MultipleEntityReference]
        attr_accessor :entities
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entities = args[:entities] if args.key?(:entities)
        end
      end
      
      # Filters for the search.
      class GoogleCloudDatacatalogLineageV1SearchLineageStreamingRequestSearchFilters
        include Google::Apis::Core::Hashable
      
        # Optional. Types of dependencies between entities to retrieve. If unspecified,
        # all dependency types are returned.
        # Corresponds to the JSON property `dependencyTypes`
        # @return [Array<String>]
        attr_accessor :dependency_types
      
        # Optional. Entity set restriction. If unspecified, the method returns all
        # entities.
        # Corresponds to the JSON property `entitySet`
        # @return [String]
        attr_accessor :entity_set
      
        # Represents a time interval, encoded as a Timestamp start (inclusive) and a
        # Timestamp end (exclusive). The start must be less than or equal to the end.
        # When the start equals the end, the interval is empty (matches no time). When
        # both start and end are unspecified, the interval matches any time.
        # Corresponds to the JSON property `timeRange`
        # @return [Google::Apis::DatalineageV1::GoogleTypeInterval]
        attr_accessor :time_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dependency_types = args[:dependency_types] if args.key?(:dependency_types)
          @entity_set = args[:entity_set] if args.key?(:entity_set)
          @time_range = args[:time_range] if args.key?(:time_range)
        end
      end
      
      # Limits for the search results.
      class GoogleCloudDatacatalogLineageV1SearchLineageStreamingRequestSearchLimits
        include Google::Apis::Core::Hashable
      
        # Optional. The maximum depth of the search. The default value is 5 and maximum
        # value is 100.
        # Corresponds to the JSON property `maxDepth`
        # @return [Fixnum]
        attr_accessor :max_depth
      
        # Optional. The maximum number of processes to return per link. The default
        # value is 0 and the maximum value is 100. If this value is non-zero, the
        # response will contain process names for the links. To retrieve full process
        # details in the response, include `links.processes.process` in the [FieldMask](
        # https://developers.google.com/workspace/docs/api/how-tos/field-masks#
        # read_with_a_field_mask).
        # Corresponds to the JSON property `maxProcessPerLink`
        # @return [Fixnum]
        attr_accessor :max_process_per_link
      
        # Optional. The maximum number of links to return in the response. The default
        # value is 1_000 and the maximum value is 10_000.
        # Corresponds to the JSON property `maxResults`
        # @return [Fixnum]
        attr_accessor :max_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_depth = args[:max_depth] if args.key?(:max_depth)
          @max_process_per_link = args[:max_process_per_link] if args.key?(:max_process_per_link)
          @max_results = args[:max_results] if args.key?(:max_results)
        end
      end
      
      # Response message for SearchLineageStreaming.
      class GoogleCloudDatacatalogLineageV1SearchLineageStreamingResponse
        include Google::Apis::Core::Hashable
      
        # Output only. The lineage links that match the search criteria. Can be empty if
        # no links match.
        # Corresponds to the JSON property `links`
        # @return [Array<Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1LineageLink>]
        attr_accessor :links
      
        # Unordered list. Unreachable resources. If non-empty, the result set might be
        # incomplete. Currently, only locations are supported. Format: `projects/[
        # PROJECT_NUMBER]/locations/[LOCATION]` Example: projects/123456789/locations/us-
        # east1
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @links = args[:links] if args.key?(:links)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
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
      
        # Multiple entity reference for SearchLinksRequest.
        # Corresponds to the JSON property `sources`
        # @return [Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1MultipleEntityReference]
        attr_accessor :sources
      
        # The soft reference to everything you can attach a lineage event to.
        # Corresponds to the JSON property `target`
        # @return [Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1EntityReference]
        attr_accessor :target
      
        # Multiple entity reference for SearchLinksRequest.
        # Corresponds to the JSON property `targets`
        # @return [Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1MultipleEntityReference]
        attr_accessor :targets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @source = args[:source] if args.key?(:source)
          @sources = args[:sources] if args.key?(:sources)
          @target = args[:target] if args.key?(:target)
          @targets = args[:targets] if args.key?(:targets)
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
      
        # Unordered list. Unreachable resources. Populated when the request sets `
        # ListOperationsRequest.return_partial_success` and reads across collections.
        # For example, when attempting to list all resources across all supported
        # locations.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
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
      
        # The normal, successful response of the operation. If the original method
        # returns no data on success, such as `Delete`, the response is `google.protobuf.
        # Empty`. If the original method is standard `Get`/`Create`/`Update`, the
        # response should be the resource. For other methods, the response should have
        # the type `XxxResponse`, where `Xxx` is the original method name. For example,
        # if the original method name is `TakeSnapshot()`, the inferred response type is
        # `TakeSnapshotResponse`.
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
      
      # Represents a time interval, encoded as a Timestamp start (inclusive) and a
      # Timestamp end (exclusive). The start must be less than or equal to the end.
      # When the start equals the end, the interval is empty (matches no time). When
      # both start and end are unspecified, the interval matches any time.
      class GoogleTypeInterval
        include Google::Apis::Core::Hashable
      
        # Optional. Exclusive end of the interval. If specified, a Timestamp matching
        # this interval will have to be before the end.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Optional. Inclusive start of the interval. If specified, a Timestamp matching
        # this interval will have to be the same or after the start.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
    end
  end
end
