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
    module ApimV1alpha
      
      class ApiObservation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApiOperation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DisableObservationJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnableObservationJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GclbObservationSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GclbObservationSourcePscNetworkConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpOperation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpOperationHeader
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpOperationHttpRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpOperationHttpResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpOperationPathParam
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpOperationQueryParam
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListApiObservationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListApiOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListObservationJobsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListObservationSourcesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ObservationJob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ObservationSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApiObservation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_operation_count, :numeric_string => true, as: 'apiOperationCount'
          property :create_time, as: 'createTime'
          property :hostname, as: 'hostname'
          property :last_event_detected_time, as: 'lastEventDetectedTime'
          property :name, as: 'name'
          collection :server_ips, as: 'serverIps'
          collection :source_locations, as: 'sourceLocations'
          property :style, as: 'style'
          collection :tags, as: 'tags'
          property :update_time, as: 'updateTime'
        end
      end
      
      class ApiOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, :numeric_string => true, as: 'count'
          property :first_seen_time, as: 'firstSeenTime'
          property :http_operation, as: 'httpOperation', class: Google::Apis::ApimV1alpha::HttpOperation, decorator: Google::Apis::ApimV1alpha::HttpOperation::Representation
      
          property :last_seen_time, as: 'lastSeenTime'
          property :name, as: 'name'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class DisableObservationJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class EnableObservationJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GclbObservationSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :psc_network_configs, as: 'pscNetworkConfigs', class: Google::Apis::ApimV1alpha::GclbObservationSourcePscNetworkConfig, decorator: Google::Apis::ApimV1alpha::GclbObservationSourcePscNetworkConfig::Representation
      
        end
      end
      
      class GclbObservationSourcePscNetworkConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :network, as: 'network'
          property :subnetwork, as: 'subnetwork'
        end
      end
      
      class HttpOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :method_prop, as: 'method'
          property :path, as: 'path'
          collection :path_params, as: 'pathParams', class: Google::Apis::ApimV1alpha::HttpOperationPathParam, decorator: Google::Apis::ApimV1alpha::HttpOperationPathParam::Representation
      
          hash :query_params, as: 'queryParams', class: Google::Apis::ApimV1alpha::HttpOperationQueryParam, decorator: Google::Apis::ApimV1alpha::HttpOperationQueryParam::Representation
      
          property :request, as: 'request', class: Google::Apis::ApimV1alpha::HttpOperationHttpRequest, decorator: Google::Apis::ApimV1alpha::HttpOperationHttpRequest::Representation
      
          property :response, as: 'response', class: Google::Apis::ApimV1alpha::HttpOperationHttpResponse, decorator: Google::Apis::ApimV1alpha::HttpOperationHttpResponse::Representation
      
        end
      end
      
      class HttpOperationHeader
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, :numeric_string => true, as: 'count'
          property :data_type, as: 'dataType'
          property :name, as: 'name'
        end
      end
      
      class HttpOperationHttpRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :headers, as: 'headers', class: Google::Apis::ApimV1alpha::HttpOperationHeader, decorator: Google::Apis::ApimV1alpha::HttpOperationHeader::Representation
      
        end
      end
      
      class HttpOperationHttpResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :headers, as: 'headers', class: Google::Apis::ApimV1alpha::HttpOperationHeader, decorator: Google::Apis::ApimV1alpha::HttpOperationHeader::Representation
      
          hash :response_codes, as: 'responseCodes'
        end
      end
      
      class HttpOperationPathParam
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_type, as: 'dataType'
          property :position, as: 'position'
        end
      end
      
      class HttpOperationQueryParam
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, :numeric_string => true, as: 'count'
          property :data_type, as: 'dataType'
          property :name, as: 'name'
        end
      end
      
      class ListApiObservationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :api_observations, as: 'apiObservations', class: Google::Apis::ApimV1alpha::ApiObservation, decorator: Google::Apis::ApimV1alpha::ApiObservation::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListApiOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :api_operations, as: 'apiOperations', class: Google::Apis::ApimV1alpha::ApiOperation, decorator: Google::Apis::ApimV1alpha::ApiOperation::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::ApimV1alpha::Location, decorator: Google::Apis::ApimV1alpha::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListObservationJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :observation_jobs, as: 'observationJobs', class: Google::Apis::ApimV1alpha::ObservationJob, decorator: Google::Apis::ApimV1alpha::ObservationJob::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListObservationSourcesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :observation_sources, as: 'observationSources', class: Google::Apis::ApimV1alpha::ObservationSource, decorator: Google::Apis::ApimV1alpha::ObservationSource::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::ApimV1alpha::Operation, decorator: Google::Apis::ApimV1alpha::Operation::Representation
      
        end
      end
      
      class Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :location_id, as: 'locationId'
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
        end
      end
      
      class ObservationJob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :name, as: 'name'
          collection :sources, as: 'sources'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class ObservationSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :gclb_observation_source, as: 'gclbObservationSource', class: Google::Apis::ApimV1alpha::GclbObservationSource, decorator: Google::Apis::ApimV1alpha::GclbObservationSource::Representation
      
          property :name, as: 'name'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::ApimV1alpha::Status, decorator: Google::Apis::ApimV1alpha::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :requested_cancellation, as: 'requestedCancellation'
          property :status_message, as: 'statusMessage'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
    end
  end
end
