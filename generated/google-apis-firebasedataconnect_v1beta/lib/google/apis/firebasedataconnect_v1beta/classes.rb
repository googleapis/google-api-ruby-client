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
    module FirebasedataconnectV1beta
      
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
      
      # Settings for CloudSQL instance configuration.
      class CloudSqlInstance
        include Google::Apis::Core::Hashable
      
        # Required. Name of the CloudSQL instance, in the format: ``` projects/`project`/
        # locations/`location`/instances/`instance` ```
        # Corresponds to the JSON property `instance`
        # @return [String]
        attr_accessor :instance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance = args[:instance] if args.key?(:instance)
        end
      end
      
      # Connector consists of a set of operations, i.e. queries and mutations.
      class Connector
        include Google::Apis::Core::Hashable
      
        # Optional. Stores small amounts of arbitrary data.
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Output only. [Output only] Create time stamp.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Mutable human-readable name. 63 character limit.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. This checksum is computed by the server based on the value of
        # other fields, and may be sent on update and delete requests to ensure the
        # client has an up-to-date value before proceeding. [AIP-154](https://google.aip.
        # dev/154)
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. Labels as key value pairs.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Identifier. The relative resource name of the connector, in the format: ```
        # projects/`project`/locations/`location`/services/`service`/connectors/`
        # connector` ```
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. A field that if true, indicates that the system is working to
        # compile and deploy the connector.
        # Corresponds to the JSON property `reconciling`
        # @return [Boolean]
        attr_accessor :reconciling
        alias_method :reconciling?, :reconciling
      
        # Used to represent a set of source files.
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::FirebasedataconnectV1beta::Source]
        attr_accessor :source
      
        # Output only. System-assigned, unique identifier.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. [Output only] Update time stamp.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @etag = args[:etag] if args.key?(:etag)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @reconciling = args[:reconciling] if args.key?(:reconciling)
          @source = args[:source] if args.key?(:source)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A data source that backs Firebase Data Connect services.
      class Datasource
        include Google::Apis::Core::Hashable
      
        # Settings for PostgreSQL data source.
        # Corresponds to the JSON property `postgresql`
        # @return [Google::Apis::FirebasedataconnectV1beta::PostgreSql]
        attr_accessor :postgresql
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @postgresql = args[:postgresql] if args.key?(:postgresql)
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
      
      # The ExecuteMutation request to Firebase Data Connect.
      class ExecuteMutationRequest
        include Google::Apis::Core::Hashable
      
        # Required. The name of the GraphQL operation name. Required because all
        # Connector operations must be named. See https://graphql.org/learn/queries/#
        # operation-name.
        # Corresponds to the JSON property `operationName`
        # @return [String]
        attr_accessor :operation_name
      
        # Optional. Values for GraphQL variables provided in this request.
        # Corresponds to the JSON property `variables`
        # @return [Hash<String,Object>]
        attr_accessor :variables
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operation_name = args[:operation_name] if args.key?(:operation_name)
          @variables = args[:variables] if args.key?(:variables)
        end
      end
      
      # The ExecuteMutation response from Firebase Data Connect.
      class ExecuteMutationResponse
        include Google::Apis::Core::Hashable
      
        # The result of executing the requested operation.
        # Corresponds to the JSON property `data`
        # @return [Hash<String,Object>]
        attr_accessor :data
      
        # Errors of this response.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::FirebasedataconnectV1beta::GraphqlError>]
        attr_accessor :errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data = args[:data] if args.key?(:data)
          @errors = args[:errors] if args.key?(:errors)
        end
      end
      
      # The ExecuteQuery request to Firebase Data Connect.
      class ExecuteQueryRequest
        include Google::Apis::Core::Hashable
      
        # Required. The name of the GraphQL operation name. Required because all
        # Connector operations must be named. See https://graphql.org/learn/queries/#
        # operation-name.
        # Corresponds to the JSON property `operationName`
        # @return [String]
        attr_accessor :operation_name
      
        # Optional. Values for GraphQL variables provided in this request.
        # Corresponds to the JSON property `variables`
        # @return [Hash<String,Object>]
        attr_accessor :variables
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operation_name = args[:operation_name] if args.key?(:operation_name)
          @variables = args[:variables] if args.key?(:variables)
        end
      end
      
      # The ExecuteQuery response from Firebase Data Connect.
      class ExecuteQueryResponse
        include Google::Apis::Core::Hashable
      
        # The result of executing the requested operation.
        # Corresponds to the JSON property `data`
        # @return [Hash<String,Object>]
        attr_accessor :data
      
        # Errors of this response.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::FirebasedataconnectV1beta::GraphqlError>]
        attr_accessor :errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data = args[:data] if args.key?(:data)
          @errors = args[:errors] if args.key?(:errors)
        end
      end
      
      # Individual files.
      class File
        include Google::Apis::Core::Hashable
      
        # Required. The file's textual content.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # Required. The file name including folder path, if applicable. The path should
        # be relative to a local workspace (e.g. dataconnect/(schema|connector)/*.gql)
        # and not an absolute path (e.g. /absolute/path/(schema|connector)/*.gql).
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @path = args[:path] if args.key?(:path)
        end
      end
      
      # GraphqlError conforms to the GraphQL error spec. https://spec.graphql.org/
      # draft/#sec-Errors Firebase Data Connect API surfaces `GraphqlError` in various
      # APIs: - Upon compile error, `UpdateSchema` and `UpdateConnector` return Code.
      # Invalid_Argument with a list of `GraphqlError` in error details. - Upon query
      # compile error, `ExecuteGraphql` and `ExecuteGraphqlRead` return Code.OK with a
      # list of `GraphqlError` in response body. - Upon query execution error, `
      # ExecuteGraphql`, `ExecuteGraphqlRead`, `ExecuteMutation` and `ExecuteQuery`
      # all return Code.OK with a list of `GraphqlError` in response body.
      class GraphqlError
        include Google::Apis::Core::Hashable
      
        # GraphqlErrorExtensions contains additional information of `GraphqlError`.
        # Corresponds to the JSON property `extensions`
        # @return [Google::Apis::FirebasedataconnectV1beta::GraphqlErrorExtensions]
        attr_accessor :extensions
      
        # The source locations where the error occurred. Locations should help
        # developers and toolings identify the source of error quickly. Included in
        # admin endpoints (`ExecuteGraphql`, `ExecuteGraphqlRead`, `UpdateSchema` and `
        # UpdateConnector`) to reference the provided GraphQL GQL document. Omitted in `
        # ExecuteMutation` and `ExecuteQuery` since the caller shouldn't have access
        # access the underlying GQL source.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::FirebasedataconnectV1beta::SourceLocation>]
        attr_accessor :locations
      
        # The detailed error message. The message should help developer understand the
        # underlying problem without leaking internal data.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # The result field which could not be populated due to error. Clients can use
        # path to identify whether a null result is intentional or caused by a runtime
        # error. It should be a list of string or index from the root of GraphQL query
        # document.
        # Corresponds to the JSON property `path`
        # @return [Array<Object>]
        attr_accessor :path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @extensions = args[:extensions] if args.key?(:extensions)
          @locations = args[:locations] if args.key?(:locations)
          @message = args[:message] if args.key?(:message)
          @path = args[:path] if args.key?(:path)
        end
      end
      
      # GraphqlErrorExtensions contains additional information of `GraphqlError`.
      class GraphqlErrorExtensions
        include Google::Apis::Core::Hashable
      
        # The source file name where the error occurred. Included only for `UpdateSchema`
        # and `UpdateConnector`, it corresponds to `File.path` of the provided `Source`.
        # Corresponds to the JSON property `file`
        # @return [String]
        attr_accessor :file
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file = args[:file] if args.key?(:file)
        end
      end
      
      # The GraphQL request to Firebase Data Connect. It strives to match the GraphQL
      # over HTTP spec. https://github.com/graphql/graphql-over-http/blob/main/spec/
      # GraphQLOverHTTP.md#post
      class GraphqlRequest
        include Google::Apis::Core::Hashable
      
        # GraphqlRequestExtensions contains additional information of `GraphqlRequest`.
        # Corresponds to the JSON property `extensions`
        # @return [Google::Apis::FirebasedataconnectV1beta::GraphqlRequestExtensions]
        attr_accessor :extensions
      
        # Optional. The name of the GraphQL operation name. Required only if `query`
        # contains multiple operations. See https://graphql.org/learn/queries/#operation-
        # name.
        # Corresponds to the JSON property `operationName`
        # @return [String]
        attr_accessor :operation_name
      
        # Required. The GraphQL query document source.
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        # Optional. Values for GraphQL variables provided in this request.
        # Corresponds to the JSON property `variables`
        # @return [Hash<String,Object>]
        attr_accessor :variables
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @extensions = args[:extensions] if args.key?(:extensions)
          @operation_name = args[:operation_name] if args.key?(:operation_name)
          @query = args[:query] if args.key?(:query)
          @variables = args[:variables] if args.key?(:variables)
        end
      end
      
      # GraphqlRequestExtensions contains additional information of `GraphqlRequest`.
      class GraphqlRequestExtensions
        include Google::Apis::Core::Hashable
      
        # Impersonation configures the Firebase Auth context to impersonate.
        # Corresponds to the JSON property `impersonate`
        # @return [Google::Apis::FirebasedataconnectV1beta::Impersonation]
        attr_accessor :impersonate
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @impersonate = args[:impersonate] if args.key?(:impersonate)
        end
      end
      
      # The GraphQL response from Firebase Data Connect. It strives to match the
      # GraphQL over HTTP spec. Note: Firebase Data Connect always responds with `
      # Content-Type: application/json`. https://github.com/graphql/graphql-over-http/
      # blob/main/spec/GraphQLOverHTTP.md#body
      class GraphqlResponse
        include Google::Apis::Core::Hashable
      
        # The result of the execution of the requested operation. If an error was raised
        # before execution begins, the data entry should not be present in the result. (
        # a request error: https://spec.graphql.org/draft/#sec-Errors.Request-Errors) If
        # an error was raised during the execution that prevented a valid response, the
        # data entry in the response should be null. (a field error: https://spec.
        # graphql.org/draft/#sec-Errors.Error-Result-Format)
        # Corresponds to the JSON property `data`
        # @return [Hash<String,Object>]
        attr_accessor :data
      
        # Errors of this response. If the data entry in the response is not present, the
        # errors entry must be present. It conforms to https://spec.graphql.org/draft/#
        # sec-Errors.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::FirebasedataconnectV1beta::GraphqlError>]
        attr_accessor :errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data = args[:data] if args.key?(:data)
          @errors = args[:errors] if args.key?(:errors)
        end
      end
      
      # Impersonation configures the Firebase Auth context to impersonate.
      class Impersonation
        include Google::Apis::Core::Hashable
      
        # Evaluate the auth policy with a customized JWT auth token. Should follow the
        # Firebase Auth token format. https://firebase.google.com/docs/rules/rules-and-
        # auth For example: a verified user may have auth_claims of `"sub": , "
        # email_verified": true`
        # Corresponds to the JSON property `authClaims`
        # @return [Hash<String,Object>]
        attr_accessor :auth_claims
      
        # Evaluate the auth policy as an unauthenticated request. Can only be set to
        # true.
        # Corresponds to the JSON property `unauthenticated`
        # @return [Boolean]
        attr_accessor :unauthenticated
        alias_method :unauthenticated?, :unauthenticated
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auth_claims = args[:auth_claims] if args.key?(:auth_claims)
          @unauthenticated = args[:unauthenticated] if args.key?(:unauthenticated)
        end
      end
      
      # Message for response to listing Connectors.
      class ListConnectorsResponse
        include Google::Apis::Core::Hashable
      
        # The list of Connectors.
        # Corresponds to the JSON property `connectors`
        # @return [Array<Google::Apis::FirebasedataconnectV1beta::Connector>]
        attr_accessor :connectors
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
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
          @connectors = args[:connectors] if args.key?(:connectors)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::FirebasedataconnectV1beta::Location>]
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
        # @return [Array<Google::Apis::FirebasedataconnectV1beta::Operation>]
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
      
      # Message for response to listing Schemas.
      class ListSchemasResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of Schemas.
        # Corresponds to the JSON property `schemas`
        # @return [Array<Google::Apis::FirebasedataconnectV1beta::Schema>]
        attr_accessor :schemas
      
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
          @schemas = args[:schemas] if args.key?(:schemas)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Message for response to listing Services.
      class ListServicesResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of Services.
        # Corresponds to the JSON property `services`
        # @return [Array<Google::Apis::FirebasedataconnectV1beta::Service>]
        attr_accessor :services
      
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
          @services = args[:services] if args.key?(:services)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
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
        # @return [Google::Apis::FirebasedataconnectV1beta::Status]
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
      
      # Represents the metadata of the long-running operation. Note: This message is
      # auto-generated by CCFE. CCFE's storage, called Resource Metadata Store (RMS),
      # holds metadata about long-running operations (i.e. OperationMetadata) and
      # resources (i.e. ResourceMetadata). OperationMetadata documents the status of
      # the operation. See [CCFE documentation for sidechannel data](https://g3doc.
      # corp.google.com/cloud/control2/g3doc/dev/codelab_extras/sidechannel.md?cl=head#
      # sidechannel-data) and yaqs/4289526912465764352.
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
      
      # Settings for PostgreSQL data source.
      class PostgreSql
        include Google::Apis::Core::Hashable
      
        # Settings for CloudSQL instance configuration.
        # Corresponds to the JSON property `cloudSql`
        # @return [Google::Apis::FirebasedataconnectV1beta::CloudSqlInstance]
        attr_accessor :cloud_sql
      
        # Required. Name of the PostgreSQL database.
        # Corresponds to the JSON property `database`
        # @return [String]
        attr_accessor :database
      
        # Optional. Configure how much Postgresql schema validation to perform. Default
        # to `STRICT` if not specified.
        # Corresponds to the JSON property `schemaValidation`
        # @return [String]
        attr_accessor :schema_validation
      
        # No Postgres data source is linked. If set, don't allow `database` and `
        # schema_validation` to be configured.
        # Corresponds to the JSON property `unlinked`
        # @return [Boolean]
        attr_accessor :unlinked
        alias_method :unlinked?, :unlinked
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_sql = args[:cloud_sql] if args.key?(:cloud_sql)
          @database = args[:database] if args.key?(:database)
          @schema_validation = args[:schema_validation] if args.key?(:schema_validation)
          @unlinked = args[:unlinked] if args.key?(:unlinked)
        end
      end
      
      # The application schema of a Firebase Data Connect service.
      class Schema
        include Google::Apis::Core::Hashable
      
        # Optional. Stores small amounts of arbitrary data.
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Output only. [Output only] Create time stamp.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. The data sources linked in the schema.
        # Corresponds to the JSON property `datasources`
        # @return [Array<Google::Apis::FirebasedataconnectV1beta::Datasource>]
        attr_accessor :datasources
      
        # Optional. Mutable human-readable name. 63 character limit.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. This checksum is computed by the server based on the value of
        # other fields, and may be sent on update and delete requests to ensure the
        # client has an up-to-date value before proceeding. [AIP-154](https://google.aip.
        # dev/154)
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. Labels as key value pairs.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Identifier. The relative resource name of the schema, in the format: ```
        # projects/`project`/locations/`location`/services/`service`/schemas/`schema` ```
        # Right now, the only supported schema is "main".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. A field that if true, indicates that the system is working to
        # compile and deploy the schema.
        # Corresponds to the JSON property `reconciling`
        # @return [Boolean]
        attr_accessor :reconciling
        alias_method :reconciling?, :reconciling
      
        # Used to represent a set of source files.
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::FirebasedataconnectV1beta::Source]
        attr_accessor :source
      
        # Output only. System-assigned, unique identifier.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. [Output only] Update time stamp.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @create_time = args[:create_time] if args.key?(:create_time)
          @datasources = args[:datasources] if args.key?(:datasources)
          @display_name = args[:display_name] if args.key?(:display_name)
          @etag = args[:etag] if args.key?(:etag)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @reconciling = args[:reconciling] if args.key?(:reconciling)
          @source = args[:source] if args.key?(:source)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A Firebase Data Connect service.
      class Service
        include Google::Apis::Core::Hashable
      
        # Optional. Stores small amounts of arbitrary data.
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Output only. [Output only] Create time stamp.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Mutable human-readable name. 63 character limit.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. This checksum is computed by the server based on the value of
        # other fields, and may be sent on update and delete requests to ensure the
        # client has an up-to-date value before proceeding. [AIP-154](https://google.aip.
        # dev/154)
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. Labels as key value pairs.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Identifier. The relative resource name of the Firebase Data Connect service,
        # in the format: ``` projects/`project`/locations/`location`/services/`service` `
        # `` Note that the service ID is specific to Firebase Data Connect and does not
        # correspond to any of the instance IDs of the underlying data source
        # connections.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. A field that if true, indicates that the system is working update
        # the service.
        # Corresponds to the JSON property `reconciling`
        # @return [Boolean]
        attr_accessor :reconciling
        alias_method :reconciling?, :reconciling
      
        # Output only. System-assigned, unique identifier.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. [Output only] Update time stamp.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @etag = args[:etag] if args.key?(:etag)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @reconciling = args[:reconciling] if args.key?(:reconciling)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Used to represent a set of source files.
      class Source
        include Google::Apis::Core::Hashable
      
        # Required. The files that comprise the source set.
        # Corresponds to the JSON property `files`
        # @return [Array<Google::Apis::FirebasedataconnectV1beta::File>]
        attr_accessor :files
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @files = args[:files] if args.key?(:files)
        end
      end
      
      # SourceLocation references a location in a GraphQL source.
      class SourceLocation
        include Google::Apis::Core::Hashable
      
        # Column number starting at 1.
        # Corresponds to the JSON property `column`
        # @return [Fixnum]
        attr_accessor :column
      
        # Line number starting at 1.
        # Corresponds to the JSON property `line`
        # @return [Fixnum]
        attr_accessor :line
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column = args[:column] if args.key?(:column)
          @line = args[:line] if args.key?(:line)
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
