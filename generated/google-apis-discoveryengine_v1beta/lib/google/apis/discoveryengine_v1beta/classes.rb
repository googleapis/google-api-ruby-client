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
    module DiscoveryengineV1beta
      
      # Message that represents an arbitrary HTTP body. It should only be used for
      # payload formats that can't be represented as JSON, such as raw binary or an
      # HTML page. This message can be used both in streaming and non-streaming API
      # methods in the request as well as the response. It can be used as a top-level
      # request field, which is convenient if one wants to extract parameters from
      # either the URL or HTTP template into the request fields and also want access
      # to the raw HTTP body. Example: message GetResourceRequest ` // A unique
      # request id. string request_id = 1; // The raw HTTP body is bound to this field.
      # google.api.HttpBody http_body = 2; ` service ResourceService ` rpc
      # GetResource(GetResourceRequest) returns (google.api.HttpBody); rpc
      # UpdateResource(google.api.HttpBody) returns (google.protobuf.Empty); ` Example
      # with streaming methods: service CaldavService ` rpc GetCalendar(stream google.
      # api.HttpBody) returns (stream google.api.HttpBody); rpc UpdateCalendar(stream
      # google.api.HttpBody) returns (stream google.api.HttpBody); ` Use of this type
      # only changes how the request and response bodies are handled, all other
      # features will continue to work unchanged.
      class GoogleApiHttpBody
        include Google::Apis::Core::Hashable
      
        # The HTTP Content-Type header value specifying the content type of the body.
        # Corresponds to the JSON property `contentType`
        # @return [String]
        attr_accessor :content_type
      
        # The HTTP request/response body as raw binary.
        # Corresponds to the JSON property `data`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :data
      
        # Application specific response metadata. Must be set in the first response for
        # streaming APIs.
        # Corresponds to the JSON property `extensions`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :extensions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_type = args[:content_type] if args.key?(:content_type)
          @data = args[:data] if args.key?(:data)
          @extensions = args[:extensions] if args.key?(:extensions)
        end
      end
      
      # A description of the context in which an error occurred.
      class GoogleCloudDiscoveryengineLoggingErrorContext
        include Google::Apis::Core::Hashable
      
        # HTTP request data that is related to a reported error.
        # Corresponds to the JSON property `httpRequest`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineLoggingHttpRequestContext]
        attr_accessor :http_request
      
        # Indicates a location in the source code of the service for which errors are
        # reported.
        # Corresponds to the JSON property `reportLocation`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineLoggingSourceLocation]
        attr_accessor :report_location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @http_request = args[:http_request] if args.key?(:http_request)
          @report_location = args[:report_location] if args.key?(:report_location)
        end
      end
      
      # An error log which is reported to the Error Reporting system.
      class GoogleCloudDiscoveryengineLoggingErrorLog
        include Google::Apis::Core::Hashable
      
        # A description of the context in which an error occurred.
        # Corresponds to the JSON property `context`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineLoggingErrorContext]
        attr_accessor :context
      
        # The error payload that is populated on LRO import APIs, including the
        # following: * `google.cloud.discoveryengine.v1alpha.DocumentService.
        # ImportDocuments` * `google.cloud.discoveryengine.v1alpha.UserEventService.
        # ImportUserEvents`
        # Corresponds to the JSON property `importPayload`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineLoggingImportErrorContext]
        attr_accessor :import_payload
      
        # A message describing the error.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # The API request payload, represented as a protocol buffer. Most API request
        # types are supported—for example: * `type.googleapis.com/google.cloud.
        # discoveryengine.v1alpha.DocumentService.CreateDocumentRequest` * `type.
        # googleapis.com/google.cloud.discoveryengine.v1alpha.UserEventService.
        # WriteUserEventRequest`
        # Corresponds to the JSON property `requestPayload`
        # @return [Hash<String,Object>]
        attr_accessor :request_payload
      
        # The API response payload, represented as a protocol buffer. This is used to
        # log some "soft errors", where the response is valid but we consider there are
        # some quality issues like unjoined events. The following API responses are
        # supported, and no PII is included: * `google.cloud.discoveryengine.v1alpha.
        # RecommendationService.Recommend` * `google.cloud.discoveryengine.v1alpha.
        # UserEventService.WriteUserEvent` * `google.cloud.discoveryengine.v1alpha.
        # UserEventService.CollectUserEvent`
        # Corresponds to the JSON property `responsePayload`
        # @return [Hash<String,Object>]
        attr_accessor :response_payload
      
        # Describes a running service that sends errors.
        # Corresponds to the JSON property `serviceContext`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineLoggingServiceContext]
        attr_accessor :service_context
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @context = args[:context] if args.key?(:context)
          @import_payload = args[:import_payload] if args.key?(:import_payload)
          @message = args[:message] if args.key?(:message)
          @request_payload = args[:request_payload] if args.key?(:request_payload)
          @response_payload = args[:response_payload] if args.key?(:response_payload)
          @service_context = args[:service_context] if args.key?(:service_context)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # HTTP request data that is related to a reported error.
      class GoogleCloudDiscoveryengineLoggingHttpRequestContext
        include Google::Apis::Core::Hashable
      
        # The HTTP response status code for the request.
        # Corresponds to the JSON property `responseStatusCode`
        # @return [Fixnum]
        attr_accessor :response_status_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @response_status_code = args[:response_status_code] if args.key?(:response_status_code)
        end
      end
      
      # The error payload that is populated on LRO import APIs, including the
      # following: * `google.cloud.discoveryengine.v1alpha.DocumentService.
      # ImportDocuments` * `google.cloud.discoveryengine.v1alpha.UserEventService.
      # ImportUserEvents`
      class GoogleCloudDiscoveryengineLoggingImportErrorContext
        include Google::Apis::Core::Hashable
      
        # The detailed content which caused the error on importing a document.
        # Corresponds to the JSON property `document`
        # @return [String]
        attr_accessor :document
      
        # Google Cloud Storage file path of the import source. Can be set for batch
        # operation error.
        # Corresponds to the JSON property `gcsPath`
        # @return [String]
        attr_accessor :gcs_path
      
        # Line number of the content in file. Should be empty for permission or batch
        # operation error.
        # Corresponds to the JSON property `lineNumber`
        # @return [String]
        attr_accessor :line_number
      
        # The operation resource name of the LRO.
        # Corresponds to the JSON property `operation`
        # @return [String]
        attr_accessor :operation
      
        # The detailed content which caused the error on importing a user event.
        # Corresponds to the JSON property `userEvent`
        # @return [String]
        attr_accessor :user_event
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document = args[:document] if args.key?(:document)
          @gcs_path = args[:gcs_path] if args.key?(:gcs_path)
          @line_number = args[:line_number] if args.key?(:line_number)
          @operation = args[:operation] if args.key?(:operation)
          @user_event = args[:user_event] if args.key?(:user_event)
        end
      end
      
      # Describes a running service that sends errors.
      class GoogleCloudDiscoveryengineLoggingServiceContext
        include Google::Apis::Core::Hashable
      
        # An identifier of the service—for example, `discoveryengine.googleapis.com`.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @service = args[:service] if args.key?(:service)
        end
      end
      
      # Indicates a location in the source code of the service for which errors are
      # reported.
      class GoogleCloudDiscoveryengineLoggingSourceLocation
        include Google::Apis::Core::Hashable
      
        # Human-readable name of a function or method—for example, `google.cloud.
        # discoveryengine.v1alpha.RecommendationService.Recommend`.
        # Corresponds to the JSON property `functionName`
        # @return [String]
        attr_accessor :function_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @function_name = args[:function_name] if args.key?(:function_name)
        end
      end
      
      # Metadata for Create Schema LRO.
      class GoogleCloudDiscoveryengineV1CreateSchemaMetadata
        include Google::Apis::Core::Hashable
      
        # Operation create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Operation last update time. If the operation is done, this is also the finish
        # time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Metadata for DeleteSchema LRO.
      class GoogleCloudDiscoveryengineV1DeleteSchemaMetadata
        include Google::Apis::Core::Hashable
      
        # Operation create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Operation last update time. If the operation is done, this is also the finish
        # time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Metadata related to the progress of the ImportDocuments operation. This is
      # returned by the google.longrunning.Operation.metadata field.
      class GoogleCloudDiscoveryengineV1ImportDocumentsMetadata
        include Google::Apis::Core::Hashable
      
        # Operation create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Count of entries that encountered errors while processing.
        # Corresponds to the JSON property `failureCount`
        # @return [Fixnum]
        attr_accessor :failure_count
      
        # Count of entries that were processed successfully.
        # Corresponds to the JSON property `successCount`
        # @return [Fixnum]
        attr_accessor :success_count
      
        # Operation last update time. If the operation is done, this is also the finish
        # time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @failure_count = args[:failure_count] if args.key?(:failure_count)
          @success_count = args[:success_count] if args.key?(:success_count)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Response of the ImportDocumentsRequest. If the long running operation is done,
      # then this message is returned by the google.longrunning.Operations.response
      # field if the operation was successful.
      class GoogleCloudDiscoveryengineV1ImportDocumentsResponse
        include Google::Apis::Core::Hashable
      
        # Configuration of destination for Import related errors.
        # Corresponds to the JSON property `errorConfig`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1ImportErrorConfig]
        attr_accessor :error_config
      
        # A sample of errors encountered while processing the request.
        # Corresponds to the JSON property `errorSamples`
        # @return [Array<Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus>]
        attr_accessor :error_samples
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_config = args[:error_config] if args.key?(:error_config)
          @error_samples = args[:error_samples] if args.key?(:error_samples)
        end
      end
      
      # Configuration of destination for Import related errors.
      class GoogleCloudDiscoveryengineV1ImportErrorConfig
        include Google::Apis::Core::Hashable
      
        # Cloud Storage prefix for import errors. This must be an empty, existing Cloud
        # Storage directory. Import errors are written to sharded files in this
        # directory, one per line, as a JSON-encoded `google.rpc.Status` message.
        # Corresponds to the JSON property `gcsPrefix`
        # @return [String]
        attr_accessor :gcs_prefix
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_prefix = args[:gcs_prefix] if args.key?(:gcs_prefix)
        end
      end
      
      # Metadata related to the progress of the Import operation. This is returned by
      # the google.longrunning.Operation.metadata field.
      class GoogleCloudDiscoveryengineV1ImportUserEventsMetadata
        include Google::Apis::Core::Hashable
      
        # Operation create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Count of entries that encountered errors while processing.
        # Corresponds to the JSON property `failureCount`
        # @return [Fixnum]
        attr_accessor :failure_count
      
        # Count of entries that were processed successfully.
        # Corresponds to the JSON property `successCount`
        # @return [Fixnum]
        attr_accessor :success_count
      
        # Operation last update time. If the operation is done, this is also the finish
        # time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @failure_count = args[:failure_count] if args.key?(:failure_count)
          @success_count = args[:success_count] if args.key?(:success_count)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Response of the ImportUserEventsRequest. If the long running operation was
      # successful, then this message is returned by the google.longrunning.Operations.
      # response field if the operation was successful.
      class GoogleCloudDiscoveryengineV1ImportUserEventsResponse
        include Google::Apis::Core::Hashable
      
        # Configuration of destination for Import related errors.
        # Corresponds to the JSON property `errorConfig`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1ImportErrorConfig]
        attr_accessor :error_config
      
        # A sample of errors encountered while processing the request.
        # Corresponds to the JSON property `errorSamples`
        # @return [Array<Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus>]
        attr_accessor :error_samples
      
        # Count of user events imported with complete existing Documents.
        # Corresponds to the JSON property `joinedEventsCount`
        # @return [Fixnum]
        attr_accessor :joined_events_count
      
        # Count of user events imported, but with Document information not found in the
        # existing Branch.
        # Corresponds to the JSON property `unjoinedEventsCount`
        # @return [Fixnum]
        attr_accessor :unjoined_events_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_config = args[:error_config] if args.key?(:error_config)
          @error_samples = args[:error_samples] if args.key?(:error_samples)
          @joined_events_count = args[:joined_events_count] if args.key?(:joined_events_count)
          @unjoined_events_count = args[:unjoined_events_count] if args.key?(:unjoined_events_count)
        end
      end
      
      # Metadata related to the progress of the PurgeDocuments operation. This will be
      # returned by the google.longrunning.Operation.metadata field.
      class GoogleCloudDiscoveryengineV1PurgeDocumentsMetadata
        include Google::Apis::Core::Hashable
      
        # Operation create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Count of entries that encountered errors while processing.
        # Corresponds to the JSON property `failureCount`
        # @return [Fixnum]
        attr_accessor :failure_count
      
        # Count of entries that were deleted successfully.
        # Corresponds to the JSON property `successCount`
        # @return [Fixnum]
        attr_accessor :success_count
      
        # Operation last update time. If the operation is done, this is also the finish
        # time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @failure_count = args[:failure_count] if args.key?(:failure_count)
          @success_count = args[:success_count] if args.key?(:success_count)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Response message for DocumentService.PurgeDocuments method. If the long
      # running operation is successfully done, then this message is returned by the
      # google.longrunning.Operations.response field.
      class GoogleCloudDiscoveryengineV1PurgeDocumentsResponse
        include Google::Apis::Core::Hashable
      
        # The total count of documents purged as a result of the operation.
        # Corresponds to the JSON property `purgeCount`
        # @return [Fixnum]
        attr_accessor :purge_count
      
        # A sample of document names that will be deleted. Only populated if `force` is
        # set to false. A max of 100 names will be returned and the names are chosen at
        # random.
        # Corresponds to the JSON property `purgeSample`
        # @return [Array<String>]
        attr_accessor :purge_sample
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @purge_count = args[:purge_count] if args.key?(:purge_count)
          @purge_sample = args[:purge_sample] if args.key?(:purge_sample)
        end
      end
      
      # Defines the structure and layout of a type of document data.
      class GoogleCloudDiscoveryengineV1Schema
        include Google::Apis::Core::Hashable
      
        # The JSON representation of the schema.
        # Corresponds to the JSON property `jsonSchema`
        # @return [String]
        attr_accessor :json_schema
      
        # Immutable. The full resource name of the schema, in the format of `projects/`
        # project`/locations/`location`/collections/`collection`/dataStores/`data_store`/
        # schemas/`schema``. This field must be a UTF-8 encoded string with a length
        # limit of 1024 characters.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The structured representation of the schema.
        # Corresponds to the JSON property `structSchema`
        # @return [Hash<String,Object>]
        attr_accessor :struct_schema
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @json_schema = args[:json_schema] if args.key?(:json_schema)
          @name = args[:name] if args.key?(:name)
          @struct_schema = args[:struct_schema] if args.key?(:struct_schema)
        end
      end
      
      # Metadata for UpdateSchema LRO.
      class GoogleCloudDiscoveryengineV1UpdateSchemaMetadata
        include Google::Apis::Core::Hashable
      
        # Operation create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Operation last update time. If the operation is done, this is also the finish
        # time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Metadata related to the progress of the SiteSearchEngineService.
      # BatchCreateTargetSite operation. This will be returned by the google.
      # longrunning.Operation.metadata field.
      class GoogleCloudDiscoveryengineV1alphaBatchCreateTargetSiteMetadata
        include Google::Apis::Core::Hashable
      
        # Operation create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Operation last update time. If the operation is done, this is also the finish
        # time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Response message for SiteSearchEngineService.BatchCreateTargetSites method.
      class GoogleCloudDiscoveryengineV1alphaBatchCreateTargetSitesResponse
        include Google::Apis::Core::Hashable
      
        # TargetSites created.
        # Corresponds to the JSON property `targetSites`
        # @return [Array<Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaTargetSite>]
        attr_accessor :target_sites
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @target_sites = args[:target_sites] if args.key?(:target_sites)
        end
      end
      
      # Metadata related to the progress of the DataStoreService.CreateDataStore
      # operation. This will be returned by the google.longrunning.Operation.metadata
      # field.
      class GoogleCloudDiscoveryengineV1alphaCreateDataStoreMetadata
        include Google::Apis::Core::Hashable
      
        # Operation create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Operation last update time. If the operation is done, this is also the finish
        # time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Metadata related to the progress of the EngineService.CreateEngine operation.
      # This will be returned by the google.longrunning.Operation.metadata field.
      class GoogleCloudDiscoveryengineV1alphaCreateEngineMetadata
        include Google::Apis::Core::Hashable
      
        # Operation create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Operation last update time. If the operation is done, this is also the finish
        # time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Metadata for Create Schema LRO.
      class GoogleCloudDiscoveryengineV1alphaCreateSchemaMetadata
        include Google::Apis::Core::Hashable
      
        # Operation create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Operation last update time. If the operation is done, this is also the finish
        # time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Metadata related to the progress of the SiteSearchEngineService.
      # CreateTargetSite operation. This will be returned by the google.longrunning.
      # Operation.metadata field.
      class GoogleCloudDiscoveryengineV1alphaCreateTargetSiteMetadata
        include Google::Apis::Core::Hashable
      
        # Operation create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Operation last update time. If the operation is done, this is also the finish
        # time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # DataStore captures global settings and configs at the DataStore level.
      class GoogleCloudDiscoveryengineV1alphaDataStore
        include Google::Apis::Core::Hashable
      
        # Immutable. The content config of the data store. If this field is unset, the
        # server behavior defaults to ContentConfig.NO_CONTENT.
        # Corresponds to the JSON property `contentConfig`
        # @return [String]
        attr_accessor :content_config
      
        # Output only. Timestamp the DataStore was created at.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The id of the default Schema asscociated to this data store.
        # Corresponds to the JSON property `defaultSchemaId`
        # @return [String]
        attr_accessor :default_schema_id
      
        # Required. The data store display name. This field must be a UTF-8 encoded
        # string with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT
        # error is returned.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Immutable. The industry vertical that the data store registers.
        # Corresponds to the JSON property `industryVertical`
        # @return [String]
        attr_accessor :industry_vertical
      
        # Immutable. The full resource name of the data store. Format: `projects/`
        # project`/locations/`location`/collections/`collection_id`/dataStores/`
        # data_store_id``. This field must be a UTF-8 encoded string with a length limit
        # of 1024 characters.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The solutions that the data store enrolls. Available solutions for each
        # industry_vertical: * `MEDIA`: `SOLUTION_TYPE_RECOMMENDATION` and `
        # SOLUTION_TYPE_SEARCH`. * `SITE_SEARCH`: `SOLUTION_TYPE_SEARCH` is
        # automatically enrolled. Other solutions cannot be enrolled.
        # Corresponds to the JSON property `solutionTypes`
        # @return [Array<String>]
        attr_accessor :solution_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_config = args[:content_config] if args.key?(:content_config)
          @create_time = args[:create_time] if args.key?(:create_time)
          @default_schema_id = args[:default_schema_id] if args.key?(:default_schema_id)
          @display_name = args[:display_name] if args.key?(:display_name)
          @industry_vertical = args[:industry_vertical] if args.key?(:industry_vertical)
          @name = args[:name] if args.key?(:name)
          @solution_types = args[:solution_types] if args.key?(:solution_types)
        end
      end
      
      # Metadata related to the progress of the DataStoreService.DeleteDataStore
      # operation. This will be returned by the google.longrunning.Operation.metadata
      # field.
      class GoogleCloudDiscoveryengineV1alphaDeleteDataStoreMetadata
        include Google::Apis::Core::Hashable
      
        # Operation create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Operation last update time. If the operation is done, this is also the finish
        # time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Metadata related to the progress of the EngineService.DeleteEngine operation.
      # This will be returned by the google.longrunning.Operation.metadata field.
      class GoogleCloudDiscoveryengineV1alphaDeleteEngineMetadata
        include Google::Apis::Core::Hashable
      
        # Operation create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Operation last update time. If the operation is done, this is also the finish
        # time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Metadata for DeleteSchema LRO.
      class GoogleCloudDiscoveryengineV1alphaDeleteSchemaMetadata
        include Google::Apis::Core::Hashable
      
        # Operation create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Operation last update time. If the operation is done, this is also the finish
        # time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Metadata related to the progress of the SiteSearchEngineService.
      # DeleteTargetSite operation. This will be returned by the google.longrunning.
      # Operation.metadata field.
      class GoogleCloudDiscoveryengineV1alphaDeleteTargetSiteMetadata
        include Google::Apis::Core::Hashable
      
        # Operation create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Operation last update time. If the operation is done, this is also the finish
        # time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Metadata related to the progress of the SiteSearchEngineService.
      # DisableAdvancedSiteSearch operation. This will be returned by the google.
      # longrunning.Operation.metadata field.
      class GoogleCloudDiscoveryengineV1alphaDisableAdvancedSiteSearchMetadata
        include Google::Apis::Core::Hashable
      
        # Operation create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Operation last update time. If the operation is done, this is also the finish
        # time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Response message for SiteSearchEngineService.DisableAdvancedSiteSearch method.
      class GoogleCloudDiscoveryengineV1alphaDisableAdvancedSiteSearchResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Metadata related to the progress of the SiteSearchEngineService.
      # EnableAdvancedSiteSearch operation. This will be returned by the google.
      # longrunning.Operation.metadata field.
      class GoogleCloudDiscoveryengineV1alphaEnableAdvancedSiteSearchMetadata
        include Google::Apis::Core::Hashable
      
        # Operation create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Operation last update time. If the operation is done, this is also the finish
        # time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Response message for SiteSearchEngineService.EnableAdvancedSiteSearch method.
      class GoogleCloudDiscoveryengineV1alphaEnableAdvancedSiteSearchResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Metadata that describes the training and serving parameters of an Engine.
      class GoogleCloudDiscoveryengineV1alphaEngine
        include Google::Apis::Core::Hashable
      
        # Configurations for a Chat Engine.
        # Corresponds to the JSON property `chatEngineConfig`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfig]
        attr_accessor :chat_engine_config
      
        # Additional information of a Chat Engine. Fields in this message are output
        # only.
        # Corresponds to the JSON property `chatEngineMetadata`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaEngineChatEngineMetadata]
        attr_accessor :chat_engine_metadata
      
        # Common configurations for an Engine.
        # Corresponds to the JSON property `commonConfig`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaEngineCommonConfig]
        attr_accessor :common_config
      
        # Output only. Timestamp the Recommendation Engine was created at.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The data stores associated with this engine. For SOLUTION_TYPE_SEARCH and
        # SOLUTION_TYPE_RECOMMENDATION type of engines, they can only associate with at
        # most one data store. If solution_type is SOLUTION_TYPE_CHAT, multiple
        # DataStores in the same Collection can be associated here. Note that when used
        # in CreateEngineRequest, one DataStore id must be provided as the system will
        # use it for necessary intializations.
        # Corresponds to the JSON property `dataStoreIds`
        # @return [Array<String>]
        attr_accessor :data_store_ids
      
        # Required. The display name of the engine. Should be human readable. UTF-8
        # encoded string with limit of 1024 characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The industry vertical that the engine registers. The restriction of the Engine
        # industry vertical is based on DataStore: If unspecified, default to `GENERIC`.
        # Vertical on Engine has to match vertical of the DataStore liniked to the
        # engine.
        # Corresponds to the JSON property `industryVertical`
        # @return [String]
        attr_accessor :industry_vertical
      
        # Additional config specs for a Media Recommendation engine.
        # Corresponds to the JSON property `mediaRecommendationEngineConfig`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfig]
        attr_accessor :media_recommendation_engine_config
      
        # Immutable. The fully qualified resource name of the engine. This field must be
        # a UTF-8 encoded string with a length limit of 1024 characters. Format: `
        # projects/`project_number`/locations/`location`/collections/`collection`/
        # engines/`engine`` engine should be 1-63 characters, and valid characters are /
        # a-z0-9*/. Otherwise, an INVALID_ARGUMENT error is returned.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Additional information of a recommendation engine.
        # Corresponds to the JSON property `recommendationMetadata`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaEngineRecommendationMetadata]
        attr_accessor :recommendation_metadata
      
        # Configurations for a Search Engine.
        # Corresponds to the JSON property `searchEngineConfig`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfig]
        attr_accessor :search_engine_config
      
        # Additional config specs for a `similar-items` engine.
        # Corresponds to the JSON property `similarDocumentsConfig`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaEngineSimilarDocumentsEngineConfig]
        attr_accessor :similar_documents_config
      
        # Required. The solutions of the engine.
        # Corresponds to the JSON property `solutionType`
        # @return [String]
        attr_accessor :solution_type
      
        # Output only. Timestamp the Recommendation Engine was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @chat_engine_config = args[:chat_engine_config] if args.key?(:chat_engine_config)
          @chat_engine_metadata = args[:chat_engine_metadata] if args.key?(:chat_engine_metadata)
          @common_config = args[:common_config] if args.key?(:common_config)
          @create_time = args[:create_time] if args.key?(:create_time)
          @data_store_ids = args[:data_store_ids] if args.key?(:data_store_ids)
          @display_name = args[:display_name] if args.key?(:display_name)
          @industry_vertical = args[:industry_vertical] if args.key?(:industry_vertical)
          @media_recommendation_engine_config = args[:media_recommendation_engine_config] if args.key?(:media_recommendation_engine_config)
          @name = args[:name] if args.key?(:name)
          @recommendation_metadata = args[:recommendation_metadata] if args.key?(:recommendation_metadata)
          @search_engine_config = args[:search_engine_config] if args.key?(:search_engine_config)
          @similar_documents_config = args[:similar_documents_config] if args.key?(:similar_documents_config)
          @solution_type = args[:solution_type] if args.key?(:solution_type)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Configurations for a Chat Engine.
      class GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfig
        include Google::Apis::Core::Hashable
      
        # Configurations for generating a Dialogflow agent. Note that these
        # configurations are one-time consumed by and passed to Dialogflow service. It
        # means they cannot be retrieved using EngineService.GetEngine or EngineService.
        # ListEngines API after engine creation.
        # Corresponds to the JSON property `agentCreationConfig`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfigAgentCreationConfig]
        attr_accessor :agent_creation_config
      
        # The resource name of an exist Dialogflow agent to link to this Chat Engine.
        # Customers can either provide `agent_creation_config` to create agent or
        # provide an agent name that links the agent with the Chat engine. Format: `
        # projects//locations//agents/`. Note that the `dialogflow_agent_to_link` are
        # one-time consumed by and passed to Dialogflow service. It means they cannot be
        # retrieved using EngineService.GetEngine or EngineService.ListEngines API after
        # engine creation. Please use chat_engine_metadata.dialogflow_agent for actual
        # agent association after Engine is created.
        # Corresponds to the JSON property `dialogflowAgentToLink`
        # @return [String]
        attr_accessor :dialogflow_agent_to_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_creation_config = args[:agent_creation_config] if args.key?(:agent_creation_config)
          @dialogflow_agent_to_link = args[:dialogflow_agent_to_link] if args.key?(:dialogflow_agent_to_link)
        end
      end
      
      # Configurations for generating a Dialogflow agent. Note that these
      # configurations are one-time consumed by and passed to Dialogflow service. It
      # means they cannot be retrieved using EngineService.GetEngine or EngineService.
      # ListEngines API after engine creation.
      class GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfigAgentCreationConfig
        include Google::Apis::Core::Hashable
      
        # Name of the company, organization or other entity that the agent represents.
        # Used for knowledge connector LLM prompt and for knowledge search.
        # Corresponds to the JSON property `business`
        # @return [String]
        attr_accessor :business
      
        # Required. The default language of the agent as a language tag. See [Language
        # Support](https://cloud.google.com/dialogflow/docs/reference/language) for a
        # list of the currently supported language codes.
        # Corresponds to the JSON property `defaultLanguageCode`
        # @return [String]
        attr_accessor :default_language_code
      
        # Required. The time zone of the agent from the [time zone database](https://www.
        # iana.org/time-zones), e.g., America/New_York, Europe/Paris.
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @business = args[:business] if args.key?(:business)
          @default_language_code = args[:default_language_code] if args.key?(:default_language_code)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
        end
      end
      
      # Additional information of a Chat Engine. Fields in this message are output
      # only.
      class GoogleCloudDiscoveryengineV1alphaEngineChatEngineMetadata
        include Google::Apis::Core::Hashable
      
        # The resource name of a Dialogflow agent, that this Chat Engine refers to.
        # Format: `projects//locations//agents/`.
        # Corresponds to the JSON property `dialogflowAgent`
        # @return [String]
        attr_accessor :dialogflow_agent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dialogflow_agent = args[:dialogflow_agent] if args.key?(:dialogflow_agent)
        end
      end
      
      # Common configurations for an Engine.
      class GoogleCloudDiscoveryengineV1alphaEngineCommonConfig
        include Google::Apis::Core::Hashable
      
        # The name of the company, business or entity that is associated with the engine.
        # Setting this may help improve LLM related features.
        # Corresponds to the JSON property `companyName`
        # @return [String]
        attr_accessor :company_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @company_name = args[:company_name] if args.key?(:company_name)
        end
      end
      
      # Additional config specs for a Media Recommendation engine.
      class GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfig
        include Google::Apis::Core::Hashable
      
        # The optimization objective e.g. `cvr`. This field together with
        # optimization_objective describe engine metadata to use to control engine
        # training and serving. Currently supported values: `ctr`, `cvr`. If not
        # specified, we choose default based on engine type. Default depends on type of
        # recommendation: `recommended-for-you` => `ctr` `others-you-may-like` => `ctr`
        # Corresponds to the JSON property `optimizationObjective`
        # @return [String]
        attr_accessor :optimization_objective
      
        # Custom threshold for `cvr` optimization_objective.
        # Corresponds to the JSON property `optimizationObjectiveConfig`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig]
        attr_accessor :optimization_objective_config
      
        # The training state that the engine is in (e.g. `TRAINING` or `PAUSED`). Since
        # part of the cost of running the service is frequency of training - this can be
        # used to determine when to train engine in order to control cost. If not
        # specified: the default value for `CreateEngine` method is `TRAINING`. The
        # default value for `UpdateEngine` method is to keep the state the same as
        # before.
        # Corresponds to the JSON property `trainingState`
        # @return [String]
        attr_accessor :training_state
      
        # Required. The type of engine e.g. `recommended-for-you`. This field together
        # with optimization_objective describe engine metadata to use to control engine
        # training and serving. Currently supported values: `recommended-for-you`, `
        # others-you-may-like`, `more-like-this`, `most-popular-items`.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @optimization_objective = args[:optimization_objective] if args.key?(:optimization_objective)
          @optimization_objective_config = args[:optimization_objective_config] if args.key?(:optimization_objective_config)
          @training_state = args[:training_state] if args.key?(:training_state)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Custom threshold for `cvr` optimization_objective.
      class GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig
        include Google::Apis::Core::Hashable
      
        # Required. The name of the field to target. Currently supported values: `watch-
        # percentage`, `watch-time`.
        # Corresponds to the JSON property `targetField`
        # @return [String]
        attr_accessor :target_field
      
        # Required. The threshold to be applied to the target (e.g., 0.5).
        # Corresponds to the JSON property `targetFieldValueFloat`
        # @return [Float]
        attr_accessor :target_field_value_float
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @target_field = args[:target_field] if args.key?(:target_field)
          @target_field_value_float = args[:target_field_value_float] if args.key?(:target_field_value_float)
        end
      end
      
      # Additional information of a recommendation engine.
      class GoogleCloudDiscoveryengineV1alphaEngineRecommendationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The state of data requirements for this engine: `DATA_OK` and `
        # DATA_ERROR`. Engine cannot be trained if the data is in `DATA_ERROR` state.
        # Engine can have `DATA_ERROR` state even if serving state is `ACTIVE`: engines
        # were trained successfully before, but cannot be refreshed because the
        # underlying engine no longer has sufficient data for training.
        # Corresponds to the JSON property `dataState`
        # @return [String]
        attr_accessor :data_state
      
        # Output only. The timestamp when the latest successful tune finished. Only
        # applicable on Media Recommendation engines.
        # Corresponds to the JSON property `lastTuneTime`
        # @return [String]
        attr_accessor :last_tune_time
      
        # Output only. The serving state of the engine: `ACTIVE`, `NOT_ACTIVE`.
        # Corresponds to the JSON property `servingState`
        # @return [String]
        attr_accessor :serving_state
      
        # Output only. The latest tune operation id associated with the engine. Only
        # applicable on Media Recommendation engines. If present, this operation id can
        # be used to determine if there is an ongoing tune for this engine. To check the
        # operation status, send the GetOperation request with this operation id in the
        # engine resource format. If no tuning has happened for this engine, the string
        # is empty.
        # Corresponds to the JSON property `tuningOperation`
        # @return [String]
        attr_accessor :tuning_operation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_state = args[:data_state] if args.key?(:data_state)
          @last_tune_time = args[:last_tune_time] if args.key?(:last_tune_time)
          @serving_state = args[:serving_state] if args.key?(:serving_state)
          @tuning_operation = args[:tuning_operation] if args.key?(:tuning_operation)
        end
      end
      
      # Configurations for a Search Engine.
      class GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfig
        include Google::Apis::Core::Hashable
      
        # The add-on that this search engine enables.
        # Corresponds to the JSON property `searchAddOns`
        # @return [Array<String>]
        attr_accessor :search_add_ons
      
        # The search feature tier of this engine. Different tiers might have different
        # pricing. To learn more, please check the pricing documentation. Defaults to
        # SearchTier.SEARCH_TIER_STANDARD if not specified.
        # Corresponds to the JSON property `searchTier`
        # @return [String]
        attr_accessor :search_tier
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @search_add_ons = args[:search_add_ons] if args.key?(:search_add_ons)
          @search_tier = args[:search_tier] if args.key?(:search_tier)
        end
      end
      
      # Additional config specs for a `similar-items` engine.
      class GoogleCloudDiscoveryengineV1alphaEngineSimilarDocumentsEngineConfig
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Configurations for fields of a schema. For example, configuring a field is
      # indexable, or searchable.
      class GoogleCloudDiscoveryengineV1alphaFieldConfig
        include Google::Apis::Core::Hashable
      
        # If completable_option is COMPLETABLE_ENABLED, field values are directly used
        # and returned as suggestions for Autocomplete in CompletionService.
        # CompleteQuery. If completable_option is unset, the server behavior defaults to
        # COMPLETABLE_DISABLED for fields that support setting completable options,
        # which are just `string` fields. For those fields that do not support setting
        # completable options, the server will skip completable option setting, and
        # setting completable_option for those fields will throw `INVALID_ARGUMENT`
        # error.
        # Corresponds to the JSON property `completableOption`
        # @return [String]
        attr_accessor :completable_option
      
        # If dynamic_facetable_option is DYNAMIC_FACETABLE_ENABLED, field values are
        # available for dynamic facet. Could only be DYNAMIC_FACETABLE_DISABLED if
        # FieldConfig.indexable_option is INDEXABLE_DISABLED. Otherwise, an `
        # INVALID_ARGUMENT` error will be returned. If dynamic_facetable_option is unset,
        # the server behavior defaults to DYNAMIC_FACETABLE_DISABLED for fields that
        # support setting dynamic facetable options. For those fields that do not
        # support setting dynamic facetable options, such as `object` and `boolean`, the
        # server will skip dynamic facetable option setting, and setting
        # dynamic_facetable_option for those fields will throw `INVALID_ARGUMENT` error.
        # Corresponds to the JSON property `dynamicFacetableOption`
        # @return [String]
        attr_accessor :dynamic_facetable_option
      
        # Required. Field path of the schema field. For example: `title`, `description`,
        # `release_info.release_year`.
        # Corresponds to the JSON property `fieldPath`
        # @return [String]
        attr_accessor :field_path
      
        # Output only. Raw type of the field.
        # Corresponds to the JSON property `fieldType`
        # @return [String]
        attr_accessor :field_type
      
        # If indexable_option is INDEXABLE_ENABLED, field values are indexed so that it
        # can be filtered or faceted in SearchService.Search. If indexable_option is
        # unset, the server behavior defaults to INDEXABLE_DISABLED for fields that
        # support setting indexable options. For those fields that do not support
        # setting indexable options, such as `object` and `boolean` and key properties,
        # the server will skip indexable_option setting, and setting indexable_option
        # for those fields will throw `INVALID_ARGUMENT` error.
        # Corresponds to the JSON property `indexableOption`
        # @return [String]
        attr_accessor :indexable_option
      
        # Output only. Type of the key property that this field is mapped to. Empty
        # string if this is not annotated as mapped to a key property. Example types are
        # `title`, `description`. Full list is defined by `keyPropertyMapping` in the
        # schema field annotation. If the schema field has a `KeyPropertyMapping`
        # annotation, `indexable_option` and `searchable_option` of this field cannot be
        # modified.
        # Corresponds to the JSON property `keyPropertyType`
        # @return [String]
        attr_accessor :key_property_type
      
        # If recs_filterable_option is FILTERABLE_ENABLED, field values are filterable
        # by filter expression in RecommendationService.Recommend. If FILTERABLE_ENABLED
        # but the field type is numerical, field values are not filterable by text
        # queries in RecommendationService.Recommend. Only textual fields are supported.
        # If recs_filterable_option is unset, the default setting is FILTERABLE_DISABLED
        # for fields that support setting filterable options. When a field set to [
        # FILTERABLE_DISABLED] is filtered, a warning is generated and an empty result
        # is returned.
        # Corresponds to the JSON property `recsFilterableOption`
        # @return [String]
        attr_accessor :recs_filterable_option
      
        # If retrievable_option is RETRIEVABLE_ENABLED, field values are included in the
        # search results. If retrievable_option is unset, the server behavior defaults
        # to RETRIEVABLE_DISABLED for fields that support setting retrievable options.
        # For those fields that do not support setting retrievable options, such as `
        # object` and `boolean`, the server will skip retrievable option setting, and
        # setting retrievable_option for those fields will throw `INVALID_ARGUMENT`
        # error.
        # Corresponds to the JSON property `retrievableOption`
        # @return [String]
        attr_accessor :retrievable_option
      
        # If searchable_option is SEARCHABLE_ENABLED, field values are searchable by
        # text queries in SearchService.Search. If SEARCHABLE_ENABLED but field type is
        # numerical, field values will not be searchable by text queries in
        # SearchService.Search, as there are no text values associated to numerical
        # fields. If searchable_option is unset, the server behavior defaults to
        # SEARCHABLE_DISABLED for fields that support setting searchable options. Only `
        # string` fields that have no key property mapping support setting
        # searchable_option. For those fields that do not support setting searchable
        # options, the server will skip searchable option setting, and setting
        # searchable_option for those fields will throw `INVALID_ARGUMENT` error.
        # Corresponds to the JSON property `searchableOption`
        # @return [String]
        attr_accessor :searchable_option
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @completable_option = args[:completable_option] if args.key?(:completable_option)
          @dynamic_facetable_option = args[:dynamic_facetable_option] if args.key?(:dynamic_facetable_option)
          @field_path = args[:field_path] if args.key?(:field_path)
          @field_type = args[:field_type] if args.key?(:field_type)
          @indexable_option = args[:indexable_option] if args.key?(:indexable_option)
          @key_property_type = args[:key_property_type] if args.key?(:key_property_type)
          @recs_filterable_option = args[:recs_filterable_option] if args.key?(:recs_filterable_option)
          @retrievable_option = args[:retrievable_option] if args.key?(:retrievable_option)
          @searchable_option = args[:searchable_option] if args.key?(:searchable_option)
        end
      end
      
      # Metadata related to the progress of the ImportDocuments operation. This is
      # returned by the google.longrunning.Operation.metadata field.
      class GoogleCloudDiscoveryengineV1alphaImportDocumentsMetadata
        include Google::Apis::Core::Hashable
      
        # Operation create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Count of entries that encountered errors while processing.
        # Corresponds to the JSON property `failureCount`
        # @return [Fixnum]
        attr_accessor :failure_count
      
        # Count of entries that were processed successfully.
        # Corresponds to the JSON property `successCount`
        # @return [Fixnum]
        attr_accessor :success_count
      
        # Operation last update time. If the operation is done, this is also the finish
        # time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @failure_count = args[:failure_count] if args.key?(:failure_count)
          @success_count = args[:success_count] if args.key?(:success_count)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Response of the ImportDocumentsRequest. If the long running operation is done,
      # then this message is returned by the google.longrunning.Operations.response
      # field if the operation was successful.
      class GoogleCloudDiscoveryengineV1alphaImportDocumentsResponse
        include Google::Apis::Core::Hashable
      
        # Configuration of destination for Import related errors.
        # Corresponds to the JSON property `errorConfig`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaImportErrorConfig]
        attr_accessor :error_config
      
        # A sample of errors encountered while processing the request.
        # Corresponds to the JSON property `errorSamples`
        # @return [Array<Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus>]
        attr_accessor :error_samples
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_config = args[:error_config] if args.key?(:error_config)
          @error_samples = args[:error_samples] if args.key?(:error_samples)
        end
      end
      
      # Configuration of destination for Import related errors.
      class GoogleCloudDiscoveryengineV1alphaImportErrorConfig
        include Google::Apis::Core::Hashable
      
        # Cloud Storage prefix for import errors. This must be an empty, existing Cloud
        # Storage directory. Import errors are written to sharded files in this
        # directory, one per line, as a JSON-encoded `google.rpc.Status` message.
        # Corresponds to the JSON property `gcsPrefix`
        # @return [String]
        attr_accessor :gcs_prefix
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_prefix = args[:gcs_prefix] if args.key?(:gcs_prefix)
        end
      end
      
      # Metadata related to the progress of the Import operation. This is returned by
      # the google.longrunning.Operation.metadata field.
      class GoogleCloudDiscoveryengineV1alphaImportUserEventsMetadata
        include Google::Apis::Core::Hashable
      
        # Operation create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Count of entries that encountered errors while processing.
        # Corresponds to the JSON property `failureCount`
        # @return [Fixnum]
        attr_accessor :failure_count
      
        # Count of entries that were processed successfully.
        # Corresponds to the JSON property `successCount`
        # @return [Fixnum]
        attr_accessor :success_count
      
        # Operation last update time. If the operation is done, this is also the finish
        # time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @failure_count = args[:failure_count] if args.key?(:failure_count)
          @success_count = args[:success_count] if args.key?(:success_count)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Response of the ImportUserEventsRequest. If the long running operation was
      # successful, then this message is returned by the google.longrunning.Operations.
      # response field if the operation was successful.
      class GoogleCloudDiscoveryengineV1alphaImportUserEventsResponse
        include Google::Apis::Core::Hashable
      
        # Configuration of destination for Import related errors.
        # Corresponds to the JSON property `errorConfig`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaImportErrorConfig]
        attr_accessor :error_config
      
        # A sample of errors encountered while processing the request.
        # Corresponds to the JSON property `errorSamples`
        # @return [Array<Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus>]
        attr_accessor :error_samples
      
        # Count of user events imported with complete existing Documents.
        # Corresponds to the JSON property `joinedEventsCount`
        # @return [Fixnum]
        attr_accessor :joined_events_count
      
        # Count of user events imported, but with Document information not found in the
        # existing Branch.
        # Corresponds to the JSON property `unjoinedEventsCount`
        # @return [Fixnum]
        attr_accessor :unjoined_events_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_config = args[:error_config] if args.key?(:error_config)
          @error_samples = args[:error_samples] if args.key?(:error_samples)
          @joined_events_count = args[:joined_events_count] if args.key?(:joined_events_count)
          @unjoined_events_count = args[:unjoined_events_count] if args.key?(:unjoined_events_count)
        end
      end
      
      # Metadata related to the progress of the PurgeDocuments operation. This will be
      # returned by the google.longrunning.Operation.metadata field.
      class GoogleCloudDiscoveryengineV1alphaPurgeDocumentsMetadata
        include Google::Apis::Core::Hashable
      
        # Operation create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Count of entries that encountered errors while processing.
        # Corresponds to the JSON property `failureCount`
        # @return [Fixnum]
        attr_accessor :failure_count
      
        # Count of entries that were deleted successfully.
        # Corresponds to the JSON property `successCount`
        # @return [Fixnum]
        attr_accessor :success_count
      
        # Operation last update time. If the operation is done, this is also the finish
        # time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @failure_count = args[:failure_count] if args.key?(:failure_count)
          @success_count = args[:success_count] if args.key?(:success_count)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Response message for DocumentService.PurgeDocuments method. If the long
      # running operation is successfully done, then this message is returned by the
      # google.longrunning.Operations.response field.
      class GoogleCloudDiscoveryengineV1alphaPurgeDocumentsResponse
        include Google::Apis::Core::Hashable
      
        # The total count of documents purged as a result of the operation.
        # Corresponds to the JSON property `purgeCount`
        # @return [Fixnum]
        attr_accessor :purge_count
      
        # A sample of document names that will be deleted. Only populated if `force` is
        # set to false. A max of 100 names will be returned and the names are chosen at
        # random.
        # Corresponds to the JSON property `purgeSample`
        # @return [Array<String>]
        attr_accessor :purge_sample
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @purge_count = args[:purge_count] if args.key?(:purge_count)
          @purge_sample = args[:purge_sample] if args.key?(:purge_sample)
        end
      end
      
      # Metadata related to the progress of the PurgeUserEvents operation. This will
      # be returned by the google.longrunning.Operation.metadata field.
      class GoogleCloudDiscoveryengineV1alphaPurgeUserEventsMetadata
        include Google::Apis::Core::Hashable
      
        # Operation create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Count of entries that encountered errors while processing.
        # Corresponds to the JSON property `failureCount`
        # @return [Fixnum]
        attr_accessor :failure_count
      
        # Count of entries that were deleted successfully.
        # Corresponds to the JSON property `successCount`
        # @return [Fixnum]
        attr_accessor :success_count
      
        # Operation last update time. If the operation is done, this is also the finish
        # time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @failure_count = args[:failure_count] if args.key?(:failure_count)
          @success_count = args[:success_count] if args.key?(:success_count)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Response of the PurgeUserEventsRequest. If the long running operation is
      # successfully done, then this message is returned by the google.longrunning.
      # Operations.response field.
      class GoogleCloudDiscoveryengineV1alphaPurgeUserEventsResponse
        include Google::Apis::Core::Hashable
      
        # The total count of events purged as a result of the operation.
        # Corresponds to the JSON property `purgeCount`
        # @return [Fixnum]
        attr_accessor :purge_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @purge_count = args[:purge_count] if args.key?(:purge_count)
        end
      end
      
      # Metadata related to the progress of the SiteSearchEngineService.RecrawlUris
      # operation. This will be returned by the google.longrunning.Operation.metadata
      # field.
      class GoogleCloudDiscoveryengineV1alphaRecrawlUrisMetadata
        include Google::Apis::Core::Hashable
      
        # Operation create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Unique URIs in the request that don't match any TargetSite in the DataStore,
        # only match TargetSites that haven't been fully indexed, or match a TargetSite
        # with type EXCLUDE.
        # Corresponds to the JSON property `invalidUris`
        # @return [Array<String>]
        attr_accessor :invalid_uris
      
        # Total number of URIs that have yet to be crawled.
        # Corresponds to the JSON property `pendingCount`
        # @return [Fixnum]
        attr_accessor :pending_count
      
        # Total number of URIs that were rejected due to insufficient indexing resources.
        # Corresponds to the JSON property `quotaExceededCount`
        # @return [Fixnum]
        attr_accessor :quota_exceeded_count
      
        # Total number of URIs that have been crawled so far.
        # Corresponds to the JSON property `successCount`
        # @return [Fixnum]
        attr_accessor :success_count
      
        # Operation last update time. If the operation is done, this is also the finish
        # time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Total number of unique URIs in the request that are not in invalid_uris.
        # Corresponds to the JSON property `validUrisCount`
        # @return [Fixnum]
        attr_accessor :valid_uris_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @invalid_uris = args[:invalid_uris] if args.key?(:invalid_uris)
          @pending_count = args[:pending_count] if args.key?(:pending_count)
          @quota_exceeded_count = args[:quota_exceeded_count] if args.key?(:quota_exceeded_count)
          @success_count = args[:success_count] if args.key?(:success_count)
          @update_time = args[:update_time] if args.key?(:update_time)
          @valid_uris_count = args[:valid_uris_count] if args.key?(:valid_uris_count)
        end
      end
      
      # Response message for SiteSearchEngineService.RecrawlUris method.
      class GoogleCloudDiscoveryengineV1alphaRecrawlUrisResponse
        include Google::Apis::Core::Hashable
      
        # URIs that were not crawled before the LRO terminated.
        # Corresponds to the JSON property `failedUris`
        # @return [Array<String>]
        attr_accessor :failed_uris
      
        # Details for a sample of up to 10 `failed_uris`.
        # Corresponds to the JSON property `failureSamples`
        # @return [Array<Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaRecrawlUrisResponseFailureInfo>]
        attr_accessor :failure_samples
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @failed_uris = args[:failed_uris] if args.key?(:failed_uris)
          @failure_samples = args[:failure_samples] if args.key?(:failure_samples)
        end
      end
      
      # Details about why a particular URI failed to be crawled. Each FailureInfo
      # contains one FailureReason per CorpusType.
      class GoogleCloudDiscoveryengineV1alphaRecrawlUrisResponseFailureInfo
        include Google::Apis::Core::Hashable
      
        # List of failure reasons by corpus type (e.g. desktop, mobile).
        # Corresponds to the JSON property `failureReasons`
        # @return [Array<Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaRecrawlUrisResponseFailureInfoFailureReason>]
        attr_accessor :failure_reasons
      
        # URI that failed to be crawled.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @failure_reasons = args[:failure_reasons] if args.key?(:failure_reasons)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Details about why crawling failed for a particular CorpusType, e.g. DESKTOP
      # and MOBILE crawling may fail for different reasons.
      class GoogleCloudDiscoveryengineV1alphaRecrawlUrisResponseFailureInfoFailureReason
        include Google::Apis::Core::Hashable
      
        # DESKTOP, MOBILE, or CORPUS_TYPE_UNSPECIFIED.
        # Corresponds to the JSON property `corpusType`
        # @return [String]
        attr_accessor :corpus_type
      
        # Reason why the URI was not crawled.
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @corpus_type = args[:corpus_type] if args.key?(:corpus_type)
          @error_message = args[:error_message] if args.key?(:error_message)
        end
      end
      
      # Defines the structure and layout of a type of document data.
      class GoogleCloudDiscoveryengineV1alphaSchema
        include Google::Apis::Core::Hashable
      
        # Output only. Configurations for fields of the schema.
        # Corresponds to the JSON property `fieldConfigs`
        # @return [Array<Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaFieldConfig>]
        attr_accessor :field_configs
      
        # The JSON representation of the schema.
        # Corresponds to the JSON property `jsonSchema`
        # @return [String]
        attr_accessor :json_schema
      
        # Immutable. The full resource name of the schema, in the format of `projects/`
        # project`/locations/`location`/collections/`collection`/dataStores/`data_store`/
        # schemas/`schema``. This field must be a UTF-8 encoded string with a length
        # limit of 1024 characters.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The structured representation of the schema.
        # Corresponds to the JSON property `structSchema`
        # @return [Hash<String,Object>]
        attr_accessor :struct_schema
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field_configs = args[:field_configs] if args.key?(:field_configs)
          @json_schema = args[:json_schema] if args.key?(:json_schema)
          @name = args[:name] if args.key?(:name)
          @struct_schema = args[:struct_schema] if args.key?(:struct_schema)
        end
      end
      
      # Verification information for target sites in advanced site search.
      class GoogleCloudDiscoveryengineV1alphaSiteVerificationInfo
        include Google::Apis::Core::Hashable
      
        # Site verification state indicating the ownership and validity.
        # Corresponds to the JSON property `siteVerificationState`
        # @return [String]
        attr_accessor :site_verification_state
      
        # Latest site verification time.
        # Corresponds to the JSON property `verifyTime`
        # @return [String]
        attr_accessor :verify_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @site_verification_state = args[:site_verification_state] if args.key?(:site_verification_state)
          @verify_time = args[:verify_time] if args.key?(:verify_time)
        end
      end
      
      # A target site for the SiteSearchEngine.
      class GoogleCloudDiscoveryengineV1alphaTargetSite
        include Google::Apis::Core::Hashable
      
        # Input only. If set to false, a uri_pattern is generated to include all pages
        # whose address contains the provided_uri_pattern. If set to true, an
        # uri_pattern is generated to try to be an exact match of the
        # provided_uri_pattern or just the specific page if the provided_uri_pattern is
        # a specific one. provided_uri_pattern is always normalized to generate the URI
        # pattern to be used by the search engine.
        # Corresponds to the JSON property `exactMatch`
        # @return [Boolean]
        attr_accessor :exact_match
        alias_method :exact_match?, :exact_match
      
        # Site search indexing failure reasons.
        # Corresponds to the JSON property `failureReason`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaTargetSiteFailureReason]
        attr_accessor :failure_reason
      
        # Output only. This is system-generated based on the provided_uri_pattern.
        # Corresponds to the JSON property `generatedUriPattern`
        # @return [String]
        attr_accessor :generated_uri_pattern
      
        # Output only. Indexing status.
        # Corresponds to the JSON property `indexingStatus`
        # @return [String]
        attr_accessor :indexing_status
      
        # Output only. The fully qualified resource name of the target site. `projects/`
        # project`/locations/`location`/collections/`collection`/dataStores/`data_store`/
        # siteSearchEngine/targetSites/`target_site`` The `target_site_id` is system-
        # generated.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Input only. The user provided URI pattern from which the `
        # generated_uri_pattern` is generated.
        # Corresponds to the JSON property `providedUriPattern`
        # @return [String]
        attr_accessor :provided_uri_pattern
      
        # Verification information for target sites in advanced site search.
        # Corresponds to the JSON property `siteVerificationInfo`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaSiteVerificationInfo]
        attr_accessor :site_verification_info
      
        # The type of the target site, e.g. whether the site is to be included or
        # excluded.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Output only. The target site's last updated time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exact_match = args[:exact_match] if args.key?(:exact_match)
          @failure_reason = args[:failure_reason] if args.key?(:failure_reason)
          @generated_uri_pattern = args[:generated_uri_pattern] if args.key?(:generated_uri_pattern)
          @indexing_status = args[:indexing_status] if args.key?(:indexing_status)
          @name = args[:name] if args.key?(:name)
          @provided_uri_pattern = args[:provided_uri_pattern] if args.key?(:provided_uri_pattern)
          @site_verification_info = args[:site_verification_info] if args.key?(:site_verification_info)
          @type = args[:type] if args.key?(:type)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Site search indexing failure reasons.
      class GoogleCloudDiscoveryengineV1alphaTargetSiteFailureReason
        include Google::Apis::Core::Hashable
      
        # Failed due to insufficient quota.
        # Corresponds to the JSON property `quotaFailure`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1alphaTargetSiteFailureReasonQuotaFailure]
        attr_accessor :quota_failure
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @quota_failure = args[:quota_failure] if args.key?(:quota_failure)
        end
      end
      
      # 
      class GoogleCloudDiscoveryengineV1alphaTargetSiteFailureReasonQuotaFailure
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Metadata associated with a tune operation.
      class GoogleCloudDiscoveryengineV1alphaTuneEngineMetadata
        include Google::Apis::Core::Hashable
      
        # Required. The resource name of the engine that this tune applies to. Format: `
        # projects/`project_number`/locations/`location_id`/collections/`collection_id`/
        # engines/`engine_id``
        # Corresponds to the JSON property `engine`
        # @return [String]
        attr_accessor :engine
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @engine = args[:engine] if args.key?(:engine)
        end
      end
      
      # Response associated with a tune operation.
      class GoogleCloudDiscoveryengineV1alphaTuneEngineResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Metadata for UpdateSchema LRO.
      class GoogleCloudDiscoveryengineV1alphaUpdateSchemaMetadata
        include Google::Apis::Core::Hashable
      
        # Operation create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Operation last update time. If the operation is done, this is also the finish
        # time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Metadata related to the progress of the SiteSearchEngineService.
      # UpdateTargetSite operation. This will be returned by the google.longrunning.
      # Operation.metadata field.
      class GoogleCloudDiscoveryengineV1alphaUpdateTargetSiteMetadata
        include Google::Apis::Core::Hashable
      
        # Operation create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Operation last update time. If the operation is done, this is also the finish
        # time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # BigQuery source import data from.
      class GoogleCloudDiscoveryengineV1betaBigQuerySource
        include Google::Apis::Core::Hashable
      
        # The schema to use when parsing the data from the source. Supported values for
        # user event imports: * `user_event` (default): One UserEvent per row. Supported
        # values for document imports: * `document` (default): One Document format per
        # row. Each document must have a valid Document.id and one of Document.json_data
        # or Document.struct_data. * `custom`: One custom data per row in arbitrary
        # format that conforms to the defined Schema of the data store. This can only be
        # used by Gen App Builder.
        # Corresponds to the JSON property `dataSchema`
        # @return [String]
        attr_accessor :data_schema
      
        # Required. The BigQuery data set to copy the data from with a length limit of 1,
        # 024 characters.
        # Corresponds to the JSON property `datasetId`
        # @return [String]
        attr_accessor :dataset_id
      
        # Intermediate Cloud Storage directory used for the import with a length limit
        # of 2,000 characters. Can be specified if one wants to have the BigQuery export
        # to a specific Cloud Storage directory.
        # Corresponds to the JSON property `gcsStagingDir`
        # @return [String]
        attr_accessor :gcs_staging_dir
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `partitionDate`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleTypeDate]
        attr_accessor :partition_date
      
        # The project ID (can be project # or ID) that the BigQuery source is in with a
        # length limit of 128 characters. If not specified, inherits the project ID from
        # the parent request.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Required. The BigQuery table to copy the data from with a length limit of 1,
        # 024 characters.
        # Corresponds to the JSON property `tableId`
        # @return [String]
        attr_accessor :table_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_schema = args[:data_schema] if args.key?(:data_schema)
          @dataset_id = args[:dataset_id] if args.key?(:dataset_id)
          @gcs_staging_dir = args[:gcs_staging_dir] if args.key?(:gcs_staging_dir)
          @partition_date = args[:partition_date] if args.key?(:partition_date)
          @project_id = args[:project_id] if args.key?(:project_id)
          @table_id = args[:table_id] if args.key?(:table_id)
        end
      end
      
      # Response message for CompletionService.CompleteQuery method.
      class GoogleCloudDiscoveryengineV1betaCompleteQueryResponse
        include Google::Apis::Core::Hashable
      
        # Results of the matched query suggestions. The result list is ordered and the
        # first result is a top suggestion.
        # Corresponds to the JSON property `querySuggestions`
        # @return [Array<Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCompleteQueryResponseQuerySuggestion>]
        attr_accessor :query_suggestions
      
        # True if the returned suggestions are all tail suggestions. For tail matching
        # to be triggered, include_tail_suggestions in the request must be true and
        # there must be no suggestions that match the full query.
        # Corresponds to the JSON property `tailMatchTriggered`
        # @return [Boolean]
        attr_accessor :tail_match_triggered
        alias_method :tail_match_triggered?, :tail_match_triggered
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @query_suggestions = args[:query_suggestions] if args.key?(:query_suggestions)
          @tail_match_triggered = args[:tail_match_triggered] if args.key?(:tail_match_triggered)
        end
      end
      
      # Suggestions as search queries.
      class GoogleCloudDiscoveryengineV1betaCompleteQueryResponseQuerySuggestion
        include Google::Apis::Core::Hashable
      
        # The unique document field paths that serve as the source of this suggestion if
        # it was generated from completable fields. This field is only populated for the
        # document-completable model.
        # Corresponds to the JSON property `completableFieldPaths`
        # @return [Array<String>]
        attr_accessor :completable_field_paths
      
        # The suggestion for the query.
        # Corresponds to the JSON property `suggestion`
        # @return [String]
        attr_accessor :suggestion
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @completable_field_paths = args[:completable_field_paths] if args.key?(:completable_field_paths)
          @suggestion = args[:suggestion] if args.key?(:suggestion)
        end
      end
      
      # Detailed completion information including completion attribution token and
      # clicked completion info.
      class GoogleCloudDiscoveryengineV1betaCompletionInfo
        include Google::Apis::Core::Hashable
      
        # End user selected CompleteQueryResponse.QuerySuggestion.suggestion position,
        # starting from 0.
        # Corresponds to the JSON property `selectedPosition`
        # @return [Fixnum]
        attr_accessor :selected_position
      
        # End user selected CompleteQueryResponse.QuerySuggestion.suggestion.
        # Corresponds to the JSON property `selectedSuggestion`
        # @return [String]
        attr_accessor :selected_suggestion
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @selected_position = args[:selected_position] if args.key?(:selected_position)
          @selected_suggestion = args[:selected_suggestion] if args.key?(:selected_suggestion)
        end
      end
      
      # External conversation proto definition.
      class GoogleCloudDiscoveryengineV1betaConversation
        include Google::Apis::Core::Hashable
      
        # Output only. The time the conversation finished.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Conversation messages.
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversationMessage>]
        attr_accessor :messages
      
        # Immutable. Fully qualified name `project/*/locations/global/collections/`
        # collection`/dataStore/*/conversations/*` or `project/*/locations/global/
        # collections/`collection`/engines/*/conversations/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The time the conversation started.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # The state of the Conversation.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # A unique identifier for tracking users.
        # Corresponds to the JSON property `userPseudoId`
        # @return [String]
        attr_accessor :user_pseudo_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @messages = args[:messages] if args.key?(:messages)
          @name = args[:name] if args.key?(:name)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
          @user_pseudo_id = args[:user_pseudo_id] if args.key?(:user_pseudo_id)
        end
      end
      
      # Defines context of the conversation
      class GoogleCloudDiscoveryengineV1betaConversationContext
        include Google::Apis::Core::Hashable
      
        # The current active document the user opened. It contains the document resource
        # reference.
        # Corresponds to the JSON property `activeDocument`
        # @return [String]
        attr_accessor :active_document
      
        # The current list of documents the user is seeing. It contains the document
        # resource references.
        # Corresponds to the JSON property `contextDocuments`
        # @return [Array<String>]
        attr_accessor :context_documents
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active_document = args[:active_document] if args.key?(:active_document)
          @context_documents = args[:context_documents] if args.key?(:context_documents)
        end
      end
      
      # Defines a conversation message.
      class GoogleCloudDiscoveryengineV1betaConversationMessage
        include Google::Apis::Core::Hashable
      
        # Output only. Message creation timestamp.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Defines a reply message to user.
        # Corresponds to the JSON property `reply`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaReply]
        attr_accessor :reply
      
        # Defines text input.
        # Corresponds to the JSON property `userInput`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaTextInput]
        attr_accessor :user_input
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @reply = args[:reply] if args.key?(:reply)
          @user_input = args[:user_input] if args.key?(:user_input)
        end
      end
      
      # Request message for ConversationalSearchService.ConverseConversation method.
      class GoogleCloudDiscoveryengineV1betaConverseConversationRequest
        include Google::Apis::Core::Hashable
      
        # External conversation proto definition.
        # Corresponds to the JSON property `conversation`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation]
        attr_accessor :conversation
      
        # Defines text input.
        # Corresponds to the JSON property `query`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaTextInput]
        attr_accessor :query
      
        # Whether to turn on safe search.
        # Corresponds to the JSON property `safeSearch`
        # @return [Boolean]
        attr_accessor :safe_search
        alias_method :safe_search?, :safe_search
      
        # The resource name of the Serving Config to use. Format: `projects/`
        # project_number`/locations/`location_id`/collections/`collection`/dataStores/`
        # data_store_id`/servingConfigs/`serving_config_id`` If this is not set, the
        # default serving config will be used.
        # Corresponds to the JSON property `servingConfig`
        # @return [String]
        attr_accessor :serving_config
      
        # A specification for configuring a summary returned in a search response.
        # Corresponds to the JSON property `summarySpec`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpec]
        attr_accessor :summary_spec
      
        # The user labels applied to a resource must meet the following requirements: *
        # Each resource can have multiple labels, up to a maximum of 64. * Each label
        # must be a key-value pair. * Keys have a minimum length of 1 character and a
        # maximum length of 63 characters and cannot be empty. Values can be empty and
        # have a maximum length of 63 characters. * Keys and values can contain only
        # lowercase letters, numeric characters, underscores, and dashes. All characters
        # must use UTF-8 encoding, and international characters are allowed. * The key
        # portion of a label must be unique. However, you can use the same key with
        # multiple resources. * Keys must start with a lowercase letter or international
        # character. See [Google Cloud Document](https://cloud.google.com/resource-
        # manager/docs/creating-managing-labels#requirements) for more details.
        # Corresponds to the JSON property `userLabels`
        # @return [Hash<String,String>]
        attr_accessor :user_labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation = args[:conversation] if args.key?(:conversation)
          @query = args[:query] if args.key?(:query)
          @safe_search = args[:safe_search] if args.key?(:safe_search)
          @serving_config = args[:serving_config] if args.key?(:serving_config)
          @summary_spec = args[:summary_spec] if args.key?(:summary_spec)
          @user_labels = args[:user_labels] if args.key?(:user_labels)
        end
      end
      
      # Response message for ConversationalSearchService.ConverseConversation method.
      class GoogleCloudDiscoveryengineV1betaConverseConversationResponse
        include Google::Apis::Core::Hashable
      
        # External conversation proto definition.
        # Corresponds to the JSON property `conversation`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation]
        attr_accessor :conversation
      
        # Suggested related questions.
        # Corresponds to the JSON property `relatedQuestions`
        # @return [Array<String>]
        attr_accessor :related_questions
      
        # Defines a reply message to user.
        # Corresponds to the JSON property `reply`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaReply]
        attr_accessor :reply
      
        # Search Results.
        # Corresponds to the JSON property `searchResults`
        # @return [Array<Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseSearchResult>]
        attr_accessor :search_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation = args[:conversation] if args.key?(:conversation)
          @related_questions = args[:related_questions] if args.key?(:related_questions)
          @reply = args[:reply] if args.key?(:reply)
          @search_results = args[:search_results] if args.key?(:search_results)
        end
      end
      
      # Metadata for Create Schema LRO.
      class GoogleCloudDiscoveryengineV1betaCreateSchemaMetadata
        include Google::Apis::Core::Hashable
      
        # Operation create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Operation last update time. If the operation is done, this is also the finish
        # time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A custom attribute that is not explicitly modeled in a resource, e.g.
      # UserEvent.
      class GoogleCloudDiscoveryengineV1betaCustomAttribute
        include Google::Apis::Core::Hashable
      
        # The numerical values of this custom attribute. For example, `[2.3, 15.4]` when
        # the key is "lengths_cm". Exactly one of CustomAttribute.text or
        # CustomAttribute.numbers should be set. Otherwise, an `INVALID_ARGUMENT` error
        # is returned.
        # Corresponds to the JSON property `numbers`
        # @return [Array<Float>]
        attr_accessor :numbers
      
        # The textual values of this custom attribute. For example, `["yellow", "green"]`
        # when the key is "color". Empty string is not allowed. Otherwise, an `
        # INVALID_ARGUMENT` error is returned. Exactly one of CustomAttribute.text or
        # CustomAttribute.numbers should be set. Otherwise, an `INVALID_ARGUMENT` error
        # is returned.
        # Corresponds to the JSON property `text`
        # @return [Array<String>]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @numbers = args[:numbers] if args.key?(:numbers)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # Metadata for DeleteSchema LRO.
      class GoogleCloudDiscoveryengineV1betaDeleteSchemaMetadata
        include Google::Apis::Core::Hashable
      
        # Operation create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Operation last update time. If the operation is done, this is also the finish
        # time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Document captures all raw metadata information of items to be recommended or
      # searched.
      class GoogleCloudDiscoveryengineV1betaDocument
        include Google::Apis::Core::Hashable
      
        # Unstructured data linked to this document.
        # Corresponds to the JSON property `content`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocumentContent]
        attr_accessor :content
      
        # Output only. This field is OUTPUT_ONLY. It contains derived data that are not
        # in the original input document.
        # Corresponds to the JSON property `derivedStructData`
        # @return [Hash<String,Object>]
        attr_accessor :derived_struct_data
      
        # Immutable. The identifier of the document. Id should conform to [RFC-1034](
        # https://tools.ietf.org/html/rfc1034) standard with a length limit of 63
        # characters.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The JSON string representation of the document. It should conform to the
        # registered Schema or an `INVALID_ARGUMENT` error is thrown.
        # Corresponds to the JSON property `jsonData`
        # @return [String]
        attr_accessor :json_data
      
        # Immutable. The full resource name of the document. Format: `projects/`project`/
        # locations/`location`/collections/`collection`/dataStores/`data_store`/branches/
        # `branch`/documents/`document_id``. This field must be a UTF-8 encoded string
        # with a length limit of 1024 characters.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The identifier of the parent document. Currently supports at most two level
        # document hierarchy. Id should conform to [RFC-1034](https://tools.ietf.org/
        # html/rfc1034) standard with a length limit of 63 characters.
        # Corresponds to the JSON property `parentDocumentId`
        # @return [String]
        attr_accessor :parent_document_id
      
        # The identifier of the schema located in the same data store.
        # Corresponds to the JSON property `schemaId`
        # @return [String]
        attr_accessor :schema_id
      
        # The structured JSON data for the document. It should conform to the registered
        # Schema or an `INVALID_ARGUMENT` error is thrown.
        # Corresponds to the JSON property `structData`
        # @return [Hash<String,Object>]
        attr_accessor :struct_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @derived_struct_data = args[:derived_struct_data] if args.key?(:derived_struct_data)
          @id = args[:id] if args.key?(:id)
          @json_data = args[:json_data] if args.key?(:json_data)
          @name = args[:name] if args.key?(:name)
          @parent_document_id = args[:parent_document_id] if args.key?(:parent_document_id)
          @schema_id = args[:schema_id] if args.key?(:schema_id)
          @struct_data = args[:struct_data] if args.key?(:struct_data)
        end
      end
      
      # Unstructured data linked to this document.
      class GoogleCloudDiscoveryengineV1betaDocumentContent
        include Google::Apis::Core::Hashable
      
        # The MIME type of the content. Supported types: * `application/pdf` (PDF, only
        # native PDFs are supported for now) * `text/html` (HTML) * `application/vnd.
        # openxmlformats-officedocument.wordprocessingml.document` (DOCX) * `application/
        # vnd.openxmlformats-officedocument.presentationml.presentation` (PPTX) * `text/
        # plain` (TXT) See https://www.iana.org/assignments/media-types/media-types.
        # xhtml.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # The content represented as a stream of bytes. The maximum length is 1,000,000
        # bytes (1 MB / ~0.95 MiB). Note: As with all `bytes` fields, this field is
        # represented as pure binary in Protocol Buffers and base64-encoded string in
        # JSON. For example, `abc123!?$*&()'-=@~` should be represented as `
        # YWJjMTIzIT8kKiYoKSctPUB+` in JSON. See https://developers.google.com/protocol-
        # buffers/docs/proto3#json.
        # Corresponds to the JSON property `rawBytes`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :raw_bytes
      
        # The URI of the content. Only Cloud Storage URIs (e.g. `gs://bucket-name/path/
        # to/file`) are supported. The maximum file size is 100 MB.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @raw_bytes = args[:raw_bytes] if args.key?(:raw_bytes)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Detailed document information associated with a user event.
      class GoogleCloudDiscoveryengineV1betaDocumentInfo
        include Google::Apis::Core::Hashable
      
        # The Document resource ID.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The Document resource full name, of the form: `projects/`project_id`/locations/
        # `location`/collections/`collection_id`/dataStores/`data_store_id`/branches/`
        # branch_id`/documents/`document_id``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The promotion IDs associated with this Document. Currently, this field is
        # restricted to at most one ID.
        # Corresponds to the JSON property `promotionIds`
        # @return [Array<String>]
        attr_accessor :promotion_ids
      
        # Quantity of the Document associated with the user event. Defaults to 1. For
        # example, this field will be 2 if two quantities of the same Document are
        # involved in a `add-to-cart` event. Required for events of the following event
        # types: * `add-to-cart` * `purchase`
        # Corresponds to the JSON property `quantity`
        # @return [Fixnum]
        attr_accessor :quantity
      
        # The Document URI - only allowed for website data stores.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
          @promotion_ids = args[:promotion_ids] if args.key?(:promotion_ids)
          @quantity = args[:quantity] if args.key?(:quantity)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Double list.
      class GoogleCloudDiscoveryengineV1betaDoubleList
        include Google::Apis::Core::Hashable
      
        # Double values.
        # Corresponds to the JSON property `values`
        # @return [Array<Float>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Cloud Storage location for input content.
      class GoogleCloudDiscoveryengineV1betaGcsSource
        include Google::Apis::Core::Hashable
      
        # The schema to use when parsing the data from the source. Supported values for
        # document imports: * `document` (default): One JSON Document per line. Each
        # document must have a valid Document.id. * `content`: Unstructured data (e.g.
        # PDF, HTML). Each file matched by `input_uris` becomes a document, with the ID
        # set to the first 128 bits of SHA256(URI) encoded as a hex string. * `custom`:
        # One custom data JSON per row in arbitrary format that conforms to the defined
        # Schema of the data store. This can only be used by Gen App Builder. * `csv`: A
        # CSV file with header conforming to the defined Schema of the data store. Each
        # entry after the header is imported as a Document. This can only be used by Gen
        # App Builder. Supported values for user even imports: * `user_event` (default):
        # One JSON UserEvent per line.
        # Corresponds to the JSON property `dataSchema`
        # @return [String]
        attr_accessor :data_schema
      
        # Required. Cloud Storage URIs to input files. URI can be up to 2000 characters
        # long. URIs can match the full object path (for example, `gs://bucket/directory/
        # object.json`) or a pattern matching one or more files, such as `gs://bucket/
        # directory/*.json`. A request can contain at most 100 files (or 100,000 files
        # if `data_schema` is `content`). Each file can be up to 2 GB (or 100 MB if `
        # data_schema` is `content`).
        # Corresponds to the JSON property `inputUris`
        # @return [Array<String>]
        attr_accessor :input_uris
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_schema = args[:data_schema] if args.key?(:data_schema)
          @input_uris = args[:input_uris] if args.key?(:input_uris)
        end
      end
      
      # Metadata related to the progress of the ImportDocuments operation. This is
      # returned by the google.longrunning.Operation.metadata field.
      class GoogleCloudDiscoveryengineV1betaImportDocumentsMetadata
        include Google::Apis::Core::Hashable
      
        # Operation create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Count of entries that encountered errors while processing.
        # Corresponds to the JSON property `failureCount`
        # @return [Fixnum]
        attr_accessor :failure_count
      
        # Count of entries that were processed successfully.
        # Corresponds to the JSON property `successCount`
        # @return [Fixnum]
        attr_accessor :success_count
      
        # Operation last update time. If the operation is done, this is also the finish
        # time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @failure_count = args[:failure_count] if args.key?(:failure_count)
          @success_count = args[:success_count] if args.key?(:success_count)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Request message for Import methods.
      class GoogleCloudDiscoveryengineV1betaImportDocumentsRequest
        include Google::Apis::Core::Hashable
      
        # Whether to automatically generate IDs for the documents if absent. If set to `
        # true`, Document.ids are automatically generated based on the hash of the
        # payload, where IDs may not be consistent during multiple imports. In which
        # case ReconciliationMode.FULL is highly recommended to avoid duplicate contents.
        # If unset or set to `false`, Document.ids have to be specified using id_field,
        # otherwise, documents without IDs fail to be imported. Only set this field when
        # using GcsSource or BigQuerySource, and when GcsSource.data_schema or
        # BigQuerySource.data_schema is `custom` or `csv`. Otherwise, an
        # INVALID_ARGUMENT error is thrown.
        # Corresponds to the JSON property `autoGenerateIds`
        # @return [Boolean]
        attr_accessor :auto_generate_ids
        alias_method :auto_generate_ids?, :auto_generate_ids
      
        # BigQuery source import data from.
        # Corresponds to the JSON property `bigquerySource`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaBigQuerySource]
        attr_accessor :bigquery_source
      
        # Configuration of destination for Import related errors.
        # Corresponds to the JSON property `errorConfig`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportErrorConfig]
        attr_accessor :error_config
      
        # Cloud Storage location for input content.
        # Corresponds to the JSON property `gcsSource`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGcsSource]
        attr_accessor :gcs_source
      
        # The field in the Cloud Storage and BigQuery sources that indicates the unique
        # IDs of the documents. For GcsSource it is the key of the JSON field. For
        # instance, `my_id` for JSON ``"my_id": "some_uuid"``. For BigQuerySource it is
        # the column name of the BigQuery table where the unique ids are stored. The
        # values of the JSON field or the BigQuery column are used as the Document.ids.
        # The JSON field or the BigQuery column must be of string type, and the values
        # must be set as valid strings conform to [RFC-1034](https://tools.ietf.org/html/
        # rfc1034) with 1-63 characters. Otherwise, documents without valid IDs fail to
        # be imported. Only set this field when using GcsSource or BigQuerySource, and
        # when GcsSource.data_schema or BigQuerySource.data_schema is `custom`. And only
        # set this field when auto_generate_ids is unset or set as `false`. Otherwise,
        # an INVALID_ARGUMENT error is thrown. If it is unset, a default value `_id` is
        # used when importing from the allowed data sources.
        # Corresponds to the JSON property `idField`
        # @return [String]
        attr_accessor :id_field
      
        # The inline source for the input config for ImportDocuments method.
        # Corresponds to the JSON property `inlineSource`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportDocumentsRequestInlineSource]
        attr_accessor :inline_source
      
        # The mode of reconciliation between existing documents and the documents to be
        # imported. Defaults to ReconciliationMode.INCREMENTAL.
        # Corresponds to the JSON property `reconciliationMode`
        # @return [String]
        attr_accessor :reconciliation_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auto_generate_ids = args[:auto_generate_ids] if args.key?(:auto_generate_ids)
          @bigquery_source = args[:bigquery_source] if args.key?(:bigquery_source)
          @error_config = args[:error_config] if args.key?(:error_config)
          @gcs_source = args[:gcs_source] if args.key?(:gcs_source)
          @id_field = args[:id_field] if args.key?(:id_field)
          @inline_source = args[:inline_source] if args.key?(:inline_source)
          @reconciliation_mode = args[:reconciliation_mode] if args.key?(:reconciliation_mode)
        end
      end
      
      # The inline source for the input config for ImportDocuments method.
      class GoogleCloudDiscoveryengineV1betaImportDocumentsRequestInlineSource
        include Google::Apis::Core::Hashable
      
        # Required. A list of documents to update/create. Each document must have a
        # valid Document.id. Recommended max of 100 items.
        # Corresponds to the JSON property `documents`
        # @return [Array<Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocument>]
        attr_accessor :documents
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @documents = args[:documents] if args.key?(:documents)
        end
      end
      
      # Response of the ImportDocumentsRequest. If the long running operation is done,
      # then this message is returned by the google.longrunning.Operations.response
      # field if the operation was successful.
      class GoogleCloudDiscoveryengineV1betaImportDocumentsResponse
        include Google::Apis::Core::Hashable
      
        # Configuration of destination for Import related errors.
        # Corresponds to the JSON property `errorConfig`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportErrorConfig]
        attr_accessor :error_config
      
        # A sample of errors encountered while processing the request.
        # Corresponds to the JSON property `errorSamples`
        # @return [Array<Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus>]
        attr_accessor :error_samples
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_config = args[:error_config] if args.key?(:error_config)
          @error_samples = args[:error_samples] if args.key?(:error_samples)
        end
      end
      
      # Configuration of destination for Import related errors.
      class GoogleCloudDiscoveryengineV1betaImportErrorConfig
        include Google::Apis::Core::Hashable
      
        # Cloud Storage prefix for import errors. This must be an empty, existing Cloud
        # Storage directory. Import errors are written to sharded files in this
        # directory, one per line, as a JSON-encoded `google.rpc.Status` message.
        # Corresponds to the JSON property `gcsPrefix`
        # @return [String]
        attr_accessor :gcs_prefix
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_prefix = args[:gcs_prefix] if args.key?(:gcs_prefix)
        end
      end
      
      # Metadata related to the progress of the Import operation. This is returned by
      # the google.longrunning.Operation.metadata field.
      class GoogleCloudDiscoveryengineV1betaImportUserEventsMetadata
        include Google::Apis::Core::Hashable
      
        # Operation create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Count of entries that encountered errors while processing.
        # Corresponds to the JSON property `failureCount`
        # @return [Fixnum]
        attr_accessor :failure_count
      
        # Count of entries that were processed successfully.
        # Corresponds to the JSON property `successCount`
        # @return [Fixnum]
        attr_accessor :success_count
      
        # Operation last update time. If the operation is done, this is also the finish
        # time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @failure_count = args[:failure_count] if args.key?(:failure_count)
          @success_count = args[:success_count] if args.key?(:success_count)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Request message for the ImportUserEvents request.
      class GoogleCloudDiscoveryengineV1betaImportUserEventsRequest
        include Google::Apis::Core::Hashable
      
        # BigQuery source import data from.
        # Corresponds to the JSON property `bigquerySource`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaBigQuerySource]
        attr_accessor :bigquery_source
      
        # Configuration of destination for Import related errors.
        # Corresponds to the JSON property `errorConfig`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportErrorConfig]
        attr_accessor :error_config
      
        # Cloud Storage location for input content.
        # Corresponds to the JSON property `gcsSource`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaGcsSource]
        attr_accessor :gcs_source
      
        # The inline source for the input config for ImportUserEvents method.
        # Corresponds to the JSON property `inlineSource`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportUserEventsRequestInlineSource]
        attr_accessor :inline_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bigquery_source = args[:bigquery_source] if args.key?(:bigquery_source)
          @error_config = args[:error_config] if args.key?(:error_config)
          @gcs_source = args[:gcs_source] if args.key?(:gcs_source)
          @inline_source = args[:inline_source] if args.key?(:inline_source)
        end
      end
      
      # The inline source for the input config for ImportUserEvents method.
      class GoogleCloudDiscoveryengineV1betaImportUserEventsRequestInlineSource
        include Google::Apis::Core::Hashable
      
        # Required. A list of user events to import. Recommended max of 10k items.
        # Corresponds to the JSON property `userEvents`
        # @return [Array<Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaUserEvent>]
        attr_accessor :user_events
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @user_events = args[:user_events] if args.key?(:user_events)
        end
      end
      
      # Response of the ImportUserEventsRequest. If the long running operation was
      # successful, then this message is returned by the google.longrunning.Operations.
      # response field if the operation was successful.
      class GoogleCloudDiscoveryengineV1betaImportUserEventsResponse
        include Google::Apis::Core::Hashable
      
        # Configuration of destination for Import related errors.
        # Corresponds to the JSON property `errorConfig`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaImportErrorConfig]
        attr_accessor :error_config
      
        # A sample of errors encountered while processing the request.
        # Corresponds to the JSON property `errorSamples`
        # @return [Array<Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus>]
        attr_accessor :error_samples
      
        # Count of user events imported with complete existing Documents.
        # Corresponds to the JSON property `joinedEventsCount`
        # @return [Fixnum]
        attr_accessor :joined_events_count
      
        # Count of user events imported, but with Document information not found in the
        # existing Branch.
        # Corresponds to the JSON property `unjoinedEventsCount`
        # @return [Fixnum]
        attr_accessor :unjoined_events_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_config = args[:error_config] if args.key?(:error_config)
          @error_samples = args[:error_samples] if args.key?(:error_samples)
          @joined_events_count = args[:joined_events_count] if args.key?(:joined_events_count)
          @unjoined_events_count = args[:unjoined_events_count] if args.key?(:unjoined_events_count)
        end
      end
      
      # A floating point interval.
      class GoogleCloudDiscoveryengineV1betaInterval
        include Google::Apis::Core::Hashable
      
        # Exclusive upper bound.
        # Corresponds to the JSON property `exclusiveMaximum`
        # @return [Float]
        attr_accessor :exclusive_maximum
      
        # Exclusive lower bound.
        # Corresponds to the JSON property `exclusiveMinimum`
        # @return [Float]
        attr_accessor :exclusive_minimum
      
        # Inclusive upper bound.
        # Corresponds to the JSON property `maximum`
        # @return [Float]
        attr_accessor :maximum
      
        # Inclusive lower bound.
        # Corresponds to the JSON property `minimum`
        # @return [Float]
        attr_accessor :minimum
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exclusive_maximum = args[:exclusive_maximum] if args.key?(:exclusive_maximum)
          @exclusive_minimum = args[:exclusive_minimum] if args.key?(:exclusive_minimum)
          @maximum = args[:maximum] if args.key?(:maximum)
          @minimum = args[:minimum] if args.key?(:minimum)
        end
      end
      
      # Response for ListConversations method.
      class GoogleCloudDiscoveryengineV1betaListConversationsResponse
        include Google::Apis::Core::Hashable
      
        # All the Conversations for a given data store.
        # Corresponds to the JSON property `conversations`
        # @return [Array<Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversation>]
        attr_accessor :conversations
      
        # Pagination token, if not returned indicates the last page.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversations = args[:conversations] if args.key?(:conversations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for DocumentService.ListDocuments method.
      class GoogleCloudDiscoveryengineV1betaListDocumentsResponse
        include Google::Apis::Core::Hashable
      
        # The Documents.
        # Corresponds to the JSON property `documents`
        # @return [Array<Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocument>]
        attr_accessor :documents
      
        # A token that can be sent as ListDocumentsRequest.page_token to retrieve the
        # next page. If this field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @documents = args[:documents] if args.key?(:documents)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for SchemaService.ListSchemas method.
      class GoogleCloudDiscoveryengineV1betaListSchemasResponse
        include Google::Apis::Core::Hashable
      
        # A token that can be sent as ListSchemasRequest.page_token to retrieve the next
        # page. If this field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The Schemas.
        # Corresponds to the JSON property `schemas`
        # @return [Array<Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSchema>]
        attr_accessor :schemas
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @schemas = args[:schemas] if args.key?(:schemas)
        end
      end
      
      # Media-specific user event information.
      class GoogleCloudDiscoveryengineV1betaMediaInfo
        include Google::Apis::Core::Hashable
      
        # The media progress time in seconds, if applicable. For example, if the end
        # user has finished 90 seconds of a playback video, then MediaInfo.
        # media_progress_duration.seconds should be set to 90.
        # Corresponds to the JSON property `mediaProgressDuration`
        # @return [String]
        attr_accessor :media_progress_duration
      
        # Media progress should be computed using only the media_progress_duration
        # relative to the media total length. This value must be between `[0, 1.0]`
        # inclusive. If this is not a playback or the progress cannot be computed (e.g.
        # ongoing livestream), this field should be unset.
        # Corresponds to the JSON property `mediaProgressPercentage`
        # @return [Float]
        attr_accessor :media_progress_percentage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @media_progress_duration = args[:media_progress_duration] if args.key?(:media_progress_duration)
          @media_progress_percentage = args[:media_progress_percentage] if args.key?(:media_progress_percentage)
        end
      end
      
      # Detailed page information.
      class GoogleCloudDiscoveryengineV1betaPageInfo
        include Google::Apis::Core::Hashable
      
        # The most specific category associated with a category page. To represent full
        # path of category, use '>' sign to separate different hierarchies. If '>' is
        # part of the category name, please replace it with other character(s). Category
        # pages include special pages such as sales or promotions. For instance, a
        # special sale page may have the category hierarchy: `"pageCategory" : "Sales >
        # 2017 Black Friday Deals"`. Required for `view-category-page` events. Other
        # event types should not set this field. Otherwise, an `INVALID_ARGUMENT` error
        # is returned.
        # Corresponds to the JSON property `pageCategory`
        # @return [String]
        attr_accessor :page_category
      
        # A unique ID of a web page view. This should be kept the same for all user
        # events triggered from the same pageview. For example, an item detail page view
        # could trigger multiple events as the user is browsing the page. The `
        # pageview_id` property should be kept the same for all these events so that
        # they can be grouped together properly. When using the client side event
        # reporting with JavaScript pixel and Google Tag Manager, this value is filled
        # in automatically.
        # Corresponds to the JSON property `pageviewId`
        # @return [String]
        attr_accessor :pageview_id
      
        # The referrer URL of the current page. When using the client side event
        # reporting with JavaScript pixel and Google Tag Manager, this value is filled
        # in automatically. However, some browser privacy restrictions may cause this
        # field to be empty.
        # Corresponds to the JSON property `referrerUri`
        # @return [String]
        attr_accessor :referrer_uri
      
        # Complete URL (window.location.href) of the user's current page. When using the
        # client side event reporting with JavaScript pixel and Google Tag Manager, this
        # value is filled in automatically. Maximum length 5,000 characters.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @page_category = args[:page_category] if args.key?(:page_category)
          @pageview_id = args[:pageview_id] if args.key?(:pageview_id)
          @referrer_uri = args[:referrer_uri] if args.key?(:referrer_uri)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Detailed panel information associated with a user event.
      class GoogleCloudDiscoveryengineV1betaPanelInfo
        include Google::Apis::Core::Hashable
      
        # The display name of the panel.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. The panel ID.
        # Corresponds to the JSON property `panelId`
        # @return [String]
        attr_accessor :panel_id
      
        # The ordered position of the panel, if shown to the user with other panels. If
        # set, then total_panels must also be set.
        # Corresponds to the JSON property `panelPosition`
        # @return [Fixnum]
        attr_accessor :panel_position
      
        # The total number of panels, including this one, shown to the user. Must be set
        # if panel_position is set.
        # Corresponds to the JSON property `totalPanels`
        # @return [Fixnum]
        attr_accessor :total_panels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @panel_id = args[:panel_id] if args.key?(:panel_id)
          @panel_position = args[:panel_position] if args.key?(:panel_position)
          @total_panels = args[:total_panels] if args.key?(:total_panels)
        end
      end
      
      # Metadata related to the progress of the PurgeDocuments operation. This will be
      # returned by the google.longrunning.Operation.metadata field.
      class GoogleCloudDiscoveryengineV1betaPurgeDocumentsMetadata
        include Google::Apis::Core::Hashable
      
        # Operation create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Count of entries that encountered errors while processing.
        # Corresponds to the JSON property `failureCount`
        # @return [Fixnum]
        attr_accessor :failure_count
      
        # Count of entries that were deleted successfully.
        # Corresponds to the JSON property `successCount`
        # @return [Fixnum]
        attr_accessor :success_count
      
        # Operation last update time. If the operation is done, this is also the finish
        # time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @failure_count = args[:failure_count] if args.key?(:failure_count)
          @success_count = args[:success_count] if args.key?(:success_count)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Request message for DocumentService.PurgeDocuments method.
      class GoogleCloudDiscoveryengineV1betaPurgeDocumentsRequest
        include Google::Apis::Core::Hashable
      
        # Required. Filter matching documents to purge. Only currently supported value
        # is `*` (all items).
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Actually performs the purge. If `force` is set to false, return the expected
        # purge count without deleting any documents.
        # Corresponds to the JSON property `force`
        # @return [Boolean]
        attr_accessor :force
        alias_method :force?, :force
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter = args[:filter] if args.key?(:filter)
          @force = args[:force] if args.key?(:force)
        end
      end
      
      # Response message for DocumentService.PurgeDocuments method. If the long
      # running operation is successfully done, then this message is returned by the
      # google.longrunning.Operations.response field.
      class GoogleCloudDiscoveryengineV1betaPurgeDocumentsResponse
        include Google::Apis::Core::Hashable
      
        # The total count of documents purged as a result of the operation.
        # Corresponds to the JSON property `purgeCount`
        # @return [Fixnum]
        attr_accessor :purge_count
      
        # A sample of document names that will be deleted. Only populated if `force` is
        # set to false. A max of 100 names will be returned and the names are chosen at
        # random.
        # Corresponds to the JSON property `purgeSample`
        # @return [Array<String>]
        attr_accessor :purge_sample
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @purge_count = args[:purge_count] if args.key?(:purge_count)
          @purge_sample = args[:purge_sample] if args.key?(:purge_sample)
        end
      end
      
      # Request message for Recommend method.
      class GoogleCloudDiscoveryengineV1betaRecommendRequest
        include Google::Apis::Core::Hashable
      
        # Filter for restricting recommendation results with a length limit of 5,000
        # characters. Currently, only filter expressions on the `filter_tags` attribute
        # is supported. Examples: * `(filter_tags: ANY("Red", "Blue") OR filter_tags:
        # ANY("Hot", "Cold"))` * `(filter_tags: ANY("Red", "Blue")) AND NOT (filter_tags:
        # ANY("Green"))` If `attributeFilteringSyntax` is set to true under the `params`
        # field, then attribute-based expressions are expected instead of the above
        # described tag-based syntax. Examples: * (launguage: ANY("en", "es")) AND NOT (
        # categories: ANY("Movie")) * (available: true) AND (launguage: ANY("en", "es"))
        # OR (categories: ANY("Movie")) If your filter blocks all results, the API will
        # return generic (unfiltered) popular Documents. If you only want results
        # strictly matching the filters, set `strictFiltering` to True in
        # RecommendRequest.params to receive empty results instead. Note that the API
        # will never return Documents with `storageStatus` of `EXPIRED` or `DELETED`
        # regardless of filter choices.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Maximum number of results to return. Set this property to the number of
        # recommendation results needed. If zero, the service will choose a reasonable
        # default. The maximum allowed value is 100. Values above 100 will be coerced to
        # 100.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # Additional domain specific parameters for the recommendations. Allowed values:
        # * `returnDocument`: Boolean. If set to true, the associated Document object
        # will be returned in RecommendResponse.RecommendationResult.document. * `
        # returnScore`: Boolean. If set to true, the recommendation 'score'
        # corresponding to each returned Document will be set in RecommendResponse.
        # RecommendationResult.metadata. The given 'score' indicates the probability of
        # a Document conversion given the user's context and history. * `strictFiltering`
        # : Boolean. True by default. If set to false, the service will return generic (
        # unfiltered) popular Documents instead of empty if your filter blocks all
        # recommendation results. * `diversityLevel`: String. Default empty. If set to
        # be non-empty, then it needs to be one of: * `no-diversity` * `low-diversity` *
        # `medium-diversity` * `high-diversity` * `auto-diversity` This gives request-
        # level control and adjusts recommendation results based on Document category. *
        # `attributeFilteringSyntax`: Boolean. False by default. If set to true, the `
        # filter` field is interpreted according to the new, attribute-based syntax.
        # Corresponds to the JSON property `params`
        # @return [Hash<String,Object>]
        attr_accessor :params
      
        # UserEvent captures all metadata information Discovery Engine API needs to know
        # about how end users interact with customers' website.
        # Corresponds to the JSON property `userEvent`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaUserEvent]
        attr_accessor :user_event
      
        # The user labels applied to a resource must meet the following requirements: *
        # Each resource can have multiple labels, up to a maximum of 64. * Each label
        # must be a key-value pair. * Keys have a minimum length of 1 character and a
        # maximum length of 63 characters and cannot be empty. Values can be empty and
        # have a maximum length of 63 characters. * Keys and values can contain only
        # lowercase letters, numeric characters, underscores, and dashes. All characters
        # must use UTF-8 encoding, and international characters are allowed. * The key
        # portion of a label must be unique. However, you can use the same key with
        # multiple resources. * Keys must start with a lowercase letter or international
        # character. See [Requirements for labels](https://cloud.google.com/resource-
        # manager/docs/creating-managing-labels#requirements) for more details.
        # Corresponds to the JSON property `userLabels`
        # @return [Hash<String,String>]
        attr_accessor :user_labels
      
        # Use validate only mode for this recommendation query. If set to true, a fake
        # model will be used that returns arbitrary Document IDs. Note that the validate
        # only mode should only be used for testing the API, or if the model is not
        # ready.
        # Corresponds to the JSON property `validateOnly`
        # @return [Boolean]
        attr_accessor :validate_only
        alias_method :validate_only?, :validate_only
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter = args[:filter] if args.key?(:filter)
          @page_size = args[:page_size] if args.key?(:page_size)
          @params = args[:params] if args.key?(:params)
          @user_event = args[:user_event] if args.key?(:user_event)
          @user_labels = args[:user_labels] if args.key?(:user_labels)
          @validate_only = args[:validate_only] if args.key?(:validate_only)
        end
      end
      
      # Response message for Recommend method.
      class GoogleCloudDiscoveryengineV1betaRecommendResponse
        include Google::Apis::Core::Hashable
      
        # A unique attribution token. This should be included in the UserEvent logs
        # resulting from this recommendation, which enables accurate attribution of
        # recommendation model performance.
        # Corresponds to the JSON property `attributionToken`
        # @return [String]
        attr_accessor :attribution_token
      
        # IDs of documents in the request that were missing from the default Branch
        # associated with the requested ServingConfig.
        # Corresponds to the JSON property `missingIds`
        # @return [Array<String>]
        attr_accessor :missing_ids
      
        # A list of recommended Documents. The order represents the ranking (from the
        # most relevant Document to the least).
        # Corresponds to the JSON property `results`
        # @return [Array<Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaRecommendResponseRecommendationResult>]
        attr_accessor :results
      
        # True if RecommendRequest.validate_only was set.
        # Corresponds to the JSON property `validateOnly`
        # @return [Boolean]
        attr_accessor :validate_only
        alias_method :validate_only?, :validate_only
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribution_token = args[:attribution_token] if args.key?(:attribution_token)
          @missing_ids = args[:missing_ids] if args.key?(:missing_ids)
          @results = args[:results] if args.key?(:results)
          @validate_only = args[:validate_only] if args.key?(:validate_only)
        end
      end
      
      # RecommendationResult represents a generic recommendation result with
      # associated metadata.
      class GoogleCloudDiscoveryengineV1betaRecommendResponseRecommendationResult
        include Google::Apis::Core::Hashable
      
        # Document captures all raw metadata information of items to be recommended or
        # searched.
        # Corresponds to the JSON property `document`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocument]
        attr_accessor :document
      
        # Resource ID of the recommended Document.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Additional Document metadata / annotations. Possible values: * `score`:
        # Recommendation score in double value. Is set if `returnScore` is set to true
        # in RecommendRequest.params.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document = args[:document] if args.key?(:document)
          @id = args[:id] if args.key?(:id)
          @metadata = args[:metadata] if args.key?(:metadata)
        end
      end
      
      # Defines a reply message to user.
      class GoogleCloudDiscoveryengineV1betaReply
        include Google::Apis::Core::Hashable
      
        # References in the reply.
        # Corresponds to the JSON property `references`
        # @return [Array<Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaReplyReference>]
        attr_accessor :references
      
        # DEPRECATED: use `summary` instead. Text reply.
        # Corresponds to the JSON property `reply`
        # @return [String]
        attr_accessor :reply
      
        # Summary of the top N search result specified by the summary spec.
        # Corresponds to the JSON property `summary`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseSummary]
        attr_accessor :summary
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @references = args[:references] if args.key?(:references)
          @reply = args[:reply] if args.key?(:reply)
          @summary = args[:summary] if args.key?(:summary)
        end
      end
      
      # Defines reference in reply.
      class GoogleCloudDiscoveryengineV1betaReplyReference
        include Google::Apis::Core::Hashable
      
        # Anchor text.
        # Corresponds to the JSON property `anchorText`
        # @return [String]
        attr_accessor :anchor_text
      
        # Anchor text end index.
        # Corresponds to the JSON property `end`
        # @return [Fixnum]
        attr_accessor :end
      
        # Anchor text start index.
        # Corresponds to the JSON property `start`
        # @return [Fixnum]
        attr_accessor :start
      
        # URI link reference.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @anchor_text = args[:anchor_text] if args.key?(:anchor_text)
          @end = args[:end] if args.key?(:end)
          @start = args[:start] if args.key?(:start)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Defines the structure and layout of a type of document data.
      class GoogleCloudDiscoveryengineV1betaSchema
        include Google::Apis::Core::Hashable
      
        # The JSON representation of the schema.
        # Corresponds to the JSON property `jsonSchema`
        # @return [String]
        attr_accessor :json_schema
      
        # Immutable. The full resource name of the schema, in the format of `projects/`
        # project`/locations/`location`/collections/`collection`/dataStores/`data_store`/
        # schemas/`schema``. This field must be a UTF-8 encoded string with a length
        # limit of 1024 characters.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The structured representation of the schema.
        # Corresponds to the JSON property `structSchema`
        # @return [Hash<String,Object>]
        attr_accessor :struct_schema
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @json_schema = args[:json_schema] if args.key?(:json_schema)
          @name = args[:name] if args.key?(:name)
          @struct_schema = args[:struct_schema] if args.key?(:struct_schema)
        end
      end
      
      # Detailed search information.
      class GoogleCloudDiscoveryengineV1betaSearchInfo
        include Google::Apis::Core::Hashable
      
        # An integer that specifies the current offset for pagination (the 0-indexed
        # starting location, amongst the products deemed by the API as relevant). See
        # SearchRequest.offset for definition. If this field is negative, an `
        # INVALID_ARGUMENT` is returned. This can only be set for `search` events. Other
        # event types should not set this field. Otherwise, an `INVALID_ARGUMENT` error
        # is returned.
        # Corresponds to the JSON property `offset`
        # @return [Fixnum]
        attr_accessor :offset
      
        # The order in which products are returned, if applicable. See SearchRequest.
        # order_by for definition and syntax. The value must be a UTF-8 encoded string
        # with a length limit of 1,000 characters. Otherwise, an `INVALID_ARGUMENT`
        # error is returned. This can only be set for `search` events. Other event types
        # should not set this field. Otherwise, an `INVALID_ARGUMENT` error is returned.
        # Corresponds to the JSON property `orderBy`
        # @return [String]
        attr_accessor :order_by
      
        # The user's search query. See SearchRequest.query for definition. The value
        # must be a UTF-8 encoded string with a length limit of 5,000 characters.
        # Otherwise, an `INVALID_ARGUMENT` error is returned. At least one of
        # search_query or PageInfo.page_category is required for `search` events. Other
        # event types should not set this field. Otherwise, an `INVALID_ARGUMENT` error
        # is returned.
        # Corresponds to the JSON property `searchQuery`
        # @return [String]
        attr_accessor :search_query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @offset = args[:offset] if args.key?(:offset)
          @order_by = args[:order_by] if args.key?(:order_by)
          @search_query = args[:search_query] if args.key?(:search_query)
        end
      end
      
      # Request message for SearchService.Search method.
      class GoogleCloudDiscoveryengineV1betaSearchRequest
        include Google::Apis::Core::Hashable
      
        # Boost specification to boost certain documents.
        # Corresponds to the JSON property `boostSpec`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpec]
        attr_accessor :boost_spec
      
        # The branch resource name, such as `projects/*/locations/global/collections/
        # default_collection/dataStores/default_data_store/branches/0`. Use `
        # default_branch` as the branch ID or leave this field empty, to search
        # documents under the default branch.
        # Corresponds to the JSON property `branch`
        # @return [String]
        attr_accessor :branch
      
        # The default filter that is applied when a user performs a search without
        # checking any filters on the search page. The filter applied to every search
        # request when quality improvement such as query expansion is needed. In the
        # case a query does not have a sufficient amount of results this filter will be
        # used to determine whether or not to enable the query expansion flow. The
        # original filter will still be used for the query expanded search. This field
        # is strongly recommended to achieve high search quality. For more information
        # about filter syntax, see SearchRequest.filter.
        # Corresponds to the JSON property `canonicalFilter`
        # @return [String]
        attr_accessor :canonical_filter
      
        # A specification for configuring the behavior of content search.
        # Corresponds to the JSON property `contentSearchSpec`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpec]
        attr_accessor :content_search_spec
      
        # The specification that uses customized query embedding vector to do semantic
        # document retrieval.
        # Corresponds to the JSON property `embeddingSpec`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestEmbeddingSpec]
        attr_accessor :embedding_spec
      
        # Facet specifications for faceted search. If empty, no facets are returned. A
        # maximum of 100 values are allowed. Otherwise, an `INVALID_ARGUMENT` error is
        # returned.
        # Corresponds to the JSON property `facetSpecs`
        # @return [Array<Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestFacetSpec>]
        attr_accessor :facet_specs
      
        # The filter syntax consists of an expression language for constructing a
        # predicate from one or more fields of the documents being filtered. Filter
        # expression is case-sensitive. If this field is unrecognizable, an `
        # INVALID_ARGUMENT` is returned. Filtering in Vertex AI Search is done by
        # mapping the LHS filter key to a key property defined in the Vertex AI Search
        # backend -- this mapping is defined by the customer in their schema. For
        # example a media customer might have a field 'name' in their schema. In this
        # case the filter would look like this: filter --> name:'ANY("king kong")' For
        # more information about filtering including syntax and filter operators, see [
        # Filter](https://cloud.google.com/generative-ai-app-builder/docs/filter-search-
        # metadata)
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Specifies the image query input.
        # Corresponds to the JSON property `imageQuery`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestImageQuery]
        attr_accessor :image_query
      
        # A 0-indexed integer that specifies the current offset (that is, starting
        # result location, amongst the Documents deemed by the API as relevant) in
        # search results. This field is only considered if page_token is unset. If this
        # field is negative, an `INVALID_ARGUMENT` is returned.
        # Corresponds to the JSON property `offset`
        # @return [Fixnum]
        attr_accessor :offset
      
        # The order in which documents are returned. Documents can be ordered by a field
        # in an Document object. Leave it unset if ordered by relevance. `order_by`
        # expression is case-sensitive. For more information on ordering, see [Ordering](
        # https://cloud.google.com/retail/docs/filter-and-order#order) If this field is
        # unrecognizable, an `INVALID_ARGUMENT` is returned.
        # Corresponds to the JSON property `orderBy`
        # @return [String]
        attr_accessor :order_by
      
        # Maximum number of Documents to return. If unspecified, defaults to a
        # reasonable value. The maximum allowed value is 100. Values above 100 are
        # coerced to 100. If this field is negative, an `INVALID_ARGUMENT` is returned.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # A page token received from a previous SearchService.Search call. Provide this
        # to retrieve the subsequent page. When paginating, all other parameters
        # provided to SearchService.Search must match the call that provided the page
        # token. Otherwise, an `INVALID_ARGUMENT` error is returned.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Additional search parameters. For public website search only, supported values
        # are: * `user_country_code`: string. Default empty. If set to non-empty,
        # results are restricted or boosted based on the location provided. Example:
        # user_country_code: "au" For available codes see [Country Codes](https://
        # developers.google.com/custom-search/docs/json_api_reference#countryCodes) * `
        # search_type`: double. Default empty. Enables non-webpage searching depending
        # on the value. The only valid non-default value is 1, which enables image
        # searching. Example: search_type: 1
        # Corresponds to the JSON property `params`
        # @return [Hash<String,Object>]
        attr_accessor :params
      
        # Raw search query.
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        # Specification to determine under which conditions query expansion should occur.
        # Corresponds to the JSON property `queryExpansionSpec`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestQueryExpansionSpec]
        attr_accessor :query_expansion_spec
      
        # The ranking expression controls the customized ranking on retrieval documents.
        # This overrides ServingConfig.ranking_expression. The ranking expression is a
        # single function or multiple functions that are joint by "+". *
        # ranking_expression = function, ` " + ", function `; Supported functions: *
        # double * relevance_score * double * dotProduct(embedding_field_path) Function
        # variables: `relevance_score`: pre-defined keywords, used for measure relevance
        # between query and document. `embedding_field_path`: the document embedding
        # field used with query embedding vector. `dotProduct`: embedding function
        # between embedding_field_path and query embedding vector. Example ranking
        # expression: If document has an embedding field doc_embedding, the ranking
        # expression could be `0.5 * relevance_score + 0.3 * dotProduct(doc_embedding)`.
        # Corresponds to the JSON property `rankingExpression`
        # @return [String]
        attr_accessor :ranking_expression
      
        # Whether to turn on safe search. This is only supported for website search.
        # Corresponds to the JSON property `safeSearch`
        # @return [Boolean]
        attr_accessor :safe_search
        alias_method :safe_search?, :safe_search
      
        # The specification for query spell correction.
        # Corresponds to the JSON property `spellCorrectionSpec`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestSpellCorrectionSpec]
        attr_accessor :spell_correction_spec
      
        # Information of an end user.
        # Corresponds to the JSON property `userInfo`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaUserInfo]
        attr_accessor :user_info
      
        # The user labels applied to a resource must meet the following requirements: *
        # Each resource can have multiple labels, up to a maximum of 64. * Each label
        # must be a key-value pair. * Keys have a minimum length of 1 character and a
        # maximum length of 63 characters and cannot be empty. Values can be empty and
        # have a maximum length of 63 characters. * Keys and values can contain only
        # lowercase letters, numeric characters, underscores, and dashes. All characters
        # must use UTF-8 encoding, and international characters are allowed. * The key
        # portion of a label must be unique. However, you can use the same key with
        # multiple resources. * Keys must start with a lowercase letter or international
        # character. See [Google Cloud Document](https://cloud.google.com/resource-
        # manager/docs/creating-managing-labels#requirements) for more details.
        # Corresponds to the JSON property `userLabels`
        # @return [Hash<String,String>]
        attr_accessor :user_labels
      
        # A unique identifier for tracking visitors. For example, this could be
        # implemented with an HTTP cookie, which should be able to uniquely identify a
        # visitor on a single device. This unique identifier should not change if the
        # visitor logs in or out of the website. This field should NOT have a fixed
        # value such as `unknown_visitor`. This should be the same identifier as
        # UserEvent.user_pseudo_id and CompleteQueryRequest.user_pseudo_id The field
        # must be a UTF-8 encoded string with a length limit of 128 characters.
        # Otherwise, an `INVALID_ARGUMENT` error is returned.
        # Corresponds to the JSON property `userPseudoId`
        # @return [String]
        attr_accessor :user_pseudo_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @boost_spec = args[:boost_spec] if args.key?(:boost_spec)
          @branch = args[:branch] if args.key?(:branch)
          @canonical_filter = args[:canonical_filter] if args.key?(:canonical_filter)
          @content_search_spec = args[:content_search_spec] if args.key?(:content_search_spec)
          @embedding_spec = args[:embedding_spec] if args.key?(:embedding_spec)
          @facet_specs = args[:facet_specs] if args.key?(:facet_specs)
          @filter = args[:filter] if args.key?(:filter)
          @image_query = args[:image_query] if args.key?(:image_query)
          @offset = args[:offset] if args.key?(:offset)
          @order_by = args[:order_by] if args.key?(:order_by)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @params = args[:params] if args.key?(:params)
          @query = args[:query] if args.key?(:query)
          @query_expansion_spec = args[:query_expansion_spec] if args.key?(:query_expansion_spec)
          @ranking_expression = args[:ranking_expression] if args.key?(:ranking_expression)
          @safe_search = args[:safe_search] if args.key?(:safe_search)
          @spell_correction_spec = args[:spell_correction_spec] if args.key?(:spell_correction_spec)
          @user_info = args[:user_info] if args.key?(:user_info)
          @user_labels = args[:user_labels] if args.key?(:user_labels)
          @user_pseudo_id = args[:user_pseudo_id] if args.key?(:user_pseudo_id)
        end
      end
      
      # Boost specification to boost certain documents.
      class GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpec
        include Google::Apis::Core::Hashable
      
        # Condition boost specifications. If a document matches multiple conditions in
        # the specifictions, boost scores from these specifications are all applied and
        # combined in a non-linear way. Maximum number of specifications is 20.
        # Corresponds to the JSON property `conditionBoostSpecs`
        # @return [Array<Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpecConditionBoostSpec>]
        attr_accessor :condition_boost_specs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition_boost_specs = args[:condition_boost_specs] if args.key?(:condition_boost_specs)
        end
      end
      
      # Boost applies to documents which match a condition.
      class GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpecConditionBoostSpec
        include Google::Apis::Core::Hashable
      
        # Strength of the condition boost, which should be in [-1, 1]. Negative boost
        # means demotion. Default is 0.0. Setting to 1.0 gives the document a big
        # promotion. However, it does not necessarily mean that the boosted document
        # will be the top result at all times, nor that other documents will be excluded.
        # Results could still be shown even when none of them matches the condition.
        # And results that are significantly more relevant to the search query can still
        # trump your heavily favored but irrelevant documents. Setting to -1.0 gives the
        # document a big demotion. However, results that are deeply relevant might still
        # be shown. The document will have an upstream battle to get a fairly high
        # ranking, but it is not blocked out completely. Setting to 0.0 means no boost
        # applied. The boosting condition is ignored.
        # Corresponds to the JSON property `boost`
        # @return [Float]
        attr_accessor :boost
      
        # An expression which specifies a boost condition. The syntax and supported
        # fields are the same as a filter expression. See SearchRequest.filter for
        # detail syntax and limitations. Examples: * To boost documents with document ID
        # "doc_1" or "doc_2", and color "Red" or "Blue": * (id: ANY("doc_1", "doc_2"))
        # AND (color: ANY("Red","Blue"))
        # Corresponds to the JSON property `condition`
        # @return [String]
        attr_accessor :condition
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @boost = args[:boost] if args.key?(:boost)
          @condition = args[:condition] if args.key?(:condition)
        end
      end
      
      # A specification for configuring the behavior of content search.
      class GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpec
        include Google::Apis::Core::Hashable
      
        # A specification for configuring the extractive content in a search response.
        # Corresponds to the JSON property `extractiveContentSpec`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecExtractiveContentSpec]
        attr_accessor :extractive_content_spec
      
        # A specification for configuring snippets in a search response.
        # Corresponds to the JSON property `snippetSpec`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSnippetSpec]
        attr_accessor :snippet_spec
      
        # A specification for configuring a summary returned in a search response.
        # Corresponds to the JSON property `summarySpec`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpec]
        attr_accessor :summary_spec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @extractive_content_spec = args[:extractive_content_spec] if args.key?(:extractive_content_spec)
          @snippet_spec = args[:snippet_spec] if args.key?(:snippet_spec)
          @summary_spec = args[:summary_spec] if args.key?(:summary_spec)
        end
      end
      
      # A specification for configuring the extractive content in a search response.
      class GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecExtractiveContentSpec
        include Google::Apis::Core::Hashable
      
        # The maximum number of extractive answers returned in each search result. An
        # extractive answer is a verbatim answer extracted from the original document,
        # which provides a precise and contextually relevant answer to the search query.
        # If the number of matching answers is less than the `
        # max_extractive_answer_count`, return all of the answers. Otherwise, return the
        # `max_extractive_answer_count`. At most one answer is returned for each
        # SearchResult.
        # Corresponds to the JSON property `maxExtractiveAnswerCount`
        # @return [Fixnum]
        attr_accessor :max_extractive_answer_count
      
        # The max number of extractive segments returned in each search result. Only
        # applied if the DataStore is set to DataStore.ContentConfig.CONTENT_REQUIRED or
        # DataStore.solution_types is SOLUTION_TYPE_CHAT. An extractive segment is a
        # text segment extracted from the original document that is relevant to the
        # search query, and, in general, more verbose than an extractive answer. The
        # segment could then be used as input for LLMs to generate summaries and answers.
        # If the number of matching segments is less than `max_extractive_segment_count`
        # , return all of the segments. Otherwise, return the `
        # max_extractive_segment_count`.
        # Corresponds to the JSON property `maxExtractiveSegmentCount`
        # @return [Fixnum]
        attr_accessor :max_extractive_segment_count
      
        # Return at most `num_next_segments` segments after each selected segments.
        # Corresponds to the JSON property `numNextSegments`
        # @return [Fixnum]
        attr_accessor :num_next_segments
      
        # Specifies whether to also include the adjacent from each selected segments.
        # Return at most `num_previous_segments` segments before each selected segments.
        # Corresponds to the JSON property `numPreviousSegments`
        # @return [Fixnum]
        attr_accessor :num_previous_segments
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_extractive_answer_count = args[:max_extractive_answer_count] if args.key?(:max_extractive_answer_count)
          @max_extractive_segment_count = args[:max_extractive_segment_count] if args.key?(:max_extractive_segment_count)
          @num_next_segments = args[:num_next_segments] if args.key?(:num_next_segments)
          @num_previous_segments = args[:num_previous_segments] if args.key?(:num_previous_segments)
        end
      end
      
      # A specification for configuring snippets in a search response.
      class GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSnippetSpec
        include Google::Apis::Core::Hashable
      
        # [DEPRECATED] This field is deprecated. To control snippet return, use `
        # return_snippet` field. For backwards compatibility, we will return snippet if
        # max_snippet_count > 0.
        # Corresponds to the JSON property `maxSnippetCount`
        # @return [Fixnum]
        attr_accessor :max_snippet_count
      
        # [DEPRECATED] This field is deprecated and will have no affect on the snippet.
        # Corresponds to the JSON property `referenceOnly`
        # @return [Boolean]
        attr_accessor :reference_only
        alias_method :reference_only?, :reference_only
      
        # If `true`, then return snippet. If no snippet can be generated, we return "No
        # snippet is available for this page." A `snippet_status` with `SUCCESS` or `
        # NO_SNIPPET_AVAILABLE` will also be returned.
        # Corresponds to the JSON property `returnSnippet`
        # @return [Boolean]
        attr_accessor :return_snippet
        alias_method :return_snippet?, :return_snippet
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_snippet_count = args[:max_snippet_count] if args.key?(:max_snippet_count)
          @reference_only = args[:reference_only] if args.key?(:reference_only)
          @return_snippet = args[:return_snippet] if args.key?(:return_snippet)
        end
      end
      
      # A specification for configuring a summary returned in a search response.
      class GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpec
        include Google::Apis::Core::Hashable
      
        # Specifies whether to filter out adversarial queries. The default value is `
        # false`. Google employs search-query classification to detect adversarial
        # queries. No summary is returned if the search query is classified as an
        # adversarial query. For example, a user might ask a question regarding negative
        # comments about the company or submit a query designed to generate unsafe,
        # policy-violating output. If this field is set to `true`, we skip generating
        # summaries for adversarial queries and return fallback messages instead.
        # Corresponds to the JSON property `ignoreAdversarialQuery`
        # @return [Boolean]
        attr_accessor :ignore_adversarial_query
        alias_method :ignore_adversarial_query?, :ignore_adversarial_query
      
        # Specifies whether to filter out queries that are not summary-seeking. The
        # default value is `false`. Google employs search-query classification to detect
        # summary-seeking queries. No summary is returned if the search query is
        # classified as a non-summary seeking query. For example, `why is the sky blue`
        # and `Who is the best soccer player in the world?` are summary-seeking queries,
        # but `SFO airport` and `world cup 2026` are not. They are most likely
        # navigational queries. If this field is set to `true`, we skip generating
        # summaries for non-summary seeking queries and return fallback messages instead.
        # Corresponds to the JSON property `ignoreNonSummarySeekingQuery`
        # @return [Boolean]
        attr_accessor :ignore_non_summary_seeking_query
        alias_method :ignore_non_summary_seeking_query?, :ignore_non_summary_seeking_query
      
        # Specifies whether to include citations in the summary. The default value is `
        # false`. When this field is set to `true`, summaries include in-line citation
        # numbers. Example summary including citations: BigQuery is Google Cloud's fully
        # managed and completely serverless enterprise data warehouse [1]. BigQuery
        # supports all data types, works across clouds, and has built-in machine
        # learning and business intelligence, all within a unified platform [2, 3]. The
        # citation numbers refer to the returned search results and are 1-indexed. For
        # example, [1] means that the sentence is attributed to the first search result.
        # [2, 3] means that the sentence is attributed to both the second and third
        # search results.
        # Corresponds to the JSON property `includeCitations`
        # @return [Boolean]
        attr_accessor :include_citations
        alias_method :include_citations?, :include_citations
      
        # Language code for Summary. Use language tags defined by [BCP47](https://www.
        # rfc-editor.org/rfc/bcp/bcp47.txt). Note: This is an experimental feature.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Specification of the model.
        # Corresponds to the JSON property `modelSpec`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpecModelSpec]
        attr_accessor :model_spec
      
        # The number of top results to generate the summary from. If the number of
        # results returned is less than `summaryResultCount`, the summary is generated
        # from all of the results. At most five results can be used to generate a
        # summary.
        # Corresponds to the JSON property `summaryResultCount`
        # @return [Fixnum]
        attr_accessor :summary_result_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ignore_adversarial_query = args[:ignore_adversarial_query] if args.key?(:ignore_adversarial_query)
          @ignore_non_summary_seeking_query = args[:ignore_non_summary_seeking_query] if args.key?(:ignore_non_summary_seeking_query)
          @include_citations = args[:include_citations] if args.key?(:include_citations)
          @language_code = args[:language_code] if args.key?(:language_code)
          @model_spec = args[:model_spec] if args.key?(:model_spec)
          @summary_result_count = args[:summary_result_count] if args.key?(:summary_result_count)
        end
      end
      
      # Specification of the model.
      class GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpecModelSpec
        include Google::Apis::Core::Hashable
      
        # The string format of the model version. e.g. stable, latest, etc.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # The specification that uses customized query embedding vector to do semantic
      # document retrieval.
      class GoogleCloudDiscoveryengineV1betaSearchRequestEmbeddingSpec
        include Google::Apis::Core::Hashable
      
        # The embedding vector used for retrieval. Limit to 1.
        # Corresponds to the JSON property `embeddingVectors`
        # @return [Array<Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestEmbeddingSpecEmbeddingVector>]
        attr_accessor :embedding_vectors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @embedding_vectors = args[:embedding_vectors] if args.key?(:embedding_vectors)
        end
      end
      
      # Embedding vector.
      class GoogleCloudDiscoveryengineV1betaSearchRequestEmbeddingSpecEmbeddingVector
        include Google::Apis::Core::Hashable
      
        # Embedding field path in schema.
        # Corresponds to the JSON property `fieldPath`
        # @return [String]
        attr_accessor :field_path
      
        # Query embedding vector.
        # Corresponds to the JSON property `vector`
        # @return [Array<Float>]
        attr_accessor :vector
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field_path = args[:field_path] if args.key?(:field_path)
          @vector = args[:vector] if args.key?(:vector)
        end
      end
      
      # A facet specification to perform faceted search.
      class GoogleCloudDiscoveryengineV1betaSearchRequestFacetSpec
        include Google::Apis::Core::Hashable
      
        # Enables dynamic position for this facet. If set to true, the position of this
        # facet among all facets in the response is determined automatically. If dynamic
        # facets are enabled, it is ordered together. If set to false, the position of
        # this facet in the response is the same as in the request, and it is ranked
        # before the facets with dynamic position enable and all dynamic facets. For
        # example, you may always want to have rating facet returned in the response,
        # but it's not necessarily to always display the rating facet at the top. In
        # that case, you can set enable_dynamic_position to true so that the position of
        # rating facet in response is determined automatically. Another example,
        # assuming you have the following facets in the request: * "rating",
        # enable_dynamic_position = true * "price", enable_dynamic_position = false * "
        # brands", enable_dynamic_position = false And also you have a dynamic facets
        # enabled, which generates a facet `gender`. Then the final order of the facets
        # in the response can be ("price", "brands", "rating", "gender") or ("price", "
        # brands", "gender", "rating") depends on how API orders "gender" and "rating"
        # facets. However, notice that "price" and "brands" are always ranked at first
        # and second position because their enable_dynamic_position is false.
        # Corresponds to the JSON property `enableDynamicPosition`
        # @return [Boolean]
        attr_accessor :enable_dynamic_position
        alias_method :enable_dynamic_position?, :enable_dynamic_position
      
        # List of keys to exclude when faceting. By default, FacetKey.key is not
        # excluded from the filter unless it is listed in this field. Listing a facet
        # key in this field allows its values to appear as facet results, even when they
        # are filtered out of search results. Using this field does not affect what
        # search results are returned. For example, suppose there are 100 documents with
        # the color facet "Red" and 200 documents with the color facet "Blue". A query
        # containing the filter "color:ANY("Red")" and having "color" as FacetKey.key
        # would by default return only "Red" documents in the search results, and also
        # return "Red" with count 100 as the only color facet. Although there are also
        # blue documents available, "Blue" would not be shown as an available facet
        # value. If "color" is listed in "excludedFilterKeys", then the query returns
        # the facet values "Red" with count 100 and "Blue" with count 200, because the "
        # color" key is now excluded from the filter. Because this field doesn't affect
        # search results, the search results are still correctly filtered to return only
        # "Red" documents. A maximum of 100 values are allowed. Otherwise, an `
        # INVALID_ARGUMENT` error is returned.
        # Corresponds to the JSON property `excludedFilterKeys`
        # @return [Array<String>]
        attr_accessor :excluded_filter_keys
      
        # Specifies how a facet is computed.
        # Corresponds to the JSON property `facetKey`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchRequestFacetSpecFacetKey]
        attr_accessor :facet_key
      
        # Maximum of facet values that should be returned for this facet. If unspecified,
        # defaults to 20. The maximum allowed value is 300. Values above 300 are
        # coerced to 300. If this field is negative, an `INVALID_ARGUMENT` is returned.
        # Corresponds to the JSON property `limit`
        # @return [Fixnum]
        attr_accessor :limit
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_dynamic_position = args[:enable_dynamic_position] if args.key?(:enable_dynamic_position)
          @excluded_filter_keys = args[:excluded_filter_keys] if args.key?(:excluded_filter_keys)
          @facet_key = args[:facet_key] if args.key?(:facet_key)
          @limit = args[:limit] if args.key?(:limit)
        end
      end
      
      # Specifies how a facet is computed.
      class GoogleCloudDiscoveryengineV1betaSearchRequestFacetSpecFacetKey
        include Google::Apis::Core::Hashable
      
        # True to make facet keys case insensitive when getting faceting values with
        # prefixes or contains; false otherwise.
        # Corresponds to the JSON property `caseInsensitive`
        # @return [Boolean]
        attr_accessor :case_insensitive
        alias_method :case_insensitive?, :case_insensitive
      
        # Only get facet values that contains the given strings. For example, suppose "
        # category" has three values "Action > 2022", "Action > 2021" and "Sci-Fi > 2022"
        # . If set "contains" to "2022", the "category" facet only contains "Action >
        # 2022" and "Sci-Fi > 2022". Only supported on textual fields. Maximum is 10.
        # Corresponds to the JSON property `contains`
        # @return [Array<String>]
        attr_accessor :contains
      
        # Set only if values should be bucketed into intervals. Must be set for facets
        # with numerical values. Must not be set for facet with text values. Maximum
        # number of intervals is 30.
        # Corresponds to the JSON property `intervals`
        # @return [Array<Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaInterval>]
        attr_accessor :intervals
      
        # Required. Supported textual and numerical facet keys in Document object, over
        # which the facet values are computed. Facet key is case-sensitive.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # The order in which documents are returned. Allowed values are: * "count desc",
        # which means order by SearchResponse.Facet.values.count descending. * "value
        # desc", which means order by SearchResponse.Facet.values.value descending. Only
        # applies to textual facets. If not set, textual values are sorted in [natural
        # order](https://en.wikipedia.org/wiki/Natural_sort_order); numerical intervals
        # are sorted in the order given by FacetSpec.FacetKey.intervals.
        # Corresponds to the JSON property `orderBy`
        # @return [String]
        attr_accessor :order_by
      
        # Only get facet values that start with the given string prefix. For example,
        # suppose "category" has three values "Action > 2022", "Action > 2021" and "Sci-
        # Fi > 2022". If set "prefixes" to "Action", the "category" facet only contains "
        # Action > 2022" and "Action > 2021". Only supported on textual fields. Maximum
        # is 10.
        # Corresponds to the JSON property `prefixes`
        # @return [Array<String>]
        attr_accessor :prefixes
      
        # Only get facet for the given restricted values. Only supported on textual
        # fields. For example, suppose "category" has three values "Action > 2022", "
        # Action > 2021" and "Sci-Fi > 2022". If set "restricted_values" to "Action >
        # 2022", the "category" facet only contains "Action > 2022". Only supported on
        # textual fields. Maximum is 10.
        # Corresponds to the JSON property `restrictedValues`
        # @return [Array<String>]
        attr_accessor :restricted_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @case_insensitive = args[:case_insensitive] if args.key?(:case_insensitive)
          @contains = args[:contains] if args.key?(:contains)
          @intervals = args[:intervals] if args.key?(:intervals)
          @key = args[:key] if args.key?(:key)
          @order_by = args[:order_by] if args.key?(:order_by)
          @prefixes = args[:prefixes] if args.key?(:prefixes)
          @restricted_values = args[:restricted_values] if args.key?(:restricted_values)
        end
      end
      
      # Specifies the image query input.
      class GoogleCloudDiscoveryengineV1betaSearchRequestImageQuery
        include Google::Apis::Core::Hashable
      
        # Base64 encoded image bytes. Supported image formats: JPEG, PNG, and BMP.
        # Corresponds to the JSON property `imageBytes`
        # @return [String]
        attr_accessor :image_bytes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @image_bytes = args[:image_bytes] if args.key?(:image_bytes)
        end
      end
      
      # Specification to determine under which conditions query expansion should occur.
      class GoogleCloudDiscoveryengineV1betaSearchRequestQueryExpansionSpec
        include Google::Apis::Core::Hashable
      
        # The condition under which query expansion should occur. Default to Condition.
        # DISABLED.
        # Corresponds to the JSON property `condition`
        # @return [String]
        attr_accessor :condition
      
        # Whether to pin unexpanded results. If this field is set to true, unexpanded
        # products are always at the top of the search results, followed by the expanded
        # results.
        # Corresponds to the JSON property `pinUnexpandedResults`
        # @return [Boolean]
        attr_accessor :pin_unexpanded_results
        alias_method :pin_unexpanded_results?, :pin_unexpanded_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition = args[:condition] if args.key?(:condition)
          @pin_unexpanded_results = args[:pin_unexpanded_results] if args.key?(:pin_unexpanded_results)
        end
      end
      
      # The specification for query spell correction.
      class GoogleCloudDiscoveryengineV1betaSearchRequestSpellCorrectionSpec
        include Google::Apis::Core::Hashable
      
        # The mode under which spell correction should take effect to replace the
        # original search query. Default to Mode.AUTO.
        # Corresponds to the JSON property `mode`
        # @return [String]
        attr_accessor :mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mode = args[:mode] if args.key?(:mode)
        end
      end
      
      # Response message for SearchService.Search method.
      class GoogleCloudDiscoveryengineV1betaSearchResponse
        include Google::Apis::Core::Hashable
      
        # Controls applied as part of the Control service.
        # Corresponds to the JSON property `appliedControls`
        # @return [Array<String>]
        attr_accessor :applied_controls
      
        # A unique search token. This should be included in the UserEvent logs resulting
        # from this search, which enables accurate attribution of search model
        # performance.
        # Corresponds to the JSON property `attributionToken`
        # @return [String]
        attr_accessor :attribution_token
      
        # Contains the spell corrected query, if found. If the spell correction type is
        # AUTOMATIC, then the search results are based on corrected_query. Otherwise the
        # original query is used for search.
        # Corresponds to the JSON property `correctedQuery`
        # @return [String]
        attr_accessor :corrected_query
      
        # Results of facets requested by user.
        # Corresponds to the JSON property `facets`
        # @return [Array<Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseFacet>]
        attr_accessor :facets
      
        # 
        # Corresponds to the JSON property `geoSearchDebugInfo`
        # @return [Array<Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseGeoSearchDebugInfo>]
        attr_accessor :geo_search_debug_info
      
        # Guided search result. The guided search helps user to refine the search
        # results and narrow down to the real needs from a broaded search results.
        # Corresponds to the JSON property `guidedSearchResult`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseGuidedSearchResult]
        attr_accessor :guided_search_result
      
        # A token that can be sent as SearchRequest.page_token to retrieve the next page.
        # If this field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Information describing query expansion including whether expansion has
        # occurred.
        # Corresponds to the JSON property `queryExpansionInfo`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseQueryExpansionInfo]
        attr_accessor :query_expansion_info
      
        # The URI of a customer-defined redirect page. If redirect action is triggered,
        # no search is performed, and only redirect_uri and attribution_token are set in
        # the response.
        # Corresponds to the JSON property `redirectUri`
        # @return [String]
        attr_accessor :redirect_uri
      
        # A list of matched documents. The order represents the ranking.
        # Corresponds to the JSON property `results`
        # @return [Array<Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseSearchResult>]
        attr_accessor :results
      
        # Summary of the top N search result specified by the summary spec.
        # Corresponds to the JSON property `summary`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseSummary]
        attr_accessor :summary
      
        # The estimated total count of matched items irrespective of pagination. The
        # count of results returned by pagination may be less than the total_size that
        # matches.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @applied_controls = args[:applied_controls] if args.key?(:applied_controls)
          @attribution_token = args[:attribution_token] if args.key?(:attribution_token)
          @corrected_query = args[:corrected_query] if args.key?(:corrected_query)
          @facets = args[:facets] if args.key?(:facets)
          @geo_search_debug_info = args[:geo_search_debug_info] if args.key?(:geo_search_debug_info)
          @guided_search_result = args[:guided_search_result] if args.key?(:guided_search_result)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @query_expansion_info = args[:query_expansion_info] if args.key?(:query_expansion_info)
          @redirect_uri = args[:redirect_uri] if args.key?(:redirect_uri)
          @results = args[:results] if args.key?(:results)
          @summary = args[:summary] if args.key?(:summary)
          @total_size = args[:total_size] if args.key?(:total_size)
        end
      end
      
      # A facet result.
      class GoogleCloudDiscoveryengineV1betaSearchResponseFacet
        include Google::Apis::Core::Hashable
      
        # Whether the facet is dynamically generated.
        # Corresponds to the JSON property `dynamicFacet`
        # @return [Boolean]
        attr_accessor :dynamic_facet
        alias_method :dynamic_facet?, :dynamic_facet
      
        # The key for this facet. E.g., "colors" or "price". It matches SearchRequest.
        # FacetSpec.FacetKey.key.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # The facet values for this field.
        # Corresponds to the JSON property `values`
        # @return [Array<Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseFacetFacetValue>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dynamic_facet = args[:dynamic_facet] if args.key?(:dynamic_facet)
          @key = args[:key] if args.key?(:key)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # A facet value which contains value names and their count.
      class GoogleCloudDiscoveryengineV1betaSearchResponseFacetFacetValue
        include Google::Apis::Core::Hashable
      
        # Number of items that have this facet value.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # A floating point interval.
        # Corresponds to the JSON property `interval`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaInterval]
        attr_accessor :interval
      
        # Text value of a facet, such as "Black" for facet "colors".
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @interval = args[:interval] if args.key?(:interval)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Debug information specifically related to forward geocoding issues arising
      # from Geolocation Search.
      class GoogleCloudDiscoveryengineV1betaSearchResponseGeoSearchDebugInfo
        include Google::Apis::Core::Hashable
      
        # The error produced.
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        # The address from which forward geocoding ingestion produced issues.
        # Corresponds to the JSON property `originalAddressQuery`
        # @return [String]
        attr_accessor :original_address_query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_message = args[:error_message] if args.key?(:error_message)
          @original_address_query = args[:original_address_query] if args.key?(:original_address_query)
        end
      end
      
      # Guided search result. The guided search helps user to refine the search
      # results and narrow down to the real needs from a broaded search results.
      class GoogleCloudDiscoveryengineV1betaSearchResponseGuidedSearchResult
        include Google::Apis::Core::Hashable
      
        # Suggested follow-up questions.
        # Corresponds to the JSON property `followUpQuestions`
        # @return [Array<String>]
        attr_accessor :follow_up_questions
      
        # A list of ranked refinement attributes.
        # Corresponds to the JSON property `refinementAttributes`
        # @return [Array<Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseGuidedSearchResultRefinementAttribute>]
        attr_accessor :refinement_attributes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @follow_up_questions = args[:follow_up_questions] if args.key?(:follow_up_questions)
          @refinement_attributes = args[:refinement_attributes] if args.key?(:refinement_attributes)
        end
      end
      
      # Useful attribute for search result refinements.
      class GoogleCloudDiscoveryengineV1betaSearchResponseGuidedSearchResultRefinementAttribute
        include Google::Apis::Core::Hashable
      
        # Attribute key used to refine the results e.g. 'movie_type'.
        # Corresponds to the JSON property `attributeKey`
        # @return [String]
        attr_accessor :attribute_key
      
        # Attribute value used to refine the results e.g. 'drama'.
        # Corresponds to the JSON property `attributeValue`
        # @return [String]
        attr_accessor :attribute_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribute_key = args[:attribute_key] if args.key?(:attribute_key)
          @attribute_value = args[:attribute_value] if args.key?(:attribute_value)
        end
      end
      
      # Information describing query expansion including whether expansion has
      # occurred.
      class GoogleCloudDiscoveryengineV1betaSearchResponseQueryExpansionInfo
        include Google::Apis::Core::Hashable
      
        # Bool describing whether query expansion has occurred.
        # Corresponds to the JSON property `expandedQuery`
        # @return [Boolean]
        attr_accessor :expanded_query
        alias_method :expanded_query?, :expanded_query
      
        # Number of pinned results. This field will only be set when expansion happens
        # and SearchRequest.QueryExpansionSpec.pin_unexpanded_results is set to true.
        # Corresponds to the JSON property `pinnedResultCount`
        # @return [Fixnum]
        attr_accessor :pinned_result_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expanded_query = args[:expanded_query] if args.key?(:expanded_query)
          @pinned_result_count = args[:pinned_result_count] if args.key?(:pinned_result_count)
        end
      end
      
      # Represents the search results.
      class GoogleCloudDiscoveryengineV1betaSearchResponseSearchResult
        include Google::Apis::Core::Hashable
      
        # Document captures all raw metadata information of items to be recommended or
        # searched.
        # Corresponds to the JSON property `document`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocument]
        attr_accessor :document
      
        # Document.id of the searched Document.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Google provided available scores.
        # Corresponds to the JSON property `modelScores`
        # @return [Hash<String,Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDoubleList>]
        attr_accessor :model_scores
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document = args[:document] if args.key?(:document)
          @id = args[:id] if args.key?(:id)
          @model_scores = args[:model_scores] if args.key?(:model_scores)
        end
      end
      
      # Summary of the top N search result specified by the summary spec.
      class GoogleCloudDiscoveryengineV1betaSearchResponseSummary
        include Google::Apis::Core::Hashable
      
        # Safety Attribute categories and their associated confidence scores.
        # Corresponds to the JSON property `safetyAttributes`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchResponseSummarySafetyAttributes]
        attr_accessor :safety_attributes
      
        # Additional summary-skipped reasons. This provides the reason for ignored cases.
        # If nothing is skipped, this field is not set.
        # Corresponds to the JSON property `summarySkippedReasons`
        # @return [Array<String>]
        attr_accessor :summary_skipped_reasons
      
        # The summary content.
        # Corresponds to the JSON property `summaryText`
        # @return [String]
        attr_accessor :summary_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @safety_attributes = args[:safety_attributes] if args.key?(:safety_attributes)
          @summary_skipped_reasons = args[:summary_skipped_reasons] if args.key?(:summary_skipped_reasons)
          @summary_text = args[:summary_text] if args.key?(:summary_text)
        end
      end
      
      # Safety Attribute categories and their associated confidence scores.
      class GoogleCloudDiscoveryengineV1betaSearchResponseSummarySafetyAttributes
        include Google::Apis::Core::Hashable
      
        # The display names of Safety Attribute categories associated with the generated
        # content. Order matches the Scores.
        # Corresponds to the JSON property `categories`
        # @return [Array<String>]
        attr_accessor :categories
      
        # The confidence scores of the each category, higher value means higher
        # confidence. Order matches the Categories.
        # Corresponds to the JSON property `scores`
        # @return [Array<Float>]
        attr_accessor :scores
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @categories = args[:categories] if args.key?(:categories)
          @scores = args[:scores] if args.key?(:scores)
        end
      end
      
      # Defines text input.
      class GoogleCloudDiscoveryengineV1betaTextInput
        include Google::Apis::Core::Hashable
      
        # Defines context of the conversation
        # Corresponds to the JSON property `context`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaConversationContext]
        attr_accessor :context
      
        # Text input.
        # Corresponds to the JSON property `input`
        # @return [String]
        attr_accessor :input
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @context = args[:context] if args.key?(:context)
          @input = args[:input] if args.key?(:input)
        end
      end
      
      # A transaction represents the entire purchase transaction.
      class GoogleCloudDiscoveryengineV1betaTransactionInfo
        include Google::Apis::Core::Hashable
      
        # All the costs associated with the products. These can be manufacturing costs,
        # shipping expenses not borne by the end user, or any other costs, such that: *
        # Profit = value - tax - cost
        # Corresponds to the JSON property `cost`
        # @return [Float]
        attr_accessor :cost
      
        # Required. Currency code. Use three-character ISO-4217 code.
        # Corresponds to the JSON property `currency`
        # @return [String]
        attr_accessor :currency
      
        # The total discount(s) value applied to this transaction. This figure should be
        # excluded from TransactionInfo.value For example, if a user paid
        # TransactionInfo.value amount, then nominal (pre-discount) value of the
        # transaction is the sum of TransactionInfo.value and TransactionInfo.
        # discount_value This means that profit is calculated the same way, regardless
        # of the discount value, and that TransactionInfo.discount_value can be larger
        # than TransactionInfo.value: * Profit = value - tax - cost
        # Corresponds to the JSON property `discountValue`
        # @return [Float]
        attr_accessor :discount_value
      
        # All the taxes associated with the transaction.
        # Corresponds to the JSON property `tax`
        # @return [Float]
        attr_accessor :tax
      
        # The transaction ID with a length limit of 128 characters.
        # Corresponds to the JSON property `transactionId`
        # @return [String]
        attr_accessor :transaction_id
      
        # Required. Total non-zero value associated with the transaction. This value may
        # include shipping, tax, or other adjustments to the total value that you want
        # to include.
        # Corresponds to the JSON property `value`
        # @return [Float]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cost = args[:cost] if args.key?(:cost)
          @currency = args[:currency] if args.key?(:currency)
          @discount_value = args[:discount_value] if args.key?(:discount_value)
          @tax = args[:tax] if args.key?(:tax)
          @transaction_id = args[:transaction_id] if args.key?(:transaction_id)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Metadata for UpdateSchema LRO.
      class GoogleCloudDiscoveryengineV1betaUpdateSchemaMetadata
        include Google::Apis::Core::Hashable
      
        # Operation create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Operation last update time. If the operation is done, this is also the finish
        # time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # UserEvent captures all metadata information Discovery Engine API needs to know
      # about how end users interact with customers' website.
      class GoogleCloudDiscoveryengineV1betaUserEvent
        include Google::Apis::Core::Hashable
      
        # Extra user event features to include in the recommendation model. These
        # attributes must NOT contain data that needs to be parsed or processed further,
        # e.g. JSON or other encodings. If you provide custom attributes for ingested
        # user events, also include them in the user events that you associate with
        # prediction requests. Custom attribute formatting must be consistent between
        # imported events and events provided with prediction requests. This lets the
        # Discovery Engine API use those custom attributes when training models and
        # serving predictions, which helps improve recommendation quality. This field
        # needs to pass all below criteria, otherwise an `INVALID_ARGUMENT` error is
        # returned: * The key must be a UTF-8 encoded string with a length limit of 5,
        # 000 characters. * For text attributes, at most 400 values are allowed. Empty
        # values are not allowed. Each value must be a UTF-8 encoded string with a
        # length limit of 256 characters. * For number attributes, at most 400 values
        # are allowed. For product recommendations, an example of extra user information
        # is `traffic_channel`, which is how a user arrives at the site. Users can
        # arrive at the site by coming to the site directly, coming through Google
        # search, or in other ways.
        # Corresponds to the JSON property `attributes`
        # @return [Hash<String,Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCustomAttribute>]
        attr_accessor :attributes
      
        # Token to attribute an API response to user action(s) to trigger the event.
        # Highly recommended for user events that are the result of
        # RecommendationService.Recommend. This field enables accurate attribution of
        # recommendation model performance. The value must be one of: *
        # RecommendResponse.attribution_token for events that are the result of
        # RecommendationService.Recommend. * SearchResponse.attribution_token for events
        # that are the result of SearchService.Search. This token enables us to
        # accurately attribute page view or conversion completion back to the event and
        # the particular predict response containing this clicked/purchased product. If
        # user clicks on product K in the recommendation results, pass RecommendResponse.
        # attribution_token as a URL parameter to product K's page. When recording
        # events on product K's page, log the RecommendResponse.attribution_token to
        # this field.
        # Corresponds to the JSON property `attributionToken`
        # @return [String]
        attr_accessor :attribution_token
      
        # Detailed completion information including completion attribution token and
        # clicked completion info.
        # Corresponds to the JSON property `completionInfo`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCompletionInfo]
        attr_accessor :completion_info
      
        # Should set to true if the request is made directly from the end user, in which
        # case the UserEvent.user_info.user_agent can be populated from the HTTP request.
        # This flag should be set only if the API request is made directly from the end
        # user such as a mobile app (and not if a gateway or a server is processing and
        # pushing the user events). This should not be set when using the JavaScript tag
        # in UserEventService.CollectUserEvent.
        # Corresponds to the JSON property `directUserRequest`
        # @return [Boolean]
        attr_accessor :direct_user_request
        alias_method :direct_user_request?, :direct_user_request
      
        # List of Documents associated with this user event. This field is optional
        # except for the following event types: * `view-item` * `add-to-cart` * `
        # purchase` * `media-play` * `media-complete` In a `search` event, this field
        # represents the documents returned to the end user on the current page (the end
        # user may have not finished browsing the whole page yet). When a new page is
        # returned to the end user, after pagination/filtering/ordering even for the
        # same query, a new `search` event with different UserEvent.documents is desired.
        # Corresponds to the JSON property `documents`
        # @return [Array<Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaDocumentInfo>]
        attr_accessor :documents
      
        # Only required for UserEventService.ImportUserEvents method. Timestamp of when
        # the user event happened.
        # Corresponds to the JSON property `eventTime`
        # @return [String]
        attr_accessor :event_time
      
        # Required. User event type. Allowed values are: Generic values: * `search`:
        # Search for Documents. * `view-item`: Detailed page view of a Document. * `view-
        # item-list`: View of a panel or ordered list of Documents. * `view-home-page`:
        # View of the home page. * `view-category-page`: View of a category page, e.g.
        # Home > Men > Jeans Retail-related values: * `add-to-cart`: Add an item(s) to
        # cart, e.g. in Retail online shopping * `purchase`: Purchase an item(s) Media-
        # related values: * `media-play`: Start/resume watching a video, playing a song,
        # etc. * `media-complete`: Finished or stopped midway through a video, song, etc.
        # Corresponds to the JSON property `eventType`
        # @return [String]
        attr_accessor :event_type
      
        # The filter syntax consists of an expression language for constructing a
        # predicate from one or more fields of the documents being filtered. One example
        # is for `search` events, the associated SearchRequest may contain a filter
        # expression in SearchRequest.filter conforming to https://google.aip.dev/160#
        # filtering. Similarly, for `view-item-list` events that are generated from a
        # RecommendationService.RecommendRequest, this field may be populated directly
        # from RecommendationService.RecommendRequest.filter conforming to https://
        # google.aip.dev/160#filtering. The value must be a UTF-8 encoded string with a
        # length limit of 1,000 characters. Otherwise, an `INVALID_ARGUMENT` error is
        # returned.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Media-specific user event information.
        # Corresponds to the JSON property `mediaInfo`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaMediaInfo]
        attr_accessor :media_info
      
        # Detailed page information.
        # Corresponds to the JSON property `pageInfo`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaPageInfo]
        attr_accessor :page_info
      
        # Detailed panel information associated with a user event.
        # Corresponds to the JSON property `panel`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaPanelInfo]
        attr_accessor :panel
      
        # The promotion IDs if this is an event associated with promotions. Currently,
        # this field is restricted to at most one ID.
        # Corresponds to the JSON property `promotionIds`
        # @return [Array<String>]
        attr_accessor :promotion_ids
      
        # Detailed search information.
        # Corresponds to the JSON property `searchInfo`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaSearchInfo]
        attr_accessor :search_info
      
        # A unique identifier for tracking a visitor session with a length limit of 128
        # bytes. A session is an aggregation of an end user behavior in a time span. A
        # general guideline to populate the session_id: 1. If user has no activity for
        # 30 min, a new session_id should be assigned. 2. The session_id should be
        # unique across users, suggest use uuid or add UserEvent.user_pseudo_id as
        # prefix.
        # Corresponds to the JSON property `sessionId`
        # @return [String]
        attr_accessor :session_id
      
        # A list of identifiers for the independent experiment groups this user event
        # belongs to. This is used to distinguish between user events associated with
        # different experiment setups on the customer end.
        # Corresponds to the JSON property `tagIds`
        # @return [Array<String>]
        attr_accessor :tag_ids
      
        # A transaction represents the entire purchase transaction.
        # Corresponds to the JSON property `transactionInfo`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaTransactionInfo]
        attr_accessor :transaction_info
      
        # Information of an end user.
        # Corresponds to the JSON property `userInfo`
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaUserInfo]
        attr_accessor :user_info
      
        # Required. A unique identifier for tracking visitors. For example, this could
        # be implemented with an HTTP cookie, which should be able to uniquely identify
        # a visitor on a single device. This unique identifier should not change if the
        # visitor log in/out of the website. Do not set the field to the same fixed ID
        # for different users. This mixes the event history of those users together,
        # which results in degraded model quality. The field must be a UTF-8 encoded
        # string with a length limit of 128 characters. Otherwise, an `INVALID_ARGUMENT`
        # error is returned. The field should not contain PII or user-data. We recommend
        # to use Google Analytics [Client ID](https://developers.google.com/analytics/
        # devguides/collection/analyticsjs/field-reference#clientId) for this field.
        # Corresponds to the JSON property `userPseudoId`
        # @return [String]
        attr_accessor :user_pseudo_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @attribution_token = args[:attribution_token] if args.key?(:attribution_token)
          @completion_info = args[:completion_info] if args.key?(:completion_info)
          @direct_user_request = args[:direct_user_request] if args.key?(:direct_user_request)
          @documents = args[:documents] if args.key?(:documents)
          @event_time = args[:event_time] if args.key?(:event_time)
          @event_type = args[:event_type] if args.key?(:event_type)
          @filter = args[:filter] if args.key?(:filter)
          @media_info = args[:media_info] if args.key?(:media_info)
          @page_info = args[:page_info] if args.key?(:page_info)
          @panel = args[:panel] if args.key?(:panel)
          @promotion_ids = args[:promotion_ids] if args.key?(:promotion_ids)
          @search_info = args[:search_info] if args.key?(:search_info)
          @session_id = args[:session_id] if args.key?(:session_id)
          @tag_ids = args[:tag_ids] if args.key?(:tag_ids)
          @transaction_info = args[:transaction_info] if args.key?(:transaction_info)
          @user_info = args[:user_info] if args.key?(:user_info)
          @user_pseudo_id = args[:user_pseudo_id] if args.key?(:user_pseudo_id)
        end
      end
      
      # Information of an end user.
      class GoogleCloudDiscoveryengineV1betaUserInfo
        include Google::Apis::Core::Hashable
      
        # User agent as included in the HTTP header. The field must be a UTF-8 encoded
        # string with a length limit of 1,000 characters. Otherwise, an `
        # INVALID_ARGUMENT` error is returned. This should not be set when using the
        # client side event reporting with GTM or JavaScript tag in UserEventService.
        # CollectUserEvent or if UserEvent.direct_user_request is set.
        # Corresponds to the JSON property `userAgent`
        # @return [String]
        attr_accessor :user_agent
      
        # Highly recommended for logged-in users. Unique identifier for logged-in user,
        # such as a user name. Don't set for anonymous users. Always use a hashed value
        # for this ID. Don't set the field to the same fixed ID for different users.
        # This mixes the event history of those users together, which results in
        # degraded model quality. The field must be a UTF-8 encoded string with a length
        # limit of 128 characters. Otherwise, an `INVALID_ARGUMENT` error is returned.
        # Corresponds to the JSON property `userId`
        # @return [String]
        attr_accessor :user_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @user_agent = args[:user_agent] if args.key?(:user_agent)
          @user_id = args[:user_id] if args.key?(:user_id)
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
        # @return [Array<Google::Apis::DiscoveryengineV1beta::GoogleLongrunningOperation>]
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
        # @return [Google::Apis::DiscoveryengineV1beta::GoogleRpcStatus]
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
      
      # Represents a whole or partial calendar date, such as a birthday. The time of
      # day and time zone are either specified elsewhere or are insignificant. The
      # date is relative to the Gregorian Calendar. This can represent one of the
      # following: * A full date, with non-zero year, month, and day values. * A month
      # and day, with a zero year (for example, an anniversary). * A year on its own,
      # with a zero month and a zero day. * A year and month, with a zero day (for
      # example, a credit card expiration date). Related types: * google.type.
      # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
      class GoogleTypeDate
        include Google::Apis::Core::Hashable
      
        # Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        # specify a year by itself or a year and month where the day isn't significant.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        # and day.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        # year.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @month = args[:month] if args.key?(:month)
          @year = args[:year] if args.key?(:year)
        end
      end
    end
  end
end
