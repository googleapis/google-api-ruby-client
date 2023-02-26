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
    module VpcaccessV1
      
      # Definition of a Serverless VPC Access connector.
      class Connector
        include Google::Apis::Core::Hashable
      
        # Output only. List of projects using the connector.
        # Corresponds to the JSON property `connectedProjects`
        # @return [Array<String>]
        attr_accessor :connected_projects
      
        # The range of internal addresses that follows RFC 4632 notation. Example: `10.
        # 132.0.0/28`.
        # Corresponds to the JSON property `ipCidrRange`
        # @return [String]
        attr_accessor :ip_cidr_range
      
        # Machine type of VM Instance underlying connector. Default is e2-micro
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        # Maximum value of instances in autoscaling group underlying the connector.
        # Corresponds to the JSON property `maxInstances`
        # @return [Fixnum]
        attr_accessor :max_instances
      
        # Maximum throughput of the connector in Mbps. Default is 300, max is 1000.
        # Corresponds to the JSON property `maxThroughput`
        # @return [Fixnum]
        attr_accessor :max_throughput
      
        # Minimum value of instances in autoscaling group underlying the connector.
        # Corresponds to the JSON property `minInstances`
        # @return [Fixnum]
        attr_accessor :min_instances
      
        # Minimum throughput of the connector in Mbps. Default and min is 200.
        # Corresponds to the JSON property `minThroughput`
        # @return [Fixnum]
        attr_accessor :min_throughput
      
        # The resource name in the format `projects/*/locations/*/connectors/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Name of a VPC network.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Output only. State of the VPC access connector.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # The subnet in which to house the connector
        # Corresponds to the JSON property `subnet`
        # @return [Google::Apis::VpcaccessV1::Subnet]
        attr_accessor :subnet
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connected_projects = args[:connected_projects] if args.key?(:connected_projects)
          @ip_cidr_range = args[:ip_cidr_range] if args.key?(:ip_cidr_range)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
          @max_instances = args[:max_instances] if args.key?(:max_instances)
          @max_throughput = args[:max_throughput] if args.key?(:max_throughput)
          @min_instances = args[:min_instances] if args.key?(:min_instances)
          @min_throughput = args[:min_throughput] if args.key?(:min_throughput)
          @name = args[:name] if args.key?(:name)
          @network = args[:network] if args.key?(:network)
          @state = args[:state] if args.key?(:state)
          @subnet = args[:subnet] if args.key?(:subnet)
        end
      end
      
      # Response for listing Serverless VPC Access connectors.
      class ListConnectorsResponse
        include Google::Apis::Core::Hashable
      
        # List of Serverless VPC Access connectors.
        # Corresponds to the JSON property `connectors`
        # @return [Array<Google::Apis::VpcaccessV1::Connector>]
        attr_accessor :connectors
      
        # Continuation token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connectors = args[:connectors] if args.key?(:connectors)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::VpcaccessV1::Location>]
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
      
      # The response message for Operations.ListOperations.
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::VpcaccessV1::Operation>]
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
      
      # A resource that represents Google Cloud Platform location.
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
        # @return [Google::Apis::VpcaccessV1::Status]
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
      
      # Metadata for google.longrunning.Operation.
      class OperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. Time when the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Time when the operation completed.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Method that initiated the operation e.g. google.cloud.vpcaccess.
        # v1.Connectors.CreateConnector.
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        # Output only. Name of the resource that this operation is acting on e.g.
        # projects/my-project/locations/us-central1/connectors/v1.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
          @target = args[:target] if args.key?(:target)
        end
      end
      
      # Metadata for google.longrunning.Operation.
      class OperationMetadataV1Alpha1
        include Google::Apis::Core::Hashable
      
        # Output only. Time when the operation completed.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Time when the operation was created.
        # Corresponds to the JSON property `insertTime`
        # @return [String]
        attr_accessor :insert_time
      
        # Output only. Method that initiated the operation e.g. google.cloud.vpcaccess.
        # v1alpha1.Connectors.CreateConnector.
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        # Output only. Name of the resource that this operation is acting on e.g.
        # projects/my-project/locations/us-central1/connectors/v1.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @insert_time = args[:insert_time] if args.key?(:insert_time)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
          @target = args[:target] if args.key?(:target)
        end
      end
      
      # Metadata for google.longrunning.Operation.
      class OperationMetadataV1Beta1
        include Google::Apis::Core::Hashable
      
        # Output only. Time when the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Time when the operation completed.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Method that initiated the operation e.g. google.cloud.vpcaccess.
        # v1beta1.Connectors.CreateConnector.
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        # Output only. Name of the resource that this operation is acting on e.g.
        # projects/my-project/locations/us-central1/connectors/v1.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
          @target = args[:target] if args.key?(:target)
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
      
      # The subnet in which to house the connector
      class Subnet
        include Google::Apis::Core::Hashable
      
        # Subnet name (relative, not fully qualified). E.g. if the full subnet selfLink
        # is https://compute.googleapis.com/compute/v1/projects/`project`/regions/`
        # region`/subnetworks/`subnetName` the correct input for this field would be `
        # subnetName`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Project in which the subnet exists. If not set, this project is assumed to be
        # the project for which the connector create request was issued.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @project_id = args[:project_id] if args.key?(:project_id)
        end
      end
    end
  end
end
