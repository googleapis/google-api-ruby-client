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
    module RetailV2beta
      
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
      class GoogleCloudRetailLoggingErrorContext
        include Google::Apis::Core::Hashable
      
        # HTTP request data that is related to a reported error.
        # Corresponds to the JSON property `httpRequest`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailLoggingHttpRequestContext]
        attr_accessor :http_request
      
        # Indicates a location in the source code of the service for which errors are
        # reported.
        # Corresponds to the JSON property `reportLocation`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailLoggingSourceLocation]
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
      
      # An error log which is reported to the Error Reporting system. This proto a
      # superset of google.devtools.clouderrorreporting.v1beta1.ReportedErrorEvent.
      class GoogleCloudRetailLoggingErrorLog
        include Google::Apis::Core::Hashable
      
        # A description of the context in which an error occurred.
        # Corresponds to the JSON property `context`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailLoggingErrorContext]
        attr_accessor :context
      
        # The error payload that is populated on LRO import APIs. Including: "google.
        # cloud.retail.v2.ProductService.ImportProducts" "google.cloud.retail.v2.
        # EventService.ImportUserEvents"
        # Corresponds to the JSON property `importPayload`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailLoggingImportErrorContext]
        attr_accessor :import_payload
      
        # A message describing the error.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # The API request payload, represented as a protocol buffer. Most API request
        # types are supported. For example: "type.googleapis.com/google.cloud.retail.v2.
        # ProductService.CreateProductRequest" "type.googleapis.com/google.cloud.retail.
        # v2.UserEventService.WriteUserEventRequest"
        # Corresponds to the JSON property `requestPayload`
        # @return [Hash<String,Object>]
        attr_accessor :request_payload
      
        # The API response payload, represented as a protocol buffer. This is used to
        # log some "soft errors", where the response is valid but we consider there are
        # some quality issues like unjoined events. The following API responses are
        # supported and no PII is included: "google.cloud.retail.v2.PredictionService.
        # Predict" "google.cloud.retail.v2.UserEventService.WriteUserEvent" "google.
        # cloud.retail.v2.UserEventService.CollectUserEvent"
        # Corresponds to the JSON property `responsePayload`
        # @return [Hash<String,Object>]
        attr_accessor :response_payload
      
        # Describes a running service that sends errors.
        # Corresponds to the JSON property `serviceContext`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailLoggingServiceContext]
        attr_accessor :service_context
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::RetailV2beta::GoogleRpcStatus]
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
      class GoogleCloudRetailLoggingHttpRequestContext
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
      
      # The error payload that is populated on LRO import APIs. Including: "google.
      # cloud.retail.v2.ProductService.ImportProducts" "google.cloud.retail.v2.
      # EventService.ImportUserEvents"
      class GoogleCloudRetailLoggingImportErrorContext
        include Google::Apis::Core::Hashable
      
        # The detailed content which caused the error on importing a catalog item.
        # Corresponds to the JSON property `catalogItem`
        # @return [String]
        attr_accessor :catalog_item
      
        # Cloud Storage file path of the import source. Can be set for batch operation
        # error.
        # Corresponds to the JSON property `gcsPath`
        # @return [String]
        attr_accessor :gcs_path
      
        # Line number of the content in file. Should be empty for permission or batch
        # operation error.
        # Corresponds to the JSON property `lineNumber`
        # @return [String]
        attr_accessor :line_number
      
        # The operation resource name of the LRO.
        # Corresponds to the JSON property `operationName`
        # @return [String]
        attr_accessor :operation_name
      
        # The detailed content which caused the error on importing a product.
        # Corresponds to the JSON property `product`
        # @return [String]
        attr_accessor :product
      
        # The detailed content which caused the error on importing a user event.
        # Corresponds to the JSON property `userEvent`
        # @return [String]
        attr_accessor :user_event
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @catalog_item = args[:catalog_item] if args.key?(:catalog_item)
          @gcs_path = args[:gcs_path] if args.key?(:gcs_path)
          @line_number = args[:line_number] if args.key?(:line_number)
          @operation_name = args[:operation_name] if args.key?(:operation_name)
          @product = args[:product] if args.key?(:product)
          @user_event = args[:user_event] if args.key?(:user_event)
        end
      end
      
      # Describes a running service that sends errors.
      class GoogleCloudRetailLoggingServiceContext
        include Google::Apis::Core::Hashable
      
        # An identifier of the service. For example, "retail.googleapis.com".
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
      class GoogleCloudRetailLoggingSourceLocation
        include Google::Apis::Core::Hashable
      
        # Human-readable name of a function or method. For example, "google.cloud.retail.
        # v2.UserEventService.ImportUserEvents".
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
      
      # Configuration of destination for Import related errors.
      class GoogleCloudRetailV2ImportErrorsConfig
        include Google::Apis::Core::Hashable
      
        # Google Cloud Storage path for import errors. This must be an empty, existing
        # Cloud Storage bucket. Import errors will be written to a file in this bucket,
        # one per line, as a JSON-encoded `google.rpc.Status` message.
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
      
      # Metadata related to the progress of the Import operation. This will be
      # returned by the google.longrunning.Operation.metadata field.
      class GoogleCloudRetailV2ImportMetadata
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
      
      # Response of the ImportProductsRequest. If the long running operation is done,
      # then this message is returned by the google.longrunning.Operations.response
      # field if the operation was successful.
      class GoogleCloudRetailV2ImportProductsResponse
        include Google::Apis::Core::Hashable
      
        # A sample of errors encountered while processing the request.
        # Corresponds to the JSON property `errorSamples`
        # @return [Array<Google::Apis::RetailV2beta::GoogleRpcStatus>]
        attr_accessor :error_samples
      
        # Configuration of destination for Import related errors.
        # Corresponds to the JSON property `errorsConfig`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2ImportErrorsConfig]
        attr_accessor :errors_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_samples = args[:error_samples] if args.key?(:error_samples)
          @errors_config = args[:errors_config] if args.key?(:errors_config)
        end
      end
      
      # Response of the ImportUserEventsRequest. If the long running operation was
      # successful, then this message is returned by the google.longrunning.Operations.
      # response field if the operation was successful.
      class GoogleCloudRetailV2ImportUserEventsResponse
        include Google::Apis::Core::Hashable
      
        # A sample of errors encountered while processing the request.
        # Corresponds to the JSON property `errorSamples`
        # @return [Array<Google::Apis::RetailV2beta::GoogleRpcStatus>]
        attr_accessor :error_samples
      
        # Configuration of destination for Import related errors.
        # Corresponds to the JSON property `errorsConfig`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2ImportErrorsConfig]
        attr_accessor :errors_config
      
        # A summary of import result. The UserEventImportSummary summarizes the import
        # status for user events.
        # Corresponds to the JSON property `importSummary`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2UserEventImportSummary]
        attr_accessor :import_summary
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_samples = args[:error_samples] if args.key?(:error_samples)
          @errors_config = args[:errors_config] if args.key?(:errors_config)
          @import_summary = args[:import_summary] if args.key?(:import_summary)
        end
      end
      
      # Metadata related to the progress of the Purge operation. This will be returned
      # by the google.longrunning.Operation.metadata field.
      class GoogleCloudRetailV2PurgeMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response of the PurgeUserEventsRequest. If the long running operation is
      # successfully done, then this message is returned by the google.longrunning.
      # Operations.response field.
      class GoogleCloudRetailV2PurgeUserEventsResponse
        include Google::Apis::Core::Hashable
      
        # The total count of events purged as a result of the operation.
        # Corresponds to the JSON property `purgedEventsCount`
        # @return [Fixnum]
        attr_accessor :purged_events_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @purged_events_count = args[:purged_events_count] if args.key?(:purged_events_count)
        end
      end
      
      # Metadata for RejoinUserEvents method.
      class GoogleCloudRetailV2RejoinUserEventsMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for RejoinUserEvents method.
      class GoogleCloudRetailV2RejoinUserEventsResponse
        include Google::Apis::Core::Hashable
      
        # Number of user events that were joined with latest product catalog.
        # Corresponds to the JSON property `rejoinedUserEventsCount`
        # @return [Fixnum]
        attr_accessor :rejoined_user_events_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rejoined_user_events_count = args[:rejoined_user_events_count] if args.key?(:rejoined_user_events_count)
        end
      end
      
      # A summary of import result. The UserEventImportSummary summarizes the import
      # status for user events.
      class GoogleCloudRetailV2UserEventImportSummary
        include Google::Apis::Core::Hashable
      
        # Count of user events imported with complete existing catalog information.
        # Corresponds to the JSON property `joinedEventsCount`
        # @return [Fixnum]
        attr_accessor :joined_events_count
      
        # Count of user events imported, but with catalog information not found in the
        # imported catalog.
        # Corresponds to the JSON property `unjoinedEventsCount`
        # @return [Fixnum]
        attr_accessor :unjoined_events_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @joined_events_count = args[:joined_events_count] if args.key?(:joined_events_count)
          @unjoined_events_count = args[:unjoined_events_count] if args.key?(:unjoined_events_count)
        end
      end
      
      # Configuration of destination for Export related errors.
      class GoogleCloudRetailV2alphaExportErrorsConfig
        include Google::Apis::Core::Hashable
      
        # Google Cloud Storage path for import errors. This must be an empty, existing
        # Cloud Storage bucket. Export errors will be written to a file in this bucket,
        # one per line, as a JSON-encoded `google.rpc.Status` message.
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
      
      # Metadata related to the progress of the Export operation. This will be
      # returned by the google.longrunning.Operation.metadata field.
      class GoogleCloudRetailV2alphaExportMetadata
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
      
      # Response of the ExportProductsRequest. If the long running operation is done,
      # then this message is returned by the google.longrunning.Operations.response
      # field if the operation was successful.
      class GoogleCloudRetailV2alphaExportProductsResponse
        include Google::Apis::Core::Hashable
      
        # A sample of errors encountered while processing the request.
        # Corresponds to the JSON property `errorSamples`
        # @return [Array<Google::Apis::RetailV2beta::GoogleRpcStatus>]
        attr_accessor :error_samples
      
        # Configuration of destination for Export related errors.
        # Corresponds to the JSON property `errorsConfig`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaExportErrorsConfig]
        attr_accessor :errors_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_samples = args[:error_samples] if args.key?(:error_samples)
          @errors_config = args[:errors_config] if args.key?(:errors_config)
        end
      end
      
      # Response of the ExportUserEventsRequest. If the long running operation was
      # successful, then this message is returned by the google.longrunning.Operations.
      # response field if the operation was successful.
      class GoogleCloudRetailV2alphaExportUserEventsResponse
        include Google::Apis::Core::Hashable
      
        # A sample of errors encountered while processing the request.
        # Corresponds to the JSON property `errorSamples`
        # @return [Array<Google::Apis::RetailV2beta::GoogleRpcStatus>]
        attr_accessor :error_samples
      
        # Configuration of destination for Export related errors.
        # Corresponds to the JSON property `errorsConfig`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaExportErrorsConfig]
        attr_accessor :errors_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_samples = args[:error_samples] if args.key?(:error_samples)
          @errors_config = args[:errors_config] if args.key?(:errors_config)
        end
      end
      
      # Configuration of destination for Import related errors.
      class GoogleCloudRetailV2alphaImportErrorsConfig
        include Google::Apis::Core::Hashable
      
        # Google Cloud Storage path for import errors. This must be an empty, existing
        # Cloud Storage bucket. Import errors will be written to a file in this bucket,
        # one per line, as a JSON-encoded `google.rpc.Status` message.
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
      
      # Metadata related to the progress of the Import operation. This will be
      # returned by the google.longrunning.Operation.metadata field.
      class GoogleCloudRetailV2alphaImportMetadata
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
      
      # Response of the ImportProductsRequest. If the long running operation is done,
      # then this message is returned by the google.longrunning.Operations.response
      # field if the operation was successful.
      class GoogleCloudRetailV2alphaImportProductsResponse
        include Google::Apis::Core::Hashable
      
        # A sample of errors encountered while processing the request.
        # Corresponds to the JSON property `errorSamples`
        # @return [Array<Google::Apis::RetailV2beta::GoogleRpcStatus>]
        attr_accessor :error_samples
      
        # Configuration of destination for Import related errors.
        # Corresponds to the JSON property `errorsConfig`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaImportErrorsConfig]
        attr_accessor :errors_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_samples = args[:error_samples] if args.key?(:error_samples)
          @errors_config = args[:errors_config] if args.key?(:errors_config)
        end
      end
      
      # Response of the ImportUserEventsRequest. If the long running operation was
      # successful, then this message is returned by the google.longrunning.Operations.
      # response field if the operation was successful.
      class GoogleCloudRetailV2alphaImportUserEventsResponse
        include Google::Apis::Core::Hashable
      
        # A sample of errors encountered while processing the request.
        # Corresponds to the JSON property `errorSamples`
        # @return [Array<Google::Apis::RetailV2beta::GoogleRpcStatus>]
        attr_accessor :error_samples
      
        # Configuration of destination for Import related errors.
        # Corresponds to the JSON property `errorsConfig`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaImportErrorsConfig]
        attr_accessor :errors_config
      
        # A summary of import result. The UserEventImportSummary summarizes the import
        # status for user events.
        # Corresponds to the JSON property `importSummary`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2alphaUserEventImportSummary]
        attr_accessor :import_summary
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_samples = args[:error_samples] if args.key?(:error_samples)
          @errors_config = args[:errors_config] if args.key?(:errors_config)
          @import_summary = args[:import_summary] if args.key?(:import_summary)
        end
      end
      
      # Metadata related to the progress of the Purge operation. This will be returned
      # by the google.longrunning.Operation.metadata field.
      class GoogleCloudRetailV2alphaPurgeMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response of the PurgeUserEventsRequest. If the long running operation is
      # successfully done, then this message is returned by the google.longrunning.
      # Operations.response field.
      class GoogleCloudRetailV2alphaPurgeUserEventsResponse
        include Google::Apis::Core::Hashable
      
        # The total count of events purged as a result of the operation.
        # Corresponds to the JSON property `purgedEventsCount`
        # @return [Fixnum]
        attr_accessor :purged_events_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @purged_events_count = args[:purged_events_count] if args.key?(:purged_events_count)
        end
      end
      
      # Metadata for RejoinUserEvents method.
      class GoogleCloudRetailV2alphaRejoinUserEventsMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for RejoinUserEvents method.
      class GoogleCloudRetailV2alphaRejoinUserEventsResponse
        include Google::Apis::Core::Hashable
      
        # Number of user events that were joined with latest product catalog.
        # Corresponds to the JSON property `rejoinedUserEventsCount`
        # @return [Fixnum]
        attr_accessor :rejoined_user_events_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rejoined_user_events_count = args[:rejoined_user_events_count] if args.key?(:rejoined_user_events_count)
        end
      end
      
      # A summary of import result. The UserEventImportSummary summarizes the import
      # status for user events.
      class GoogleCloudRetailV2alphaUserEventImportSummary
        include Google::Apis::Core::Hashable
      
        # Count of user events imported with complete existing catalog information.
        # Corresponds to the JSON property `joinedEventsCount`
        # @return [Fixnum]
        attr_accessor :joined_events_count
      
        # Count of user events imported, but with catalog information not found in the
        # imported catalog.
        # Corresponds to the JSON property `unjoinedEventsCount`
        # @return [Fixnum]
        attr_accessor :unjoined_events_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @joined_events_count = args[:joined_events_count] if args.key?(:joined_events_count)
          @unjoined_events_count = args[:unjoined_events_count] if args.key?(:unjoined_events_count)
        end
      end
      
      # BigQuery source import data from.
      class GoogleCloudRetailV2betaBigQuerySource
        include Google::Apis::Core::Hashable
      
        # The schema to use when parsing the data from the source. Supported values for
        # product imports: * `product` (default): One JSON Product per line. Each
        # product must have a valid Product.id. * `product_merchant_center`: See [
        # Importing catalog data from Merchant Center](https://cloud.google.com/retail/
        # recommendations-ai/docs/upload-catalog#mc). Supported values for user events
        # imports: * `user_event` (default): One JSON UserEvent per line. * `
        # user_event_ga360`: Using https://support.google.com/analytics/answer/3437719?
        # hl=en.
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
          @project_id = args[:project_id] if args.key?(:project_id)
          @table_id = args[:table_id] if args.key?(:table_id)
        end
      end
      
      # The catalog configuration.
      class GoogleCloudRetailV2betaCatalog
        include Google::Apis::Core::Hashable
      
        # Required. Immutable. The catalog display name. This field must be a UTF-8
        # encoded string with a length limit of 128 characters. Otherwise, an
        # INVALID_ARGUMENT error is returned.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. Immutable. The fully qualified resource name of the catalog.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Configures what level the product should be uploaded with regards to how users
        # will be send events and how predictions will be made.
        # Corresponds to the JSON property `productLevelConfig`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProductLevelConfig]
        attr_accessor :product_level_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @product_level_config = args[:product_level_config] if args.key?(:product_level_config)
        end
      end
      
      # A custom attribute that is not explicitly modeled in Product.
      class GoogleCloudRetailV2betaCustomAttribute
        include Google::Apis::Core::Hashable
      
        # The numerical values of this custom attribute. For example, `[2.3, 15.4]` when
        # the key is "lengths_cm". At most 400 values are allowed.Otherwise, an
        # INVALID_ARGUMENT error is returned. Exactly one of text or numbers should be
        # set. Otherwise, an INVALID_ARGUMENT error is returned.
        # Corresponds to the JSON property `numbers`
        # @return [Array<Float>]
        attr_accessor :numbers
      
        # The textual values of this custom attribute. For example, `["yellow", "green"]`
        # when the key is "color". At most 400 values are allowed. Empty values are not
        # allowed. Each value must be a UTF-8 encoded string with a length limit of 256
        # characters. Otherwise, an INVALID_ARGUMENT error is returned. Exactly one of
        # text or numbers should be set. Otherwise, an INVALID_ARGUMENT error is
        # returned.
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
      
      # Configuration of destination for Export related errors.
      class GoogleCloudRetailV2betaExportErrorsConfig
        include Google::Apis::Core::Hashable
      
        # Google Cloud Storage path for import errors. This must be an empty, existing
        # Cloud Storage bucket. Export errors will be written to a file in this bucket,
        # one per line, as a JSON-encoded `google.rpc.Status` message.
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
      
      # Metadata related to the progress of the Export operation. This will be
      # returned by the google.longrunning.Operation.metadata field.
      class GoogleCloudRetailV2betaExportMetadata
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
      
      # Response of the ExportProductsRequest. If the long running operation is done,
      # then this message is returned by the google.longrunning.Operations.response
      # field if the operation was successful.
      class GoogleCloudRetailV2betaExportProductsResponse
        include Google::Apis::Core::Hashable
      
        # A sample of errors encountered while processing the request.
        # Corresponds to the JSON property `errorSamples`
        # @return [Array<Google::Apis::RetailV2beta::GoogleRpcStatus>]
        attr_accessor :error_samples
      
        # Configuration of destination for Export related errors.
        # Corresponds to the JSON property `errorsConfig`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaExportErrorsConfig]
        attr_accessor :errors_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_samples = args[:error_samples] if args.key?(:error_samples)
          @errors_config = args[:errors_config] if args.key?(:errors_config)
        end
      end
      
      # Response of the ExportUserEventsRequest. If the long running operation was
      # successful, then this message is returned by the google.longrunning.Operations.
      # response field if the operation was successful.
      class GoogleCloudRetailV2betaExportUserEventsResponse
        include Google::Apis::Core::Hashable
      
        # A sample of errors encountered while processing the request.
        # Corresponds to the JSON property `errorSamples`
        # @return [Array<Google::Apis::RetailV2beta::GoogleRpcStatus>]
        attr_accessor :error_samples
      
        # Configuration of destination for Export related errors.
        # Corresponds to the JSON property `errorsConfig`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaExportErrorsConfig]
        attr_accessor :errors_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_samples = args[:error_samples] if args.key?(:error_samples)
          @errors_config = args[:errors_config] if args.key?(:errors_config)
        end
      end
      
      # Google Cloud Storage location for input content. format.
      class GoogleCloudRetailV2betaGcsSource
        include Google::Apis::Core::Hashable
      
        # The schema to use when parsing the data from the source. Supported values for
        # product imports: * `product` (default): One JSON Product per line. Each
        # product must have a valid Product.id. * `product_merchant_center`: See [
        # Importing catalog data from Merchant Center](https://cloud.google.com/retail/
        # recommendations-ai/docs/upload-catalog#mc). Supported values for user events
        # imports: * `user_event` (default): One JSON UserEvent per line. * `
        # user_event_ga360`: Using https://support.google.com/analytics/answer/3437719?
        # hl=en.
        # Corresponds to the JSON property `dataSchema`
        # @return [String]
        attr_accessor :data_schema
      
        # Required. Google Cloud Storage URIs to input files. URI can be up to 2000
        # characters long. URIs can match the full object path (for example, `gs://
        # bucket/directory/object.json`) or a pattern matching one or more files, such
        # as `gs://bucket/directory/*.json`. A request can contain at most 100 files,
        # and each file can be up to 2 GB. See [Importing product information](https://
        # cloud.google.com/retail/recommendations-ai/docs/upload-catalog) for the
        # expected file format and setup instructions.
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
      
      # Product thumbnail/detail image.
      class GoogleCloudRetailV2betaImage
        include Google::Apis::Core::Hashable
      
        # Height of the image in number of pixels. This field must be nonnegative.
        # Otherwise, an INVALID_ARGUMENT error is returned.
        # Corresponds to the JSON property `height`
        # @return [Fixnum]
        attr_accessor :height
      
        # Required. URI of the image. This field must be a valid UTF-8 encoded URI with
        # a length limit of 5,000 characters. Otherwise, an INVALID_ARGUMENT error is
        # returned. Google Merchant Center property [image_link](https://support.google.
        # com/merchants/answer/6324350). Schema.org property [Product.image](https://
        # schema.org/image).
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        # Width of the image in number of pixels. This field must be nonnegative.
        # Otherwise, an INVALID_ARGUMENT error is returned.
        # Corresponds to the JSON property `width`
        # @return [Fixnum]
        attr_accessor :width
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @height = args[:height] if args.key?(:height)
          @uri = args[:uri] if args.key?(:uri)
          @width = args[:width] if args.key?(:width)
        end
      end
      
      # Configuration of destination for Import related errors.
      class GoogleCloudRetailV2betaImportErrorsConfig
        include Google::Apis::Core::Hashable
      
        # Google Cloud Storage path for import errors. This must be an empty, existing
        # Cloud Storage bucket. Import errors will be written to a file in this bucket,
        # one per line, as a JSON-encoded `google.rpc.Status` message.
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
      
      # Metadata related to the progress of the Import operation. This will be
      # returned by the google.longrunning.Operation.metadata field.
      class GoogleCloudRetailV2betaImportMetadata
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
      class GoogleCloudRetailV2betaImportProductsRequest
        include Google::Apis::Core::Hashable
      
        # Configuration of destination for Import related errors.
        # Corresponds to the JSON property `errorsConfig`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaImportErrorsConfig]
        attr_accessor :errors_config
      
        # The input config source for products.
        # Corresponds to the JSON property `inputConfig`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProductInputConfig]
        attr_accessor :input_config
      
        # Indicates which fields in the provided imported 'products' to update. If not
        # set, will by default update all fields.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @errors_config = args[:errors_config] if args.key?(:errors_config)
          @input_config = args[:input_config] if args.key?(:input_config)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Response of the ImportProductsRequest. If the long running operation is done,
      # then this message is returned by the google.longrunning.Operations.response
      # field if the operation was successful.
      class GoogleCloudRetailV2betaImportProductsResponse
        include Google::Apis::Core::Hashable
      
        # A sample of errors encountered while processing the request.
        # Corresponds to the JSON property `errorSamples`
        # @return [Array<Google::Apis::RetailV2beta::GoogleRpcStatus>]
        attr_accessor :error_samples
      
        # Configuration of destination for Import related errors.
        # Corresponds to the JSON property `errorsConfig`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaImportErrorsConfig]
        attr_accessor :errors_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_samples = args[:error_samples] if args.key?(:error_samples)
          @errors_config = args[:errors_config] if args.key?(:errors_config)
        end
      end
      
      # Request message for the ImportUserEvents request.
      class GoogleCloudRetailV2betaImportUserEventsRequest
        include Google::Apis::Core::Hashable
      
        # Configuration of destination for Import related errors.
        # Corresponds to the JSON property `errorsConfig`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaImportErrorsConfig]
        attr_accessor :errors_config
      
        # The input config source for user events.
        # Corresponds to the JSON property `inputConfig`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaUserEventInputConfig]
        attr_accessor :input_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @errors_config = args[:errors_config] if args.key?(:errors_config)
          @input_config = args[:input_config] if args.key?(:input_config)
        end
      end
      
      # Response of the ImportUserEventsRequest. If the long running operation was
      # successful, then this message is returned by the google.longrunning.Operations.
      # response field if the operation was successful.
      class GoogleCloudRetailV2betaImportUserEventsResponse
        include Google::Apis::Core::Hashable
      
        # A sample of errors encountered while processing the request.
        # Corresponds to the JSON property `errorSamples`
        # @return [Array<Google::Apis::RetailV2beta::GoogleRpcStatus>]
        attr_accessor :error_samples
      
        # Configuration of destination for Import related errors.
        # Corresponds to the JSON property `errorsConfig`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaImportErrorsConfig]
        attr_accessor :errors_config
      
        # A summary of import result. The UserEventImportSummary summarizes the import
        # status for user events.
        # Corresponds to the JSON property `importSummary`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaUserEventImportSummary]
        attr_accessor :import_summary
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_samples = args[:error_samples] if args.key?(:error_samples)
          @errors_config = args[:errors_config] if args.key?(:errors_config)
          @import_summary = args[:import_summary] if args.key?(:import_summary)
        end
      end
      
      # Response for CatalogService.ListCatalogs method.
      class GoogleCloudRetailV2betaListCatalogsResponse
        include Google::Apis::Core::Hashable
      
        # All the customer's Catalogs.
        # Corresponds to the JSON property `catalogs`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCatalog>]
        attr_accessor :catalogs
      
        # A token that can be sent as ListCatalogsRequest.page_token to retrieve the
        # next page. If this field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @catalogs = args[:catalogs] if args.key?(:catalogs)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Request message for Predict method.
      class GoogleCloudRetailV2betaPredictRequest
        include Google::Apis::Core::Hashable
      
        # Filter for restricting prediction results with a length limit of 5,000
        # characters. Accepts values for tags and the `filterOutOfStockItems` flag. *
        # Tag expressions. Restricts predictions to products that match all of the
        # specified tags. Boolean operators `OR` and `NOT` are supported if the
        # expression is enclosed in parentheses, and must be separated from the tag
        # values by a space. `-"tagA"` is also supported and is equivalent to `NOT "tagA"
        # `. Tag values must be double quoted UTF-8 encoded strings with a size limit of
        # 1,000 characters. Note: "Recently viewed" models don't support tag filtering
        # at the moment. * filterOutOfStockItems. Restricts predictions to products that
        # do not have a stockState value of OUT_OF_STOCK. Examples: * tag=("Red" OR "
        # Blue") tag="New-Arrival" tag=(NOT "promotional") * filterOutOfStockItems tag=(-
        # "promotional") * filterOutOfStockItems If your filter blocks all prediction
        # results, nothing will be returned. If you want generic (unfiltered) popular
        # products to be returned instead, set `strictFiltering` to false in `
        # PredictRequest.params`.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # The labels applied to a resource must meet the following requirements: * Each
        # resource can have multiple labels, up to a maximum of 64. * Each label must be
        # a key-value pair. * Keys have a minimum length of 1 character and a maximum
        # length of 63 characters, and cannot be empty. Values can be empty, and have a
        # maximum length of 63 characters. * Keys and values can contain only lowercase
        # letters, numeric characters, underscores, and dashes. All characters must use
        # UTF-8 encoding, and international characters are allowed. * The key portion of
        # a label must be unique. However, you can use the same key with multiple
        # resources. * Keys must start with a lowercase letter or international
        # character. See [Google Cloud Document](https://cloud.google.com/resource-
        # manager/docs/creating-managing-labels#requirements) for more details.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Maximum number of results to return per page. Set this property to the number
        # of prediction results needed. If zero, the service will choose a reasonable
        # default. The maximum allowed value is 100. Values above 100 will be coerced to
        # 100.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # The previous PredictResponse.next_page_token.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Additional domain specific parameters for the predictions. Allowed values: * `
        # returnProduct`: Boolean. If set to true, the associated product object will be
        # returned in the `results.metadata` field in the prediction response. * `
        # returnScore`: Boolean. If set to true, the prediction 'score' corresponding to
        # each returned product will be set in the `results.metadata` field in the
        # prediction response. The given 'score' indicates the probability of an product
        # being clicked/purchased given the user's context and history. * `
        # strictFiltering`: Boolean. True by default. If set to false, the service will
        # return generic (unfiltered) popular products instead of empty if your filter
        # blocks all prediction results. * `priceRerankLevel`: String. Default empty. If
        # set to be non-empty, then it needs to be one of `'no-price-reranking', 'low-
        # price-reranking', 'medium-price-reranking', 'high-price-reranking'`. This
        # gives request-level control and adjusts prediction results based on product
        # price. * `diversityLevel`: String. Default empty. If set to be non-empty, then
        # it needs to be one of `'no-diversity', 'low-diversity', 'medium-diversity', '
        # high-diversity', 'auto-diversity'`. This gives request-level control and
        # adjusts prediction results based on product category.
        # Corresponds to the JSON property `params`
        # @return [Hash<String,Object>]
        attr_accessor :params
      
        # UserEvent captures all metadata information Retail API needs to know about how
        # end users interact with customers' website.
        # Corresponds to the JSON property `userEvent`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaUserEvent]
        attr_accessor :user_event
      
        # Use validate only mode for this prediction query. If set to true, a dummy
        # model will be used that returns arbitrary products. Note that the validate
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
          @labels = args[:labels] if args.key?(:labels)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @params = args[:params] if args.key?(:params)
          @user_event = args[:user_event] if args.key?(:user_event)
          @validate_only = args[:validate_only] if args.key?(:validate_only)
        end
      end
      
      # Response message for predict method.
      class GoogleCloudRetailV2betaPredictResponse
        include Google::Apis::Core::Hashable
      
        # A unique attribution token. This should be included in the UserEvent logs
        # resulting from this recommendation, which enables accurate attribution of
        # recommendation model performance.
        # Corresponds to the JSON property `attributionToken`
        # @return [String]
        attr_accessor :attribution_token
      
        # IDs of products in the request that were missing from the inventory.
        # Corresponds to the JSON property `missingIds`
        # @return [Array<String>]
        attr_accessor :missing_ids
      
        # A list of recommended products. The order represents the ranking (from the
        # most relevant product to the least).
        # Corresponds to the JSON property `results`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaPredictResponsePredictionResult>]
        attr_accessor :results
      
        # True if the validateOnly property was set in the request.
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
      
      # PredictionResult represents the recommendation prediction results.
      class GoogleCloudRetailV2betaPredictResponsePredictionResult
        include Google::Apis::Core::Hashable
      
        # ID of the recommended product
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Additional product metadata / annotations. Possible values: * `product`: JSON
        # representation of the product. Will be set if `returnProduct` is set to true
        # in `PredictRequest.params`. * `score`: Prediction score in double value. Will
        # be set if `returnScore` is set to true in `PredictRequest.params`.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @metadata = args[:metadata] if args.key?(:metadata)
        end
      end
      
      # The price information of a Product.
      class GoogleCloudRetailV2betaPriceInfo
        include Google::Apis::Core::Hashable
      
        # The costs associated with the sale of a particular product. Used for gross
        # profit reporting. * Profit = price - cost Google Merchant Center property [
        # cost_of_goods_sold](https://support.google.com/merchants/answer/9017895).
        # Corresponds to the JSON property `cost`
        # @return [Float]
        attr_accessor :cost
      
        # The 3-letter currency code defined in [ISO 4217](https://www.iso.org/iso-4217-
        # currency-codes.html). If this field is an unrecognizable currency code, an
        # INVALID_ARGUMENT error is returned.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Price of the product without any discount. If zero, by default set to be the
        # price.
        # Corresponds to the JSON property `originalPrice`
        # @return [Float]
        attr_accessor :original_price
      
        # Price of the product. Google Merchant Center property [price](https://support.
        # google.com/merchants/answer/6324371). Schema.org property [Offer.
        # priceSpecification](https://schema.org/priceSpecification).
        # Corresponds to the JSON property `price`
        # @return [Float]
        attr_accessor :price
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cost = args[:cost] if args.key?(:cost)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @original_price = args[:original_price] if args.key?(:original_price)
          @price = args[:price] if args.key?(:price)
        end
      end
      
      # Product captures all metadata information of items to be recommended or
      # searched.
      class GoogleCloudRetailV2betaProduct
        include Google::Apis::Core::Hashable
      
        # Highly encouraged. Extra product attributes to be included. For example, for
        # products, this could include the store name, vendor, style, color, etc. These
        # are very strong signals for recommendation model, thus we highly recommend
        # providing the attributes here. Features that can take on one of a limited
        # number of possible values. Two types of features can be set are: Textual
        # features. some examples would be the brand/maker of a product, or country of a
        # customer. Numerical features. Some examples would be the height/weight of a
        # product, or age of a customer. For example: `` "vendor": `"text": ["vendor123",
        # "vendor456"]`, "lengths_cm": `"numbers":[2.3, 15.4]`, "heights_cm": `"numbers"
        # :[8.1, 6.4]` ``. This field needs to pass all below criteria, otherwise an
        # INVALID_ARGUMENT error is returned: * Max entries count: 200 by default; 100
        # for Type.VARIANT. * The key must be a UTF-8 encoded string with a length limit
        # of 128 characters.
        # Corresponds to the JSON property `attributes`
        # @return [Hash<String,Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCustomAttribute>]
        attr_accessor :attributes
      
        # The online availability of the Product. Default to Availability.IN_STOCK.
        # Google Merchant Center Property [availability](https://support.google.com/
        # merchants/answer/6324448). Schema.org Property [Offer.availability](https://
        # schema.org/availability).
        # Corresponds to the JSON property `availability`
        # @return [String]
        attr_accessor :availability
      
        # The available quantity of the item.
        # Corresponds to the JSON property `availableQuantity`
        # @return [Fixnum]
        attr_accessor :available_quantity
      
        # The timestamp when this Product becomes available for recommendation.
        # Corresponds to the JSON property `availableTime`
        # @return [String]
        attr_accessor :available_time
      
        # Product categories. This field is repeated for supporting one product
        # belonging to several parallel categories. Strongly recommended using the full
        # path for better search / recommendation quality. To represent full path of
        # category, use '>' sign to separate different hierarchies. If '>' is part of
        # the category name, please replace it with other character(s). For example, if
        # a shoes product belongs to both ["Shoes & Accessories" -> "Shoes"] and ["
        # Sports & Fitness" -> "Athletic Clothing" -> "Shoes"], it could be represented
        # as: "categories": [ "Shoes & Accessories > Shoes", "Sports & Fitness >
        # Athletic Clothing > Shoes" ] Must be set for Type.PRIMARY Product otherwise an
        # INVALID_ARGUMENT error is returned. At most 250 values are allowed per Product.
        # Empty values are not allowed. Each value must be a UTF-8 encoded string with
        # a length limit of 5,000 characters. Otherwise, an INVALID_ARGUMENT error is
        # returned. Google Merchant Center property google_product_category. Schema.org
        # property [Product.category] (https://schema.org/category). [
        # mc_google_product_category]: https://support.google.com/merchants/answer/
        # 6324436
        # Corresponds to the JSON property `categories`
        # @return [Array<String>]
        attr_accessor :categories
      
        # Product description. This field must be a UTF-8 encoded string with a length
        # limit of 5,000 characters. Otherwise, an INVALID_ARGUMENT error is returned.
        # Google Merchant Center property [description](https://support.google.com/
        # merchants/answer/6324468). schema.org property [Product.description](https://
        # schema.org/description).
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Immutable. Product identifier, which is the final component of name. For
        # example, this field is "id_1", if name is `projects/*/locations/global/
        # catalogs/default_catalog/branches/default_branch/products/id_1`. This field
        # must be a UTF-8 encoded string with a length limit of 128 characters.
        # Otherwise, an INVALID_ARGUMENT error is returned. Google Merchant Center
        # property [id](https://support.google.com/merchants/answer/6324405). Schema.org
        # Property [Product.sku](https://schema.org/sku).
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Product images for the product.Highly recommended to put the main image to the
        # first. A maximum of 300 images are allowed. Google Merchant Center property [
        # image_link](https://support.google.com/merchants/answer/6324350). Schema.org
        # property [Product.image](https://schema.org/image).
        # Corresponds to the JSON property `images`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaImage>]
        attr_accessor :images
      
        # Immutable. Full resource name of the product, such as `projects/*/locations/
        # global/catalogs/default_catalog/branches/default_branch/products/product_id`.
        # The branch ID must be "default_branch".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The price information of a Product.
        # Corresponds to the JSON property `priceInfo`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaPriceInfo]
        attr_accessor :price_info
      
        # Variant group identifier. Must be an id, with the same parent branch with this
        # product. Otherwise, an error is thrown. For Type.PRIMARY Products, this field
        # can only be empty or set to the same value as id. For VARIANT Products, this
        # field cannot be empty. A maximum of 2,000 products are allowed to share the
        # same Type.PRIMARY Product. Otherwise, an INVALID_ARGUMENT error is returned.
        # Google Merchant Center Property [item_group_id](https://support.google.com/
        # merchants/answer/6324507). Schema.org Property [Product.inProductGroupWithID](
        # https://schema.org/inProductGroupWithID). This field must be enabled before it
        # can be used. [Learn more](/recommendations-ai/docs/catalog#item-group-id).
        # Corresponds to the JSON property `primaryProductId`
        # @return [String]
        attr_accessor :primary_product_id
      
        # Custom tags associated with the product. At most 250 values are allowed per
        # Product. This value must be a UTF-8 encoded string with a length limit of 1,
        # 000 characters. Otherwise, an INVALID_ARGUMENT error is returned. This tag can
        # be used for filtering recommendation results by passing the tag as part of the
        # PredictRequest.filter. Google Merchant Center property [custom_label_0–4](
        # https://support.google.com/merchants/answer/6324473).
        # Corresponds to the JSON property `tags`
        # @return [Array<String>]
        attr_accessor :tags
      
        # Required. Product title. This field must be a UTF-8 encoded string with a
        # length limit of 1,000 characters. Otherwise, an INVALID_ARGUMENT error is
        # returned. Google Merchant Center property [title](https://support.google.com/
        # merchants/answer/6324415). Schema.org property [Product.name](https://schema.
        # org/name).
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Immutable. The type of the product. Default to Catalog.product_level_config.
        # ingestion_product_type if unset.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Canonical URL directly linking to the product detail page. It is strongly
        # recommended to provide a valid uri for the product, otherwise the service
        # performance could be significantly degraded. This field must be a UTF-8
        # encoded string with a length limit of 5,000 characters. Otherwise, an
        # INVALID_ARGUMENT error is returned. Google Merchant Center property [link](
        # https://support.google.com/merchants/answer/6324416). Schema.org property [
        # Offer.url](https://schema.org/url).
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @availability = args[:availability] if args.key?(:availability)
          @available_quantity = args[:available_quantity] if args.key?(:available_quantity)
          @available_time = args[:available_time] if args.key?(:available_time)
          @categories = args[:categories] if args.key?(:categories)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @images = args[:images] if args.key?(:images)
          @name = args[:name] if args.key?(:name)
          @price_info = args[:price_info] if args.key?(:price_info)
          @primary_product_id = args[:primary_product_id] if args.key?(:primary_product_id)
          @tags = args[:tags] if args.key?(:tags)
          @title = args[:title] if args.key?(:title)
          @type = args[:type] if args.key?(:type)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Detailed product information associated with a user event.
      class GoogleCloudRetailV2betaProductDetail
        include Google::Apis::Core::Hashable
      
        # Product captures all metadata information of items to be recommended or
        # searched.
        # Corresponds to the JSON property `product`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProduct]
        attr_accessor :product
      
        # Quantity of the product associated with the user event. For example, this
        # field will be 2 if two products are added to the shopping cart for `purchase-
        # complete` event. Required for `add-to-cart` and `purchase-complete` event
        # types.
        # Corresponds to the JSON property `quantity`
        # @return [Fixnum]
        attr_accessor :quantity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @product = args[:product] if args.key?(:product)
          @quantity = args[:quantity] if args.key?(:quantity)
        end
      end
      
      # The inline source for the input config for ImportProducts method.
      class GoogleCloudRetailV2betaProductInlineSource
        include Google::Apis::Core::Hashable
      
        # Required. A list of products to update/create. Each product must have a valid
        # Product.id. Recommended max of 10k items.
        # Corresponds to the JSON property `products`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProduct>]
        attr_accessor :products
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @products = args[:products] if args.key?(:products)
        end
      end
      
      # The input config source for products.
      class GoogleCloudRetailV2betaProductInputConfig
        include Google::Apis::Core::Hashable
      
        # BigQuery source import data from.
        # Corresponds to the JSON property `bigQuerySource`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaBigQuerySource]
        attr_accessor :big_query_source
      
        # Google Cloud Storage location for input content. format.
        # Corresponds to the JSON property `gcsSource`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaGcsSource]
        attr_accessor :gcs_source
      
        # The inline source for the input config for ImportProducts method.
        # Corresponds to the JSON property `productInlineSource`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProductInlineSource]
        attr_accessor :product_inline_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @big_query_source = args[:big_query_source] if args.key?(:big_query_source)
          @gcs_source = args[:gcs_source] if args.key?(:gcs_source)
          @product_inline_source = args[:product_inline_source] if args.key?(:product_inline_source)
        end
      end
      
      # Configures what level the product should be uploaded with regards to how users
      # will be send events and how predictions will be made.
      class GoogleCloudRetailV2betaProductLevelConfig
        include Google::Apis::Core::Hashable
      
        # The type of Products allowed to be ingested into the catalog. Acceptable
        # values are: * `primary` (default): You can only ingest Product.Type.PRIMARY
        # Products. This means Product.primary_product_id can only be empty or set to
        # the same value as Product.id. * `variant`: You can only ingest Product.Type.
        # VARIANT Products. This means Product.primary_product_id cannot be empty. If
        # this field is set to an invalid value other than these, an INVALID_ARGUMENT
        # error is returned. If this field is `variant` and
        # merchant_center_product_id_field is `itemGroupId`, an INVALID_ARGUMENT error
        # is returned. See [Using product levels](https://cloud.google.com/retail/
        # recommendations-ai/docs/catalog#product-levels) for more details.
        # Corresponds to the JSON property `ingestionProductType`
        # @return [String]
        attr_accessor :ingestion_product_type
      
        # Which field of [Merchant Center Product](/bigquery-transfer/docs/merchant-
        # center-products-schema) should be imported as Product.id. Acceptable values
        # are: * `offerId` (default): Import `offerId` as the product ID. * `itemGroupId`
        # : Import `itemGroupId` as the product ID. Notice that Retail API will choose
        # one item from the ones with the same `itemGroupId`, and use it to represent
        # the item group. If this field is set to an invalid value other than these, an
        # INVALID_ARGUMENT error is returned. If this field is `itemGroupId` and
        # ingestion_product_type is `variant`, an INVALID_ARGUMENT error is returned.
        # See [Using product levels](https://cloud.google.com/retail/recommendations-ai/
        # docs/catalog#product-levels) for more details.
        # Corresponds to the JSON property `merchantCenterProductIdField`
        # @return [String]
        attr_accessor :merchant_center_product_id_field
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ingestion_product_type = args[:ingestion_product_type] if args.key?(:ingestion_product_type)
          @merchant_center_product_id_field = args[:merchant_center_product_id_field] if args.key?(:merchant_center_product_id_field)
        end
      end
      
      # A transaction represents the entire purchase transaction.
      class GoogleCloudRetailV2betaPurchaseTransaction
        include Google::Apis::Core::Hashable
      
        # All the costs associated with the products. These can be manufacturing costs,
        # shipping expenses not borne by the end user, or any other costs, such that: *
        # Profit = revenue - tax - cost
        # Corresponds to the JSON property `cost`
        # @return [Float]
        attr_accessor :cost
      
        # Required. Currency code. Use three-character ISO-4217 code.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # The transaction ID with a length limit of 128 characters.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Required. Total non-zero revenue or grand total associated with the
        # transaction. This value include shipping, tax, or other adjustments to total
        # revenue that you want to include as part of your revenue calculations.
        # Corresponds to the JSON property `revenue`
        # @return [Float]
        attr_accessor :revenue
      
        # All the taxes associated with the transaction.
        # Corresponds to the JSON property `tax`
        # @return [Float]
        attr_accessor :tax
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cost = args[:cost] if args.key?(:cost)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @id = args[:id] if args.key?(:id)
          @revenue = args[:revenue] if args.key?(:revenue)
          @tax = args[:tax] if args.key?(:tax)
        end
      end
      
      # Metadata related to the progress of the Purge operation. This will be returned
      # by the google.longrunning.Operation.metadata field.
      class GoogleCloudRetailV2betaPurgeMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for PurgeUserEvents method.
      class GoogleCloudRetailV2betaPurgeUserEventsRequest
        include Google::Apis::Core::Hashable
      
        # Required. The filter string to specify the events to be deleted with a length
        # limit of 5,000 characters. Empty string filter is not allowed. The eligible
        # fields for filtering are: * `eventType`: Double quoted UserEvent.event_type
        # string. * `eventTime`: in ISO 8601 "zulu" format. * `visitorId`: Double quoted
        # string. Specifying this will delete all events associated with a visitor. * `
        # userId`: Double quoted string. Specifying this will delete all events
        # associated with a user. Examples: * Deleting all events in a time range: `
        # eventTime > "2012-04-23T18:25:43.511Z" eventTime < "2012-04-23T18:30:43.511Z"`
        # * Deleting specific eventType in time range: `eventTime > "2012-04-23T18:25:43.
        # 511Z" eventType = "detail-page-view"` * Deleting all events for a specific
        # visitor: `visitorId = "visitor1024"` The filtering fields are assumed to have
        # an implicit AND.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Actually perform the purge. If `force` is set to false, the method will return
        # the expected purge count without deleting any user events.
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
      
      # Response of the PurgeUserEventsRequest. If the long running operation is
      # successfully done, then this message is returned by the google.longrunning.
      # Operations.response field.
      class GoogleCloudRetailV2betaPurgeUserEventsResponse
        include Google::Apis::Core::Hashable
      
        # The total count of events purged as a result of the operation.
        # Corresponds to the JSON property `purgedEventsCount`
        # @return [Fixnum]
        attr_accessor :purged_events_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @purged_events_count = args[:purged_events_count] if args.key?(:purged_events_count)
        end
      end
      
      # Metadata for RejoinUserEvents method.
      class GoogleCloudRetailV2betaRejoinUserEventsMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for RejoinUserEvents method.
      class GoogleCloudRetailV2betaRejoinUserEventsRequest
        include Google::Apis::Core::Hashable
      
        # The type of the user event rejoin to define the scope and range of the user
        # events to be rejoined with the latest product catalog. Defaults to
        # USER_EVENT_REJOIN_SCOPE_UNSPECIFIED if this field is not set, or set to an
        # invalid integer value.
        # Corresponds to the JSON property `userEventRejoinScope`
        # @return [String]
        attr_accessor :user_event_rejoin_scope
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @user_event_rejoin_scope = args[:user_event_rejoin_scope] if args.key?(:user_event_rejoin_scope)
        end
      end
      
      # Response message for RejoinUserEvents method.
      class GoogleCloudRetailV2betaRejoinUserEventsResponse
        include Google::Apis::Core::Hashable
      
        # Number of user events that were joined with latest product catalog.
        # Corresponds to the JSON property `rejoinedUserEventsCount`
        # @return [Fixnum]
        attr_accessor :rejoined_user_events_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rejoined_user_events_count = args[:rejoined_user_events_count] if args.key?(:rejoined_user_events_count)
        end
      end
      
      # UserEvent captures all metadata information Retail API needs to know about how
      # end users interact with customers' website.
      class GoogleCloudRetailV2betaUserEvent
        include Google::Apis::Core::Hashable
      
        # Extra user event features to include in the recommendation model. The key must
        # be a UTF-8 encoded string with a length limit of 5,000 characters. Otherwise,
        # an INVALID_ARGUMENT error is returned. For product recommendation, an example
        # of extra user information is traffic_channel, i.e. how user arrives at the
        # site. Users can arrive at the site by coming to the site directly, or coming
        # through Google search, and etc.
        # Corresponds to the JSON property `attributes`
        # @return [Hash<String,Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCustomAttribute>]
        attr_accessor :attributes
      
        # Highly recommended for user events that are the result of PredictionService.
        # Predict. This field enables accurate attribution of recommendation model
        # performance. The value must be a valid PredictResponse.attribution_token for
        # user events that are the result of PredictionService.Predict. This token
        # enables us to accurately attribute page view or purchase back to the event and
        # the particular predict response containing this clicked/purchased product. If
        # user clicks on product K in the recommendation results, pass PredictResponse.
        # attribution_token as a URL parameter to product K's page. When recording
        # events on product K's page, log the PredictResponse.attribution_token to this
        # field.
        # Corresponds to the JSON property `attributionToken`
        # @return [String]
        attr_accessor :attribution_token
      
        # The id or name of the associated shopping cart. This id is used to associate
        # multiple items added or present in the cart before purchase. This can only be
        # set for `add-to-cart`, `purchase-complete`, or `shopping-cart-page-view`
        # events.
        # Corresponds to the JSON property `cartId`
        # @return [String]
        attr_accessor :cart_id
      
        # Only required for UserEventService.ImportUserEvents method. Timestamp of when
        # the user event happened.
        # Corresponds to the JSON property `eventTime`
        # @return [String]
        attr_accessor :event_time
      
        # Required. User event type. Allowed values are: * `add-to-cart`: Products being
        # added to cart. * `category-page-view`: Special pages such as sale or promotion
        # pages viewed. * `completion`: Completion query result showed/clicked. * `
        # detail-page-view`: Products detail page viewed. * `home-page-view`: Homepage
        # viewed. * `promotion-offered`: Promotion is offered to a user. * `promotion-
        # not-offered`: Promotion is not offered to a user. * `purchase-complete`: User
        # finishing a purchase. * `search`: Product search. * `shopping-cart-page-view`:
        # User viewing a shopping cart.
        # Corresponds to the JSON property `eventType`
        # @return [String]
        attr_accessor :event_type
      
        # A list of identifiers for the independent experiment groups this user event
        # belongs to. This is used to distinguish between user events associated with
        # different experiment setups (e.g. using Retail API, using different
        # recommendation models).
        # Corresponds to the JSON property `experimentIds`
        # @return [Array<String>]
        attr_accessor :experiment_ids
      
        # The categories associated with a category page. To represent full path of
        # category, use '>' sign to separate different hierarchies. If '>' is part of
        # the category name, please replace it with other character(s). Category pages
        # include special pages such as sales or promotions. For instance, a special
        # sale page may have the category hierarchy: "pageCategories" : ["Sales > 2017
        # Black Friday Deals"]. Required for `category-page-view` events. At least one
        # of search_query or page_categories is required for `search` events. Other
        # event types should not set this field. Otherwise, an INVALID_ARGUMENT error is
        # returned.
        # Corresponds to the JSON property `pageCategories`
        # @return [Array<String>]
        attr_accessor :page_categories
      
        # A unique id of a web page view. This should be kept the same for all user
        # events triggered from the same pageview. For example, an item detail page view
        # could trigger multiple events as the user is browsing the page. The `
        # pageViewId` property should be kept the same for all these events so that they
        # can be grouped together properly. When using the client side event reporting
        # with JavaScript pixel and Google Tag Manager, this value is filled in
        # automatically.
        # Corresponds to the JSON property `pageViewId`
        # @return [String]
        attr_accessor :page_view_id
      
        # The main product details related to the event. This field is required for the
        # following event types: * `add-to-cart` * `detail-page-view` * `purchase-
        # complete` In a `search` event, this field represents the products returned to
        # the end user on the current page (the end user may have not finished broswing
        # the whole page yet). When a new page is returned to the end user, after
        # pagination/filtering/ordering even for the same query, a new `search` event
        # with different product_details is desired. The end user may have not finished
        # broswing the whole page yet.
        # Corresponds to the JSON property `productDetails`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProductDetail>]
        attr_accessor :product_details
      
        # A transaction represents the entire purchase transaction.
        # Corresponds to the JSON property `purchaseTransaction`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaPurchaseTransaction]
        attr_accessor :purchase_transaction
      
        # The referrer URL of the current page. When using the client side event
        # reporting with JavaScript pixel and Google Tag Manager, this value is filled
        # in automatically.
        # Corresponds to the JSON property `referrerUri`
        # @return [String]
        attr_accessor :referrer_uri
      
        # The user's search query. The value must be a UTF-8 encoded string with a
        # length limit of 5,000 characters. Otherwise, an INVALID_ARGUMENT error is
        # returned. At least one of search_query or page_categories is required for `
        # search` events. Other event types should not set this field. Otherwise, an
        # INVALID_ARGUMENT error is returned.
        # Corresponds to the JSON property `searchQuery`
        # @return [String]
        attr_accessor :search_query
      
        # Complete URL (window.location.href) of the user's current page. When using the
        # client side event reporting with JavaScript pixel and Google Tag Manager, this
        # value is filled in automatically. Maximum length 5,000 characters.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        # Information of an end user.
        # Corresponds to the JSON property `userInfo`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaUserInfo]
        attr_accessor :user_info
      
        # Required. A unique identifier for tracking visitors. For example, this could
        # be implemented with an HTTP cookie, which should be able to uniquely identify
        # a visitor on a single device. This unique identifier should not change if the
        # visitor log in/out of the website. The field must be a UTF-8 encoded string
        # with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is
        # returned. The field should not contain PII or user-data. We recommend to use
        # Google Analystics [Client ID](https://developers.google.com/analytics/
        # devguides/collection/analyticsjs/field-reference#clientId) for this field.
        # Corresponds to the JSON property `visitorId`
        # @return [String]
        attr_accessor :visitor_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @attribution_token = args[:attribution_token] if args.key?(:attribution_token)
          @cart_id = args[:cart_id] if args.key?(:cart_id)
          @event_time = args[:event_time] if args.key?(:event_time)
          @event_type = args[:event_type] if args.key?(:event_type)
          @experiment_ids = args[:experiment_ids] if args.key?(:experiment_ids)
          @page_categories = args[:page_categories] if args.key?(:page_categories)
          @page_view_id = args[:page_view_id] if args.key?(:page_view_id)
          @product_details = args[:product_details] if args.key?(:product_details)
          @purchase_transaction = args[:purchase_transaction] if args.key?(:purchase_transaction)
          @referrer_uri = args[:referrer_uri] if args.key?(:referrer_uri)
          @search_query = args[:search_query] if args.key?(:search_query)
          @uri = args[:uri] if args.key?(:uri)
          @user_info = args[:user_info] if args.key?(:user_info)
          @visitor_id = args[:visitor_id] if args.key?(:visitor_id)
        end
      end
      
      # A summary of import result. The UserEventImportSummary summarizes the import
      # status for user events.
      class GoogleCloudRetailV2betaUserEventImportSummary
        include Google::Apis::Core::Hashable
      
        # Count of user events imported with complete existing catalog information.
        # Corresponds to the JSON property `joinedEventsCount`
        # @return [Fixnum]
        attr_accessor :joined_events_count
      
        # Count of user events imported, but with catalog information not found in the
        # imported catalog.
        # Corresponds to the JSON property `unjoinedEventsCount`
        # @return [Fixnum]
        attr_accessor :unjoined_events_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @joined_events_count = args[:joined_events_count] if args.key?(:joined_events_count)
          @unjoined_events_count = args[:unjoined_events_count] if args.key?(:unjoined_events_count)
        end
      end
      
      # The inline source for the input config for ImportUserEvents method.
      class GoogleCloudRetailV2betaUserEventInlineSource
        include Google::Apis::Core::Hashable
      
        # Required. A list of user events to import. Recommended max of 10k items.
        # Corresponds to the JSON property `userEvents`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaUserEvent>]
        attr_accessor :user_events
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @user_events = args[:user_events] if args.key?(:user_events)
        end
      end
      
      # The input config source for user events.
      class GoogleCloudRetailV2betaUserEventInputConfig
        include Google::Apis::Core::Hashable
      
        # BigQuery source import data from.
        # Corresponds to the JSON property `bigQuerySource`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaBigQuerySource]
        attr_accessor :big_query_source
      
        # Google Cloud Storage location for input content. format.
        # Corresponds to the JSON property `gcsSource`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaGcsSource]
        attr_accessor :gcs_source
      
        # The inline source for the input config for ImportUserEvents method.
        # Corresponds to the JSON property `userEventInlineSource`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaUserEventInlineSource]
        attr_accessor :user_event_inline_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @big_query_source = args[:big_query_source] if args.key?(:big_query_source)
          @gcs_source = args[:gcs_source] if args.key?(:gcs_source)
          @user_event_inline_source = args[:user_event_inline_source] if args.key?(:user_event_inline_source)
        end
      end
      
      # Information of an end user.
      class GoogleCloudRetailV2betaUserInfo
        include Google::Apis::Core::Hashable
      
        # True if the request is made directly from the end user, in which case the
        # ip_address and user_agent can be populated from the HTTP request. This flag
        # should be set only if the API request is made directly from the end user such
        # as a mobile app (and not if a gateway or a server is processing and pushing
        # the user events). This should not be set when using the JavaScript tag in
        # UserEventService.CollectUserEvent.
        # Corresponds to the JSON property `directUserRequest`
        # @return [Boolean]
        attr_accessor :direct_user_request
        alias_method :direct_user_request?, :direct_user_request
      
        # The end user's IP address. Required for getting SearchRespons.
        # sponsored_results. This field is used to extract location information for
        # personalization. This field must be either an IPv4 address (e.g. "104.133.9.80"
        # ) or an IPv6 address (e.g. "2001:0db8:85a3:0000:0000:8a2e:0370:7334").
        # Otherwise, an INVALID_ARGUMENT error is returned. This should not be set when
        # using the JavaScript tag in UserEventService.CollectUserEvent or if
        # direct_user_request is set.
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # User agent as included in the HTTP header. Required for getting SearchRespons.
        # sponsored_results. The field must be a UTF-8 encoded string with a length
        # limit of 1,000 characters. Otherwise, an INVALID_ARGUMENT error is returned.
        # This should not be set when using the client side event reporting with GTM or
        # JavaScript tag in UserEventService.CollectUserEvent or if direct_user_request
        # is set.
        # Corresponds to the JSON property `userAgent`
        # @return [String]
        attr_accessor :user_agent
      
        # Highly recommended for logged-in users. Unique identifier for logged-in user,
        # such as a user name. The field must be a UTF-8 encoded string with a length
        # limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is returned.
        # Corresponds to the JSON property `userId`
        # @return [String]
        attr_accessor :user_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @direct_user_request = args[:direct_user_request] if args.key?(:direct_user_request)
          @ip_address = args[:ip_address] if args.key?(:ip_address)
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
        # @return [Array<Google::Apis::RetailV2beta::GoogleLongrunningOperation>]
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
        # @return [Google::Apis::RetailV2beta::GoogleRpcStatus]
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
      # protobuf.Empty) returns (google.protobuf.Empty); ` The JSON representation for
      # `Empty` is empty JSON object ````.
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
