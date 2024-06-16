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
      
      # Message describing ApiObservation object
      class ApiObservation
        include Google::Apis::Core::Hashable
      
        # The number of observed API Operations.
        # Corresponds to the JSON property `apiOperationCount`
        # @return [Fixnum]
        attr_accessor :api_operation_count
      
        # Create time stamp
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The hostname of requests processed for this Observation.
        # Corresponds to the JSON property `hostname`
        # @return [String]
        attr_accessor :hostname
      
        # Last event detected time stamp
        # Corresponds to the JSON property `lastEventDetectedTime`
        # @return [String]
        attr_accessor :last_event_detected_time
      
        # Identifier. Name of resource
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The IP address (IPv4 or IPv6) of the origin server that the request was sent
        # to. This field can include port information. Examples: `"192.168.1.1"`, `"10.0.
        # 0.1:80"`, `"FE80::0202:B3FF:FE1E:8329"`.
        # Corresponds to the JSON property `serverIps`
        # @return [Array<String>]
        attr_accessor :server_ips
      
        # Location of the Observation Source, for example "us-central1" or "europe-west1.
        # "
        # Corresponds to the JSON property `sourceLocations`
        # @return [Array<String>]
        attr_accessor :source_locations
      
        # Style of ApiObservation
        # Corresponds to the JSON property `style`
        # @return [String]
        attr_accessor :style
      
        # User-defined tags to organize and sort
        # Corresponds to the JSON property `tags`
        # @return [Array<String>]
        attr_accessor :tags
      
        # Update time stamp
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_operation_count = args[:api_operation_count] if args.key?(:api_operation_count)
          @create_time = args[:create_time] if args.key?(:create_time)
          @hostname = args[:hostname] if args.key?(:hostname)
          @last_event_detected_time = args[:last_event_detected_time] if args.key?(:last_event_detected_time)
          @name = args[:name] if args.key?(:name)
          @server_ips = args[:server_ips] if args.key?(:server_ips)
          @source_locations = args[:source_locations] if args.key?(:source_locations)
          @style = args[:style] if args.key?(:style)
          @tags = args[:tags] if args.key?(:tags)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Message describing ApiOperation object
      class ApiOperation
        include Google::Apis::Core::Hashable
      
        # The number of occurrences of this API Operation.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # First seen time stamp
        # Corresponds to the JSON property `firstSeenTime`
        # @return [String]
        attr_accessor :first_seen_time
      
        # An HTTP-based API Operation, sometimes called a "REST" Operation.
        # Corresponds to the JSON property `httpOperation`
        # @return [Google::Apis::ApimV1alpha::HttpOperation]
        attr_accessor :http_operation
      
        # Last seen time stamp
        # Corresponds to the JSON property `lastSeenTime`
        # @return [String]
        attr_accessor :last_seen_time
      
        # Identifier. Name of resource
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @first_seen_time = args[:first_seen_time] if args.key?(:first_seen_time)
          @http_operation = args[:http_operation] if args.key?(:http_operation)
          @last_seen_time = args[:last_seen_time] if args.key?(:last_seen_time)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # The request message for Operations.CancelOperation.
      class CancelOperationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Message for disabling an ObservationJob
      class DisableObservationJobRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
      
      # Message for enabling an ObservationJob
      class EnableObservationJobRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The GCLB observation source.
      class GclbObservationSource
        include Google::Apis::Core::Hashable
      
        # Required. The VPC networks where traffic will be observed. All load balancers
        # within this network will be observed. Currently, this is limited to only one
        # network.
        # Corresponds to the JSON property `pscNetworkConfigs`
        # @return [Array<Google::Apis::ApimV1alpha::GclbObservationSourcePscNetworkConfig>]
        attr_accessor :psc_network_configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @psc_network_configs = args[:psc_network_configs] if args.key?(:psc_network_configs)
        end
      end
      
      # Network information for setting up a PSC connection.
      class GclbObservationSourcePscNetworkConfig
        include Google::Apis::Core::Hashable
      
        # Required. The VPC network. Format: `projects/`project_id`/global/networks/`
        # network``
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Required. The subnetwork in the source region that will be used to connect to
        # the Cloud Load Balancers via PSC NEGs. Must belong to `network`. Format:
        # projects/`project_id`/regions/`region`/subnetworks/`subnet`
        # Corresponds to the JSON property `subnetwork`
        # @return [String]
        attr_accessor :subnetwork
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @network = args[:network] if args.key?(:network)
          @subnetwork = args[:subnetwork] if args.key?(:subnetwork)
        end
      end
      
      # An HTTP-based API Operation, sometimes called a "REST" Operation.
      class HttpOperation
        include Google::Apis::Core::Hashable
      
        # HTTP Method.
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        # Path of the HTTP request.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # Path params of HttpOperation
        # Corresponds to the JSON property `pathParams`
        # @return [Array<Google::Apis::ApimV1alpha::HttpOperationPathParam>]
        attr_accessor :path_params
      
        # Query params of HttpOperation
        # Corresponds to the JSON property `queryParams`
        # @return [Hash<String,Google::Apis::ApimV1alpha::HttpOperationQueryParam>]
        attr_accessor :query_params
      
        # An aggregation of HTTP requests.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ApimV1alpha::HttpOperationHttpRequest]
        attr_accessor :request
      
        # An aggregation of HTTP responses.
        # Corresponds to the JSON property `response`
        # @return [Google::Apis::ApimV1alpha::HttpOperationHttpResponse]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
          @path = args[:path] if args.key?(:path)
          @path_params = args[:path_params] if args.key?(:path_params)
          @query_params = args[:query_params] if args.key?(:query_params)
          @request = args[:request] if args.key?(:request)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # An aggregation of HTTP header occurrences.
      class HttpOperationHeader
        include Google::Apis::Core::Hashable
      
        # The number of occurrences of this Header across transactions.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # Data type of header
        # Corresponds to the JSON property `dataType`
        # @return [String]
        attr_accessor :data_type
      
        # Header name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @data_type = args[:data_type] if args.key?(:data_type)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # An aggregation of HTTP requests.
      class HttpOperationHttpRequest
        include Google::Apis::Core::Hashable
      
        # Unordered map from header name to header metadata
        # Corresponds to the JSON property `headers`
        # @return [Hash<String,Google::Apis::ApimV1alpha::HttpOperationHeader>]
        attr_accessor :headers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @headers = args[:headers] if args.key?(:headers)
        end
      end
      
      # An aggregation of HTTP responses.
      class HttpOperationHttpResponse
        include Google::Apis::Core::Hashable
      
        # Unordered map from header name to header metadata
        # Corresponds to the JSON property `headers`
        # @return [Hash<String,Google::Apis::ApimV1alpha::HttpOperationHeader>]
        attr_accessor :headers
      
        # Map of status code to observed count
        # Corresponds to the JSON property `responseCodes`
        # @return [Hash<String,Fixnum>]
        attr_accessor :response_codes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @headers = args[:headers] if args.key?(:headers)
          @response_codes = args[:response_codes] if args.key?(:response_codes)
        end
      end
      
      # HTTP Path parameter.
      class HttpOperationPathParam
        include Google::Apis::Core::Hashable
      
        # Data type of path param
        # Corresponds to the JSON property `dataType`
        # @return [String]
        attr_accessor :data_type
      
        # Segment location in the path, 1-indexed
        # Corresponds to the JSON property `position`
        # @return [Fixnum]
        attr_accessor :position
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_type = args[:data_type] if args.key?(:data_type)
          @position = args[:position] if args.key?(:position)
        end
      end
      
      # An aggregation of HTTP query parameter occurrences.
      class HttpOperationQueryParam
        include Google::Apis::Core::Hashable
      
        # The number of occurrences of this query parameter across transactions.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # Data type of path param
        # Corresponds to the JSON property `dataType`
        # @return [String]
        attr_accessor :data_type
      
        # Name of query param
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @data_type = args[:data_type] if args.key?(:data_type)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Message for response to listing ApiObservations
      class ListApiObservationsResponse
        include Google::Apis::Core::Hashable
      
        # The ApiObservation from the specified project and location and ObservationJobs.
        # Corresponds to the JSON property `apiObservations`
        # @return [Array<Google::Apis::ApimV1alpha::ApiObservation>]
        attr_accessor :api_observations
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_observations = args[:api_observations] if args.key?(:api_observations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Message for response to listing ApiOperations
      class ListApiOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The ApiOperations from the specified project and location and ObservationJob
        # and ApiObservation.
        # Corresponds to the JSON property `apiOperations`
        # @return [Array<Google::Apis::ApimV1alpha::ApiOperation>]
        attr_accessor :api_operations
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_operations = args[:api_operations] if args.key?(:api_operations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::ApimV1alpha::Location>]
        attr_accessor :locations
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locations = args[:locations] if args.key?(:locations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Message for response to listing ObservationJobs
      class ListObservationJobsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The ObservationJob from the specified project and location.
        # Corresponds to the JSON property `observationJobs`
        # @return [Array<Google::Apis::ApimV1alpha::ObservationJob>]
        attr_accessor :observation_jobs
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @observation_jobs = args[:observation_jobs] if args.key?(:observation_jobs)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Message for response to listing ObservationSources
      class ListObservationSourcesResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The ObservationSource from the specified project and location.
        # Corresponds to the JSON property `observationSources`
        # @return [Array<Google::Apis::ApimV1alpha::ObservationSource>]
        attr_accessor :observation_sources
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @observation_sources = args[:observation_sources] if args.key?(:observation_sources)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Operations.ListOperations.
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::ApimV1alpha::Operation>]
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
      
      # A resource that represents a Google Cloud location.
      class Location
        include Google::Apis::Core::Hashable
      
        # The friendly name for this location, typically a nearby city name. For example,
        # "Tokyo".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Cross-service attributes for the location. For example `"cloud.googleapis.com/
        # region": "us-east1"`
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The canonical id for this location. For example: `"us-east1"`.
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        # Service-specific metadata. For example the available capacity at the given
        # location.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # Resource name for the location, which may vary between implementations. For
        # example: `"projects/example-project/locations/us-east1"`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @location_id = args[:location_id] if args.key?(:location_id)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Message describing ObservationJob object
      class ObservationJob
        include Google::Apis::Core::Hashable
      
        # Output only. [Output only] Create time stamp
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Identifier. name of resource Format: projects/`project`/locations/`location`/
        # observationJobs/`observation_job`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. These should be of the same kind of source.
        # Corresponds to the JSON property `sources`
        # @return [Array<String>]
        attr_accessor :sources
      
        # Output only. The observation job state
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. [Output only] Update time stamp
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @name = args[:name] if args.key?(:name)
          @sources = args[:sources] if args.key?(:sources)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Observation source configuration types
      class ObservationSource
        include Google::Apis::Core::Hashable
      
        # Output only. [Output only] Create time stamp
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The GCLB observation source.
        # Corresponds to the JSON property `gclbObservationSource`
        # @return [Google::Apis::ApimV1alpha::GclbObservationSource]
        attr_accessor :gclb_observation_source
      
        # Identifier. name of resource For MVP, each region can only have 1 source.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The observation source state
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. [Output only] Update time stamp
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @gclb_observation_source = args[:gclb_observation_source] if args.key?(:gclb_observation_source)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
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
        # @return [Google::Apis::ApimV1alpha::Status]
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
      
      # Represents the metadata of the long-running operation.
      class OperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. API version used to start the operation.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Identifies whether the user has requested cancellation of the
        # operation. Operations that have been cancelled successfully have Operation.
        # error value with a google.rpc.Status.code of 1, corresponding to `Code.
        # CANCELLED`.
        # Corresponds to the JSON property `requestedCancellation`
        # @return [Boolean]
        attr_accessor :requested_cancellation
        alias_method :requested_cancellation?, :requested_cancellation
      
        # Output only. Human-readable status of the operation, if any.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # Output only. Server-defined resource path for the target of the operation.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # Output only. Name of the verb executed by the operation.
        # Corresponds to the JSON property `verb`
        # @return [String]
        attr_accessor :verb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_version = args[:api_version] if args.key?(:api_version)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @requested_cancellation = args[:requested_cancellation] if args.key?(:requested_cancellation)
          @status_message = args[:status_message] if args.key?(:status_message)
          @target = args[:target] if args.key?(:target)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class Status
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
