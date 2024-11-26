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
    module ParallelstoreV1
      
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
      
      # Cloud Storage as the destination of a data transfer.
      class DestinationGcsBucket
        include Google::Apis::Core::Hashable
      
        # Required. URI to a Cloud Storage bucket in the format: `gs:///`. The path
        # inside the bucket is optional.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Parallelstore as the destination of a data transfer.
      class DestinationParallelstore
        include Google::Apis::Core::Hashable
      
        # Optional. Root directory path to the Paralellstore filesystem, starting with `/
        # `. Defaults to `/` if unset.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @path = args[:path] if args.key?(:path)
        end
      end
      
      # Export data from Parallelstore to Cloud Storage.
      class ExportDataRequest
        include Google::Apis::Core::Hashable
      
        # Cloud Storage as the destination of a data transfer.
        # Corresponds to the JSON property `destinationGcsBucket`
        # @return [Google::Apis::ParallelstoreV1::DestinationGcsBucket]
        attr_accessor :destination_gcs_bucket
      
        # Optional. An optional request ID to identify requests. Specify a unique
        # request ID so that if you must retry your request, the server will know to
        # ignore the request if it has already been completed. The server will guarantee
        # that for at least 60 minutes since the first request. For example, consider a
        # situation where you make an initial request and t he request times out. If you
        # make the request again with the same request ID, the server can check if
        # original operation with the same request ID was received, and if so, will
        # ignore the second request. This prevents clients from accidentally creating
        # duplicate commitments. The request ID must be a valid UUID with the exception
        # that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # Optional. User-specified Service Account (SA) credentials to be used when
        # performing the transfer. Use one of the following formats: * ``
        # EMAIL_ADDRESS_OR_UNIQUE_ID`` * `projects/`PROJECT_ID_OR_NUMBER`/
        # serviceAccounts/`EMAIL_ADDRESS_OR_UNIQUE_ID`` * `projects/-/serviceAccounts/`
        # EMAIL_ADDRESS_OR_UNIQUE_ID`` If unspecified, the Parallelstore service agent
        # is used: `service-@gcp-sa-parallelstore.iam.gserviceaccount.com`
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # Parallelstore as the source of a data transfer.
        # Corresponds to the JSON property `sourceParallelstore`
        # @return [Google::Apis::ParallelstoreV1::SourceParallelstore]
        attr_accessor :source_parallelstore
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination_gcs_bucket = args[:destination_gcs_bucket] if args.key?(:destination_gcs_bucket)
          @request_id = args[:request_id] if args.key?(:request_id)
          @service_account = args[:service_account] if args.key?(:service_account)
          @source_parallelstore = args[:source_parallelstore] if args.key?(:source_parallelstore)
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
      
      # Import data from Cloud Storage into a Parallelstore instance.
      class ImportDataRequest
        include Google::Apis::Core::Hashable
      
        # Parallelstore as the destination of a data transfer.
        # Corresponds to the JSON property `destinationParallelstore`
        # @return [Google::Apis::ParallelstoreV1::DestinationParallelstore]
        attr_accessor :destination_parallelstore
      
        # Optional. An optional request ID to identify requests. Specify a unique
        # request ID so that if you must retry your request, the server will know to
        # ignore the request if it has already been completed. The server will guarantee
        # that for at least 60 minutes since the first request. For example, consider a
        # situation where you make an initial request and t he request times out. If you
        # make the request again with the same request ID, the server can check if
        # original operation with the same request ID was received, and if so, will
        # ignore the second request. This prevents clients from accidentally creating
        # duplicate commitments. The request ID must be a valid UUID with the exception
        # that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # Optional. User-specified service account credentials to be used when
        # performing the transfer. Use one of the following formats: * ``
        # EMAIL_ADDRESS_OR_UNIQUE_ID`` * `projects/`PROJECT_ID_OR_NUMBER`/
        # serviceAccounts/`EMAIL_ADDRESS_OR_UNIQUE_ID`` * `projects/-/serviceAccounts/`
        # EMAIL_ADDRESS_OR_UNIQUE_ID`` If unspecified, the Parallelstore service agent
        # is used: `service-@gcp-sa-parallelstore.iam.gserviceaccount.com`
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # Cloud Storage as the source of a data transfer.
        # Corresponds to the JSON property `sourceGcsBucket`
        # @return [Google::Apis::ParallelstoreV1::SourceGcsBucket]
        attr_accessor :source_gcs_bucket
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination_parallelstore = args[:destination_parallelstore] if args.key?(:destination_parallelstore)
          @request_id = args[:request_id] if args.key?(:request_id)
          @service_account = args[:service_account] if args.key?(:service_account)
          @source_gcs_bucket = args[:source_gcs_bucket] if args.key?(:source_gcs_bucket)
        end
      end
      
      # A Parallelstore instance.
      class Instance
        include Google::Apis::Core::Hashable
      
        # Output only. A list of IPv4 addresses used for client side configuration.
        # Corresponds to the JSON property `accessPoints`
        # @return [Array<String>]
        attr_accessor :access_points
      
        # Required. Immutable. The instance's storage capacity in Gibibytes (GiB).
        # Allowed values are between 12000 and 100000, in multiples of 4000; e.g., 12000,
        # 16000, 20000, ...
        # Corresponds to the JSON property `capacityGib`
        # @return [Fixnum]
        attr_accessor :capacity_gib
      
        # Output only. The time when the instance was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The version of DAOS software running in the instance.
        # Corresponds to the JSON property `daosVersion`
        # @return [String]
        attr_accessor :daos_version
      
        # Optional. The description of the instance. 2048 characters or less.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Stripe level for directories. Allowed values are: * `
        # DIRECTORY_STRIPE_LEVEL_MIN`: recommended when directories contain a small
        # number of files. * `DIRECTORY_STRIPE_LEVEL_BALANCED`: balances performance for
        # workloads involving a mix of small and large directories. * `
        # DIRECTORY_STRIPE_LEVEL_MAX`: recommended for directories with a large number
        # of files.
        # Corresponds to the JSON property `directoryStripeLevel`
        # @return [String]
        attr_accessor :directory_stripe_level
      
        # Output only. Immutable. The ID of the IP address range being used by the
        # instance's VPC network. This field is populated by the service and contains
        # the value currently used by the service.
        # Corresponds to the JSON property `effectiveReservedIpRange`
        # @return [String]
        attr_accessor :effective_reserved_ip_range
      
        # Optional. Stripe level for files. Allowed values are: * `FILE_STRIPE_LEVEL_MIN`
        # : offers the best performance for small size files. * `
        # FILE_STRIPE_LEVEL_BALANCED`: balances performance for workloads involving a
        # mix of small and large files. * `FILE_STRIPE_LEVEL_MAX`: higher throughput
        # performance for larger files.
        # Corresponds to the JSON property `fileStripeLevel`
        # @return [String]
        attr_accessor :file_stripe_level
      
        # Optional. Cloud Labels are a flexible and lightweight mechanism for organizing
        # cloud resources into groups that reflect a customer's organizational needs and
        # deployment strategies. See https://cloud.google.com/resource-manager/docs/
        # labels-overview for details.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Identifier. The resource name of the instance, in the format `projects/`
        # project`/locations/`location`/instances/`instance_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Immutable. The name of the Compute Engine [VPC network](https://
        # cloud.google.com/vpc/docs/vpc) to which the instance is connected.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Optional. Immutable. The ID of the IP address range being used by the instance'
        # s VPC network. See [Configure a VPC network](https://cloud.google.com/
        # parallelstore/docs/vpc#create_and_configure_the_vpc). If no ID is provided,
        # all ranges are considered.
        # Corresponds to the JSON property `reservedIpRange`
        # @return [String]
        attr_accessor :reserved_ip_range
      
        # Output only. The instance state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The time when the instance was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_points = args[:access_points] if args.key?(:access_points)
          @capacity_gib = args[:capacity_gib] if args.key?(:capacity_gib)
          @create_time = args[:create_time] if args.key?(:create_time)
          @daos_version = args[:daos_version] if args.key?(:daos_version)
          @description = args[:description] if args.key?(:description)
          @directory_stripe_level = args[:directory_stripe_level] if args.key?(:directory_stripe_level)
          @effective_reserved_ip_range = args[:effective_reserved_ip_range] if args.key?(:effective_reserved_ip_range)
          @file_stripe_level = args[:file_stripe_level] if args.key?(:file_stripe_level)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @network = args[:network] if args.key?(:network)
          @reserved_ip_range = args[:reserved_ip_range] if args.key?(:reserved_ip_range)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Response from ListInstances.
      class ListInstancesResponse
        include Google::Apis::Core::Hashable
      
        # The list of Parallelstore instances.
        # Corresponds to the JSON property `instances`
        # @return [Array<Google::Apis::ParallelstoreV1::Instance>]
        attr_accessor :instances
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instances = args[:instances] if args.key?(:instances)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::ParallelstoreV1::Location>]
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
        # @return [Array<Google::Apis::ParallelstoreV1::Operation>]
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
        # @return [Google::Apis::ParallelstoreV1::Status]
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
      
      # Long-running operation metadata.
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
      
      # Cloud Storage as the source of a data transfer.
      class SourceGcsBucket
        include Google::Apis::Core::Hashable
      
        # Required. URI to a Cloud Storage bucket in the format: `gs:///`. The path
        # inside the bucket is optional.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Parallelstore as the source of a data transfer.
      class SourceParallelstore
        include Google::Apis::Core::Hashable
      
        # Optional. Root directory path to the Paralellstore filesystem, starting with `/
        # `. Defaults to `/` if unset.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @path = args[:path] if args.key?(:path)
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
