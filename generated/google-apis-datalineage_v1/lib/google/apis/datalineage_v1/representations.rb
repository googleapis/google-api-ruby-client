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
      
      class GoogleCloudDatacatalogLineageConfigmanagementV1Config
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRuleIntegrationSelector
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRuleLineageEnablement
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogLineageV1DependencyInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogLineageV1EntityReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogLineageV1EventLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogLineageV1LineageEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogLineageV1LineageLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogLineageV1LineageLinkDependencyInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogLineageV1LineageLinkLineageProcess
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogLineageV1Link
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogLineageV1LinkDependencyInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogLineageV1ListLineageEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogLineageV1ListProcessesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogLineageV1ListRunsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogLineageV1MultipleEntityReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogLineageV1OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogLineageV1Origin
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogLineageV1Process
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogLineageV1ProcessLinkInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogLineageV1ProcessLinks
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogLineageV1ProcessOpenLineageRunEventResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogLineageV1Run
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogLineageV1SearchLineageStreamingRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogLineageV1SearchLineageStreamingRequestRootCriteria
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogLineageV1SearchLineageStreamingRequestSearchFilters
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogLineageV1SearchLineageStreamingRequestSearchLimits
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogLineageV1SearchLineageStreamingResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogLineageV1SearchLinksRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogLineageV1SearchLinksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningCancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningOperation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleProtobufEmpty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleRpcStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeInterval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogLineageConfigmanagementV1Config
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :ingestion, as: 'ingestion', class: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestion, decorator: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestion::Representation
      
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :rules, as: 'rules', class: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRule, decorator: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRule::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :integration_selector, as: 'integrationSelector', class: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRuleIntegrationSelector, decorator: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRuleIntegrationSelector::Representation
      
          property :lineage_enablement, as: 'lineageEnablement', class: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRuleLineageEnablement, decorator: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRuleLineageEnablement::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRuleIntegrationSelector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :integration, as: 'integration'
        end
      end
      
      class GoogleCloudDatacatalogLineageConfigmanagementV1ConfigIngestionIngestionRuleLineageEnablement
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class GoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :links, as: 'links'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
        end
      end
      
      class GoogleCloudDatacatalogLineageV1BatchSearchLinkProcessesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :process_links, as: 'processLinks', class: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1ProcessLinks, decorator: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1ProcessLinks::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogLineageV1DependencyInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dependency_type, as: 'dependencyType'
        end
      end
      
      class GoogleCloudDatacatalogLineageV1EntityReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :field, as: 'field'
          property :fully_qualified_name, as: 'fullyQualifiedName'
        end
      end
      
      class GoogleCloudDatacatalogLineageV1EventLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dependency_info, as: 'dependencyInfo', class: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1DependencyInfo, decorator: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1DependencyInfo::Representation
      
          property :source, as: 'source', class: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1EntityReference, decorator: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1EntityReference::Representation
      
          property :target, as: 'target', class: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1EntityReference, decorator: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1EntityReference::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogLineageV1LineageEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          collection :links, as: 'links', class: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1EventLink, decorator: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1EventLink::Representation
      
          property :name, as: 'name'
          property :start_time, as: 'startTime'
        end
      end
      
      class GoogleCloudDatacatalogLineageV1LineageLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dependency_info, as: 'dependencyInfo', class: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1LineageLinkDependencyInfo, decorator: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1LineageLinkDependencyInfo::Representation
      
          property :depth, as: 'depth'
          property :location, as: 'location'
          collection :processes, as: 'processes', class: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1LineageLinkLineageProcess, decorator: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1LineageLinkLineageProcess::Representation
      
          property :source, as: 'source', class: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1EntityReference, decorator: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1EntityReference::Representation
      
          property :target, as: 'target', class: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1EntityReference, decorator: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1EntityReference::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogLineageV1LineageLinkDependencyInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dependency_type, as: 'dependencyType'
        end
      end
      
      class GoogleCloudDatacatalogLineageV1LineageLinkLineageProcess
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :process, as: 'process', class: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1Process, decorator: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1Process::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogLineageV1Link
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dependency_info, as: 'dependencyInfo', class: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1LinkDependencyInfo, decorator: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1LinkDependencyInfo::Representation
      
          property :end_time, as: 'endTime'
          property :name, as: 'name'
          property :source, as: 'source', class: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1EntityReference, decorator: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1EntityReference::Representation
      
          property :start_time, as: 'startTime'
          property :target, as: 'target', class: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1EntityReference, decorator: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1EntityReference::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogLineageV1LinkDependencyInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dependency_type, as: 'dependencyType'
        end
      end
      
      class GoogleCloudDatacatalogLineageV1ListLineageEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :lineage_events, as: 'lineageEvents', class: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1LineageEvent, decorator: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1LineageEvent::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDatacatalogLineageV1ListProcessesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :processes, as: 'processes', class: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1Process, decorator: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1Process::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogLineageV1ListRunsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :runs, as: 'runs', class: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1Run, decorator: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1Run::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogLineageV1MultipleEntityReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entities, as: 'entities', class: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1EntityReference, decorator: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1EntityReference::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogLineageV1OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :operation_type, as: 'operationType'
          property :resource, as: 'resource'
          property :resource_uuid, as: 'resourceUuid'
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDatacatalogLineageV1Origin
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :source_type, as: 'sourceType'
        end
      end
      
      class GoogleCloudDatacatalogLineageV1Process
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attributes, as: 'attributes'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :origin, as: 'origin', class: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1Origin, decorator: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1Origin::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogLineageV1ProcessLinkInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :link, as: 'link'
          property :start_time, as: 'startTime'
        end
      end
      
      class GoogleCloudDatacatalogLineageV1ProcessLinks
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :links, as: 'links', class: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1ProcessLinkInfo, decorator: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1ProcessLinkInfo::Representation
      
          property :process, as: 'process'
        end
      end
      
      class GoogleCloudDatacatalogLineageV1ProcessOpenLineageRunEventResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :lineage_events, as: 'lineageEvents'
          property :process, as: 'process'
          property :run, as: 'run'
        end
      end
      
      class GoogleCloudDatacatalogLineageV1Run
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attributes, as: 'attributes'
          property :display_name, as: 'displayName'
          property :end_time, as: 'endTime'
          property :name, as: 'name'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDatacatalogLineageV1SearchLineageStreamingRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :direction, as: 'direction'
          property :filters, as: 'filters', class: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1SearchLineageStreamingRequestSearchFilters, decorator: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1SearchLineageStreamingRequestSearchFilters::Representation
      
          property :limits, as: 'limits', class: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1SearchLineageStreamingRequestSearchLimits, decorator: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1SearchLineageStreamingRequestSearchLimits::Representation
      
          collection :locations, as: 'locations'
          property :root_criteria, as: 'rootCriteria', class: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1SearchLineageStreamingRequestRootCriteria, decorator: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1SearchLineageStreamingRequestRootCriteria::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogLineageV1SearchLineageStreamingRequestRootCriteria
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entities, as: 'entities', class: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1MultipleEntityReference, decorator: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1MultipleEntityReference::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogLineageV1SearchLineageStreamingRequestSearchFilters
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dependency_types, as: 'dependencyTypes'
          property :entity_set, as: 'entitySet'
          property :time_range, as: 'timeRange', class: Google::Apis::DatalineageV1::GoogleTypeInterval, decorator: Google::Apis::DatalineageV1::GoogleTypeInterval::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogLineageV1SearchLineageStreamingRequestSearchLimits
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_depth, as: 'maxDepth'
          property :max_process_per_link, as: 'maxProcessPerLink'
          property :max_results, as: 'maxResults'
        end
      end
      
      class GoogleCloudDatacatalogLineageV1SearchLineageStreamingResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :links, as: 'links', class: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1LineageLink, decorator: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1LineageLink::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class GoogleCloudDatacatalogLineageV1SearchLinksRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          property :source, as: 'source', class: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1EntityReference, decorator: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1EntityReference::Representation
      
          property :sources, as: 'sources', class: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1MultipleEntityReference, decorator: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1MultipleEntityReference::Representation
      
          property :target, as: 'target', class: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1EntityReference, decorator: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1EntityReference::Representation
      
          property :targets, as: 'targets', class: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1MultipleEntityReference, decorator: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1MultipleEntityReference::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogLineageV1SearchLinksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :links, as: 'links', class: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1Link, decorator: Google::Apis::DatalineageV1::GoogleCloudDatacatalogLineageV1Link::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleLongrunningCancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleLongrunningListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::DatalineageV1::GoogleLongrunningOperation, decorator: Google::Apis::DatalineageV1::GoogleLongrunningOperation::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class GoogleLongrunningOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::DatalineageV1::GoogleRpcStatus, decorator: Google::Apis::DatalineageV1::GoogleRpcStatus::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class GoogleProtobufEmpty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleRpcStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class GoogleTypeInterval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
    end
  end
end
