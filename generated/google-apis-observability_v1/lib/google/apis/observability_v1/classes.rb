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
    module ObservabilityV1
      
      # Bucket configuration for storing observability data.
      class Bucket
        include Google::Apis::Core::Hashable
      
        # Settings for configuring CMEK for a bucket.
        # Corresponds to the JSON property `cmekSettings`
        # @return [Google::Apis::ObservabilityV1::CmekSettings]
        attr_accessor :cmek_settings
      
        # Output only. Create timestamp.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Delete timestamp.
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # Optional. Description of the bucket.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. User friendly display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Identifier. Name of the bucket. The format is: projects/[PROJECT_ID]/locations/
        # [LOCATION]/buckets/[BUCKET_ID]
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Timestamp when the bucket in soft-deleted state is purged.
        # Corresponds to the JSON property `purgeTime`
        # @return [String]
        attr_accessor :purge_time
      
        # Output only. Update timestamp.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cmek_settings = args[:cmek_settings] if args.key?(:cmek_settings)
          @create_time = args[:create_time] if args.key?(:create_time)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @purge_time = args[:purge_time] if args.key?(:purge_time)
          @update_time = args[:update_time] if args.key?(:update_time)
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
      
      # Settings for configuring CMEK for a bucket.
      class CmekSettings
        include Google::Apis::Core::Hashable
      
        # Optional. The resource name for the configured Cloud KMS key. The format is:
        # projects/[PROJECT_ID]/locations/[LOCATION]/keyRings/[KEYRING]/cryptoKeys/[KEY]
        # For example: projects/my-project/locations/us-central1/keyRings/my-ring/
        # cryptoKeys/my-key
        # Corresponds to the JSON property `kmsKey`
        # @return [String]
        attr_accessor :kms_key
      
        # Output only. The CryptoKeyVersion resource name for the configured Cloud KMS
        # key. The format is: projects/[PROJECT_ID]/locations/[LOCATION]/keyRings/[
        # KEYRING]/cryptoKeys/[KEY]/cryptoKeyVersions/[VERSION] For example: projects/my-
        # project/locations/us-central1/keyRings/my-ring/cryptoKeys/my-key/
        # cryptoKeyVersions/1 This read-only field is used to convey the specific
        # configured CryptoKeyVersion of the `kms_key` that has been configured. It is
        # populated when the CMEK settings are bound to a single key version.
        # Corresponds to the JSON property `kmsKeyVersion`
        # @return [String]
        attr_accessor :kms_key_version
      
        # Output only. The service account used to access the key.
        # Corresponds to the JSON property `serviceAccountId`
        # @return [String]
        attr_accessor :service_account_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kms_key = args[:kms_key] if args.key?(:kms_key)
          @kms_key_version = args[:kms_key_version] if args.key?(:kms_key_version)
          @service_account_id = args[:service_account_id] if args.key?(:service_account_id)
        end
      end
      
      # A dataset is a collection of data that has a specific configuration. A dataset
      # can be backed by multiple tables. One bucket can have multiple datasets.
      class Dataset
        include Google::Apis::Core::Hashable
      
        # Output only. Create timestamp.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Delete timestamp.
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # Optional. Description of the dataset.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. User friendly display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Identifier. Name of the dataset. The format is: projects/[PROJECT_ID]/
        # locations/[LOCATION]/buckets/[BUCKET_ID]/datasets/[DATASET_ID]
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Timestamp when the dataset in soft-deleted state is purged.
        # Corresponds to the JSON property `purgeTime`
        # @return [String]
        attr_accessor :purge_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @purge_time = args[:purge_time] if args.key?(:purge_time)
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
      
      # A link lets a dataset be accessible to BigQuery via usage of linked datasets.
      class Link
        include Google::Apis::Core::Hashable
      
        # Output only. Create timestamp.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Description of the link.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. A user friendly display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Identifier. Name of the link. The format is: projects/[PROJECT_ID]/locations/[
        # LOCATION]/buckets/[BUCKET_ID]/datasets/[DATASET_ID]/links/[LINK_ID]
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Response for listing buckets.
      class ListBucketsResponse
        include Google::Apis::Core::Hashable
      
        # Optional. The list of buckets.
        # Corresponds to the JSON property `buckets`
        # @return [Array<Google::Apis::ObservabilityV1::Bucket>]
        attr_accessor :buckets
      
        # Optional. A token that can be sent as `page_token` to retrieve the next page.
        # When this field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @buckets = args[:buckets] if args.key?(:buckets)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response for listing datasets.
      class ListDatasetsResponse
        include Google::Apis::Core::Hashable
      
        # The list of datasets.
        # Corresponds to the JSON property `datasets`
        # @return [Array<Google::Apis::ObservabilityV1::Dataset>]
        attr_accessor :datasets
      
        # A token that can be sent as `page_token` to retrieve the next page. When this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @datasets = args[:datasets] if args.key?(:datasets)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response for listing links.
      class ListLinksResponse
        include Google::Apis::Core::Hashable
      
        # The list of links.
        # Corresponds to the JSON property `links`
        # @return [Array<Google::Apis::ObservabilityV1::Link>]
        attr_accessor :links
      
        # Optional. A token that can be sent as `page_token` to retrieve the next page.
        # When this field is omitted, there are no subsequent pages.
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
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::ObservabilityV1::Location>]
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
        # @return [Array<Google::Apis::ObservabilityV1::Operation>]
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
      
      # Response for listing TraceScopes.
      class ListTraceScopesResponse
        include Google::Apis::Core::Hashable
      
        # Optional. If there might be more results than appear in this response, then `
        # next_page_token` is included. To get the next set of results, call the same
        # method again using the value of `next_page_token` as `page_token`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Optional. A list of trace scopes.
        # Corresponds to the JSON property `traceScopes`
        # @return [Array<Google::Apis::ObservabilityV1::TraceScope>]
        attr_accessor :trace_scopes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @trace_scopes = args[:trace_scopes] if args.key?(:trace_scopes)
        end
      end
      
      # Response for listing views.
      class ListViewsResponse
        include Google::Apis::Core::Hashable
      
        # Optional. A token that can be sent as `page_token` to retrieve the next page.
        # When this field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of views.
        # Corresponds to the JSON property `views`
        # @return [Array<Google::Apis::ObservabilityV1::View>]
        attr_accessor :views
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @views = args[:views] if args.key?(:views)
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
        # @return [Google::Apis::ObservabilityV1::Status]
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
      
      # Message describing Scope object
      class Scope
        include Google::Apis::Core::Hashable
      
        # Required. The full resource name of the `LogScope`. For example: //logging.
        # googleapis.com/projects/myproject/locations/global/logScopes/my-log-scope
        # Corresponds to the JSON property `logScope`
        # @return [String]
        attr_accessor :log_scope
      
        # Identifier. Name of the resource. The format is: projects/`project`/locations/`
        # location`/scopes/`scope` The ``location`` field must be set to `global`. The ``
        # scope`` field must be set to `_Default`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The resource name of the `TraceScope`. For example: projects/
        # myproject/locations/global/traceScopes/my-trace-scope
        # Corresponds to the JSON property `traceScope`
        # @return [String]
        attr_accessor :trace_scope
      
        # Output only. Update timestamp. Note: The Update timestamp for the default
        # scope is initially unset.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @log_scope = args[:log_scope] if args.key?(:log_scope)
          @name = args[:name] if args.key?(:name)
          @trace_scope = args[:trace_scope] if args.key?(:trace_scope)
          @update_time = args[:update_time] if args.key?(:update_time)
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
      
      # A trace scope is a collection of resources whose traces are queried together.
      class TraceScope
        include Google::Apis::Core::Hashable
      
        # Output only. The creation timestamp of the trace scope.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Describes this trace scope. The maximum length of the description is
        # 8000 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Identifier. The resource name of the trace scope. For example: projects/my-
        # project/locations/global/traceScopes/my-trace-scope
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Names of the projects that are included in this trace scope. * `
        # projects/[PROJECT_ID]` A trace scope can include a maximum of 20 projects.
        # Corresponds to the JSON property `resourceNames`
        # @return [Array<String>]
        attr_accessor :resource_names
      
        # Output only. The last update timestamp of the trace scope.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @name = args[:name] if args.key?(:name)
          @resource_names = args[:resource_names] if args.key?(:resource_names)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A view corresponds to a read-only representation of a subset of the data in a
      # dataset.
      class View
        include Google::Apis::Core::Hashable
      
        # Output only. Create timestamp.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Description of the view.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. User friendly display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Identifier. Name of the view. The format is: projects/[PROJECT_ID]/locations/[
        # LOCATION]/buckets/[BUCKET_ID]/datasets/[DATASET_ID]/views/[VIEW_ID]
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Update timestamp.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
    end
  end
end
