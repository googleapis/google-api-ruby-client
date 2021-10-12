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
      
      # Metadata related to the progress of the AddFulfillmentPlaces operation.
      # Currently empty because there is no meaningful metadata populated from the
      # AddFulfillmentPlaces method.
      class GoogleCloudRetailV2AddFulfillmentPlacesMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response of the AddFulfillmentPlacesRequest. Currently empty because there is
      # no meaningful response populated from the AddFulfillmentPlaces method.
      class GoogleCloudRetailV2AddFulfillmentPlacesResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response of the ImportCompletionDataRequest. If the long running operation is
      # done, this message is returned by the google.longrunning.Operations.response
      # field if the operation is successful.
      class GoogleCloudRetailV2ImportCompletionDataResponse
        include Google::Apis::Core::Hashable
      
        # A sample of errors encountered while processing the request.
        # Corresponds to the JSON property `errorSamples`
        # @return [Array<Google::Apis::RetailV2beta::GoogleRpcStatus>]
        attr_accessor :error_samples
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_samples = args[:error_samples] if args.key?(:error_samples)
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
      
        # Pub/Sub topic for receiving notification. If this field is set, when the
        # import is finished, a notification will be sent to specified Pub/Sub topic.
        # The message data will be JSON string of a Operation. Format of the Pub/Sub
        # topic is `projects/`project`/topics/`topic``.
        # Corresponds to the JSON property `notificationPubsubTopic`
        # @return [String]
        attr_accessor :notification_pubsub_topic
      
        # Id of the request / operation. This is parroting back the requestId that was
        # passed in the request.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
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
          @notification_pubsub_topic = args[:notification_pubsub_topic] if args.key?(:notification_pubsub_topic)
          @request_id = args[:request_id] if args.key?(:request_id)
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
      
      # Metadata related to the progress of the RemoveFulfillmentPlaces operation.
      # Currently empty because there is no meaningful metadata populated from the
      # RemoveFulfillmentPlaces method.
      class GoogleCloudRetailV2RemoveFulfillmentPlacesMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response of the RemoveFulfillmentPlacesRequest. Currently empty because there
      # is no meaningful response populated from the RemoveFulfillmentPlaces method.
      class GoogleCloudRetailV2RemoveFulfillmentPlacesResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Metadata related to the progress of the SetInventory operation. Currently
      # empty because there is no meaningful metadata populated from the SetInventory
      # method.
      class GoogleCloudRetailV2SetInventoryMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response of the SetInventoryRequest. Currently empty because there is no
      # meaningful response populated from the SetInventory method.
      class GoogleCloudRetailV2SetInventoryResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
      
      # Metadata related to the progress of the AddFulfillmentPlaces operation.
      # Currently empty because there is no meaningful metadata populated from the
      # AddFulfillmentPlaces method.
      class GoogleCloudRetailV2alphaAddFulfillmentPlacesMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response of the AddFulfillmentPlacesRequest. Currently empty because there is
      # no meaningful response populated from the AddFulfillmentPlaces method.
      class GoogleCloudRetailV2alphaAddFulfillmentPlacesResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
      
      # Response of the ImportCompletionDataRequest. If the long running operation is
      # done, this message is returned by the google.longrunning.Operations.response
      # field if the operation is successful.
      class GoogleCloudRetailV2alphaImportCompletionDataResponse
        include Google::Apis::Core::Hashable
      
        # A sample of errors encountered while processing the request.
        # Corresponds to the JSON property `errorSamples`
        # @return [Array<Google::Apis::RetailV2beta::GoogleRpcStatus>]
        attr_accessor :error_samples
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_samples = args[:error_samples] if args.key?(:error_samples)
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
      
        # Pub/Sub topic for receiving notification. If this field is set, when the
        # import is finished, a notification will be sent to specified Pub/Sub topic.
        # The message data will be JSON string of a Operation. Format of the Pub/Sub
        # topic is `projects/`project`/topics/`topic``.
        # Corresponds to the JSON property `notificationPubsubTopic`
        # @return [String]
        attr_accessor :notification_pubsub_topic
      
        # Id of the request / operation. This is parroting back the requestId that was
        # passed in the request.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
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
          @notification_pubsub_topic = args[:notification_pubsub_topic] if args.key?(:notification_pubsub_topic)
          @request_id = args[:request_id] if args.key?(:request_id)
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
      
      # Metadata related to the progress of the RemoveFulfillmentPlaces operation.
      # Currently empty because there is no meaningful metadata populated from the
      # RemoveFulfillmentPlaces method.
      class GoogleCloudRetailV2alphaRemoveFulfillmentPlacesMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response of the RemoveFulfillmentPlacesRequest. Currently empty because there
      # is no meaningful response populated from the RemoveFulfillmentPlaces method.
      class GoogleCloudRetailV2alphaRemoveFulfillmentPlacesResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Metadata related to the progress of the SetInventory operation. Currently
      # empty because there is no meaningful metadata populated from the SetInventory
      # method.
      class GoogleCloudRetailV2alphaSetInventoryMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response of the SetInventoryRequest. Currently empty because there is no
      # meaningful response populated from the SetInventory method.
      class GoogleCloudRetailV2alphaSetInventoryResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
      
      # Metadata related to the progress of the AddFulfillmentPlaces operation.
      # Currently empty because there is no meaningful metadata populated from the
      # AddFulfillmentPlaces method.
      class GoogleCloudRetailV2betaAddFulfillmentPlacesMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for AddFulfillmentPlaces method.
      class GoogleCloudRetailV2betaAddFulfillmentPlacesRequest
        include Google::Apis::Core::Hashable
      
        # The time when the fulfillment updates are issued, used to prevent out-of-order
        # updates on fulfillment information. If not provided, the internal system time
        # will be used.
        # Corresponds to the JSON property `addTime`
        # @return [String]
        attr_accessor :add_time
      
        # If set to true, and the Product is not found, the fulfillment information will
        # still be processed and retained for at most 1 day and processed once the
        # Product is created. If set to false, a NOT_FOUND error is returned if the
        # Product is not found.
        # Corresponds to the JSON property `allowMissing`
        # @return [Boolean]
        attr_accessor :allow_missing
        alias_method :allow_missing?, :allow_missing
      
        # Required. The IDs for this type, such as the store IDs for "pickup-in-store"
        # or the region IDs for "same-day-delivery" to be added for this type. Duplicate
        # IDs will be automatically ignored. At least 1 value is required, and a maximum
        # of 2000 values are allowed. Each value must be a string with a length limit of
        # 10 characters, matching the pattern [a-zA-Z0-9_-]+, such as "store1" or "
        # REGION-2". Otherwise, an INVALID_ARGUMENT error is returned. If the total
        # number of place IDs exceeds 2000 for this type after adding, then the update
        # will be rejected.
        # Corresponds to the JSON property `placeIds`
        # @return [Array<String>]
        attr_accessor :place_ids
      
        # Required. The fulfillment type, including commonly used types (such as pickup
        # in store and same day delivery), and custom types. Supported values: * "pickup-
        # in-store" * "ship-to-store" * "same-day-delivery" * "next-day-delivery" * "
        # custom-type-1" * "custom-type-2" * "custom-type-3" * "custom-type-4" * "custom-
        # type-5" If this field is set to an invalid value other than these, an
        # INVALID_ARGUMENT error is returned. This field directly corresponds to Product.
        # fulfillment_info.type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @add_time = args[:add_time] if args.key?(:add_time)
          @allow_missing = args[:allow_missing] if args.key?(:allow_missing)
          @place_ids = args[:place_ids] if args.key?(:place_ids)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Response of the AddFulfillmentPlacesRequest. Currently empty because there is
      # no meaningful response populated from the AddFulfillmentPlaces method.
      class GoogleCloudRetailV2betaAddFulfillmentPlacesResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # An intended audience of the Product for whom it's sold.
      class GoogleCloudRetailV2betaAudience
        include Google::Apis::Core::Hashable
      
        # The age groups of the audience. Strongly encouraged to use the standard values:
        # "newborn" (up to 3 months old), "infant" (3–12 months old), "toddler" (1–5
        # years old), "kids" (5–13 years old), "adult" (typically teens or older). At
        # most 5 values are allowed. Each value must be a UTF-8 encoded string with a
        # length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is
        # returned. Google Merchant Center property [age_group](https://support.google.
        # com/merchants/answer/6324463). Schema.org property [Product.audience.
        # suggestedMinAge](https://schema.org/suggestedMinAge) and [Product.audience.
        # suggestedMaxAge](https://schema.org/suggestedMaxAge).
        # Corresponds to the JSON property `ageGroups`
        # @return [Array<String>]
        attr_accessor :age_groups
      
        # The genders of the audience. Strongly encouraged to use the standard values: "
        # male", "female", "unisex". At most 5 values are allowed. Each value must be a
        # UTF-8 encoded string with a length limit of 128 characters. Otherwise, an
        # INVALID_ARGUMENT error is returned. Google Merchant Center property [gender](
        # https://support.google.com/merchants/answer/6324479). Schema.org property [
        # Product.audience.suggestedGender](https://schema.org/suggestedGender).
        # Corresponds to the JSON property `genders`
        # @return [Array<String>]
        attr_accessor :genders
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @age_groups = args[:age_groups] if args.key?(:age_groups)
          @genders = args[:genders] if args.key?(:genders)
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
        # user_event_ga360`: Using https://support.google.com/analytics/answer/3437719.
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
        # following: * A full date, with non-zero year, month, and day values * A month
        # and day value, with a zero year, such as an anniversary * A year on its own,
        # with zero month and day values * A year and month value, with a zero day, such
        # as a credit card expiration date Related types are google.type.TimeOfDay and `
        # google.protobuf.Timestamp`.
        # Corresponds to the JSON property `partitionDate`
        # @return [Google::Apis::RetailV2beta::GoogleTypeDate]
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
      
      # The color information of a Product.
      class GoogleCloudRetailV2betaColorInfo
        include Google::Apis::Core::Hashable
      
        # The standard color families. Strongly recommended to use the following
        # standard color groups: "Red", "Pink", "Orange", "Yellow", "Purple", "Green", "
        # Cyan", "Blue", "Brown", "White", "Gray", "Black" and "Mixed". Normally it is
        # expected to have only 1 color family. May consider using single "Mixed"
        # instead of multiple values. A maximum of 5 values are allowed. Each value must
        # be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an
        # INVALID_ARGUMENT error is returned. Google Merchant Center property [color](
        # https://support.google.com/merchants/answer/6324487). Schema.org property [
        # Product.color](https://schema.org/color).
        # Corresponds to the JSON property `colorFamilies`
        # @return [Array<String>]
        attr_accessor :color_families
      
        # The color display names, which may be different from standard color family
        # names, such as the color aliases used in the website frontend. Normally it is
        # expected to have only 1 color. May consider using single "Mixed" instead of
        # multiple values. A maximum of 25 colors are allowed. Each value must be a UTF-
        # 8 encoded string with a length limit of 128 characters. Otherwise, an
        # INVALID_ARGUMENT error is returned. Google Merchant Center property [color](
        # https://support.google.com/merchants/answer/6324487). Schema.org property [
        # Product.color](https://schema.org/color).
        # Corresponds to the JSON property `colors`
        # @return [Array<String>]
        attr_accessor :colors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @color_families = args[:color_families] if args.key?(:color_families)
          @colors = args[:colors] if args.key?(:colors)
        end
      end
      
      # Response of the auto-complete query.
      class GoogleCloudRetailV2betaCompleteQueryResponse
        include Google::Apis::Core::Hashable
      
        # A unique complete token. This should be included in the SearchRequest
        # resulting from this completion, which enables accurate attribution of complete
        # model performance.
        # Corresponds to the JSON property `attributionToken`
        # @return [String]
        attr_accessor :attribution_token
      
        # Results of the matching suggestions. The result list is ordered and the first
        # result is top suggestion.
        # Corresponds to the JSON property `completionResults`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCompleteQueryResponseCompletionResult>]
        attr_accessor :completion_results
      
        # Matched recent searches of this user. The maximum number of recent searches is
        # 10. This field is a restricted feature. Contact Retail Search support team if
        # you are interested in enabling it. This feature is only available when
        # CompleteQueryRequest.visitor_id field is set and UserEvent is imported. The
        # recent searches satisfy the follow rules: * They are ordered from latest to
        # oldest. * They are matched with CompleteQueryRequest.query case insensitively.
        # * They are transformed to lower cases. * They are UTF-8 safe. Recent searches
        # are deduplicated. More recent searches will be reserved when duplication
        # happens.
        # Corresponds to the JSON property `recentSearchResults`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCompleteQueryResponseRecentSearchResult>]
        attr_accessor :recent_search_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribution_token = args[:attribution_token] if args.key?(:attribution_token)
          @completion_results = args[:completion_results] if args.key?(:completion_results)
          @recent_search_results = args[:recent_search_results] if args.key?(:recent_search_results)
        end
      end
      
      # Resource that represents completion results.
      class GoogleCloudRetailV2betaCompleteQueryResponseCompletionResult
        include Google::Apis::Core::Hashable
      
        # Additional custom attributes ingested through BigQuery.
        # Corresponds to the JSON property `attributes`
        # @return [Hash<String,Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCustomAttribute>]
        attr_accessor :attributes
      
        # The suggestion for the query.
        # Corresponds to the JSON property `suggestion`
        # @return [String]
        attr_accessor :suggestion
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @suggestion = args[:suggestion] if args.key?(:suggestion)
        end
      end
      
      # Recent search of this user.
      class GoogleCloudRetailV2betaCompleteQueryResponseRecentSearchResult
        include Google::Apis::Core::Hashable
      
        # The recent search query.
        # Corresponds to the JSON property `recentSearch`
        # @return [String]
        attr_accessor :recent_search
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @recent_search = args[:recent_search] if args.key?(:recent_search)
        end
      end
      
      # The input config source for completion data.
      class GoogleCloudRetailV2betaCompletionDataInputConfig
        include Google::Apis::Core::Hashable
      
        # BigQuery source import data from.
        # Corresponds to the JSON property `bigQuerySource`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaBigQuerySource]
        attr_accessor :big_query_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @big_query_source = args[:big_query_source] if args.key?(:big_query_source)
        end
      end
      
      # Detailed completion information including completion attribution token and
      # clicked completion info.
      class GoogleCloudRetailV2betaCompletionDetail
        include Google::Apis::Core::Hashable
      
        # Completion attribution token in CompleteQueryResponse.attribution_token.
        # Corresponds to the JSON property `completionAttributionToken`
        # @return [String]
        attr_accessor :completion_attribution_token
      
        # End user selected CompleteQueryResponse.CompletionResult.suggestion position,
        # starting from 0.
        # Corresponds to the JSON property `selectedPosition`
        # @return [Fixnum]
        attr_accessor :selected_position
      
        # End user selected CompleteQueryResponse.CompletionResult.suggestion.
        # Corresponds to the JSON property `selectedSuggestion`
        # @return [String]
        attr_accessor :selected_suggestion
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @completion_attribution_token = args[:completion_attribution_token] if args.key?(:completion_attribution_token)
          @selected_position = args[:selected_position] if args.key?(:selected_position)
          @selected_suggestion = args[:selected_suggestion] if args.key?(:selected_suggestion)
        end
      end
      
      # A custom attribute that is not explicitly modeled in Product.
      class GoogleCloudRetailV2betaCustomAttribute
        include Google::Apis::Core::Hashable
      
        # If true, custom attribute values are indexed, so that it can be filtered,
        # faceted or boosted in SearchService.Search. This field is ignored in a
        # UserEvent. See SearchRequest.filter, SearchRequest.facet_specs and
        # SearchRequest.boost_spec for more details.
        # Corresponds to the JSON property `indexable`
        # @return [Boolean]
        attr_accessor :indexable
        alias_method :indexable?, :indexable
      
        # The numerical values of this custom attribute. For example, `[2.3, 15.4]` when
        # the key is "lengths_cm". At most 400 values are allowed.Otherwise, an
        # INVALID_ARGUMENT error is returned. Exactly one of text or numbers should be
        # set. Otherwise, an INVALID_ARGUMENT error is returned.
        # Corresponds to the JSON property `numbers`
        # @return [Array<Float>]
        attr_accessor :numbers
      
        # If true, custom attribute values are searchable by text queries in
        # SearchService.Search. This field is ignored in a UserEvent. Only set if type
        # text is set. Otherwise, a INVALID_ARGUMENT error is returned.
        # Corresponds to the JSON property `searchable`
        # @return [Boolean]
        attr_accessor :searchable
        alias_method :searchable?, :searchable
      
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
          @indexable = args[:indexable] if args.key?(:indexable)
          @numbers = args[:numbers] if args.key?(:numbers)
          @searchable = args[:searchable] if args.key?(:searchable)
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
      
      # Fulfillment information, such as the store IDs for in-store pickup or region
      # IDs for different shipping methods.
      class GoogleCloudRetailV2betaFulfillmentInfo
        include Google::Apis::Core::Hashable
      
        # The IDs for this type, such as the store IDs for FulfillmentInfo.type.pickup-
        # in-store or the region IDs for FulfillmentInfo.type.same-day-delivery. A
        # maximum of 3000 values are allowed. Each value must be a string with a length
        # limit of 30 characters, matching the pattern [a-zA-Z0-9_-]+, such as "store1"
        # or "REGION-2". Otherwise, an INVALID_ARGUMENT error is returned.
        # Corresponds to the JSON property `placeIds`
        # @return [Array<String>]
        attr_accessor :place_ids
      
        # The fulfillment type, including commonly used types (such as pickup in store
        # and same day delivery), and custom types. Customers have to map custom types
        # to their display names before rendering UI. Supported values: * "pickup-in-
        # store" * "ship-to-store" * "same-day-delivery" * "next-day-delivery" * "custom-
        # type-1" * "custom-type-2" * "custom-type-3" * "custom-type-4" * "custom-type-5"
        # If this field is set to an invalid value other than these, an
        # INVALID_ARGUMENT error is returned.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @place_ids = args[:place_ids] if args.key?(:place_ids)
          @type = args[:type] if args.key?(:type)
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
        # user_event_ga360`: Using https://support.google.com/analytics/answer/3437719.
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
      
      # Response message of CatalogService.GetDefaultBranch.
      class GoogleCloudRetailV2betaGetDefaultBranchResponse
        include Google::Apis::Core::Hashable
      
        # Full resource name of the branch id currently set as default branch.
        # Corresponds to the JSON property `branch`
        # @return [String]
        attr_accessor :branch
      
        # This corresponds to SetDefaultBranchRequest.note field, when this branch was
        # set as default.
        # Corresponds to the JSON property `note`
        # @return [String]
        attr_accessor :note
      
        # The time when this branch is set to default.
        # Corresponds to the JSON property `setTime`
        # @return [String]
        attr_accessor :set_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @branch = args[:branch] if args.key?(:branch)
          @note = args[:note] if args.key?(:note)
          @set_time = args[:set_time] if args.key?(:set_time)
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
      
      # Request message for ImportCompletionData methods.
      class GoogleCloudRetailV2betaImportCompletionDataRequest
        include Google::Apis::Core::Hashable
      
        # The input config source for completion data.
        # Corresponds to the JSON property `inputConfig`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCompletionDataInputConfig]
        attr_accessor :input_config
      
        # Pub/Sub topic for receiving notification. If this field is set, when the
        # import is finished, a notification will be sent to specified Pub/Sub topic.
        # The message data will be JSON string of a Operation. Format of the Pub/Sub
        # topic is `projects/`project`/topics/`topic``.
        # Corresponds to the JSON property `notificationPubsubTopic`
        # @return [String]
        attr_accessor :notification_pubsub_topic
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @input_config = args[:input_config] if args.key?(:input_config)
          @notification_pubsub_topic = args[:notification_pubsub_topic] if args.key?(:notification_pubsub_topic)
        end
      end
      
      # Response of the ImportCompletionDataRequest. If the long running operation is
      # done, this message is returned by the google.longrunning.Operations.response
      # field if the operation is successful.
      class GoogleCloudRetailV2betaImportCompletionDataResponse
        include Google::Apis::Core::Hashable
      
        # A sample of errors encountered while processing the request.
        # Corresponds to the JSON property `errorSamples`
        # @return [Array<Google::Apis::RetailV2beta::GoogleRpcStatus>]
        attr_accessor :error_samples
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_samples = args[:error_samples] if args.key?(:error_samples)
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
      
        # Pub/Sub topic for receiving notification. If this field is set, when the
        # import is finished, a notification will be sent to specified Pub/Sub topic.
        # The message data will be JSON string of a Operation. Format of the Pub/Sub
        # topic is `projects/`project`/topics/`topic``.
        # Corresponds to the JSON property `notificationPubsubTopic`
        # @return [String]
        attr_accessor :notification_pubsub_topic
      
        # Id of the request / operation. This is parroting back the requestId that was
        # passed in the request.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
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
          @notification_pubsub_topic = args[:notification_pubsub_topic] if args.key?(:notification_pubsub_topic)
          @request_id = args[:request_id] if args.key?(:request_id)
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
      
        # Pub/Sub topic for receiving notification. If this field is set, when the
        # import is finished, a notification will be sent to specified Pub/Sub topic.
        # The message data will be JSON string of a Operation. Format of the Pub/Sub
        # topic is `projects/`project`/topics/`topic``. Only supported when
        # ImportProductsRequest.reconciliation_mode is set to `FULL`.
        # Corresponds to the JSON property `notificationPubsubTopic`
        # @return [String]
        attr_accessor :notification_pubsub_topic
      
        # The mode of reconciliation between existing products and the products to be
        # imported. Defaults to ReconciliationMode.INCREMENTAL.
        # Corresponds to the JSON property `reconciliationMode`
        # @return [String]
        attr_accessor :reconciliation_mode
      
        # Unique identifier provided by client, within the ancestor dataset scope.
        # Ensures idempotency and used for request deduplication. Server-generated if
        # unspecified. Up to 128 characters long and must match the pattern: "[a-zA-Z0-
        # 9_]+". This is returned as Operation.name in ImportMetadata. Only supported
        # when ImportProductsRequest.reconciliation_mode is set to `FULL`.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
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
          @notification_pubsub_topic = args[:notification_pubsub_topic] if args.key?(:notification_pubsub_topic)
          @reconciliation_mode = args[:reconciliation_mode] if args.key?(:reconciliation_mode)
          @request_id = args[:request_id] if args.key?(:request_id)
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
      
      # A floating point interval.
      class GoogleCloudRetailV2betaInterval
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
      
      # Response message for ProductService.ListProducts method.
      class GoogleCloudRetailV2betaListProductsResponse
        include Google::Apis::Core::Hashable
      
        # A token that can be sent as ListProductsRequest.page_token to retrieve the
        # next page. If this field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The Products.
        # Corresponds to the JSON property `products`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProduct>]
        attr_accessor :products
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @products = args[:products] if args.key?(:products)
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
        # INVALID_ARGUMENT error is returned. The Product.Type.VARIANT Products with the
        # same Product.primary_product_id must share the same currency_code. Otherwise,
        # a FAILED_PRECONDITION error is returned.
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
      
        # The timestamp when the price starts to be effective. This can be set as a
        # future timestamp, and the price is only used for search after
        # price_effective_time. If so, the original_price must be set and original_price
        # is used before price_effective_time. Do not set if price is always effective
        # because it will cause additional latency during search.
        # Corresponds to the JSON property `priceEffectiveTime`
        # @return [String]
        attr_accessor :price_effective_time
      
        # The timestamp when the price stops to be effective. The price is used for
        # search before price_expire_time. If this field is set, the original_price must
        # be set and original_price is used after price_expire_time. Do not set if price
        # is always effective because it will cause additional latency during search.
        # Corresponds to the JSON property `priceExpireTime`
        # @return [String]
        attr_accessor :price_expire_time
      
        # The price range of all variant Product having the same Product.
        # primary_product_id.
        # Corresponds to the JSON property `priceRange`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaPriceInfoPriceRange]
        attr_accessor :price_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cost = args[:cost] if args.key?(:cost)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @original_price = args[:original_price] if args.key?(:original_price)
          @price = args[:price] if args.key?(:price)
          @price_effective_time = args[:price_effective_time] if args.key?(:price_effective_time)
          @price_expire_time = args[:price_expire_time] if args.key?(:price_expire_time)
          @price_range = args[:price_range] if args.key?(:price_range)
        end
      end
      
      # The price range of all variant Product having the same Product.
      # primary_product_id.
      class GoogleCloudRetailV2betaPriceInfoPriceRange
        include Google::Apis::Core::Hashable
      
        # A floating point interval.
        # Corresponds to the JSON property `originalPrice`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaInterval]
        attr_accessor :original_price
      
        # A floating point interval.
        # Corresponds to the JSON property `price`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaInterval]
        attr_accessor :price
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
        # INVALID_ARGUMENT error is returned: * Max entries count: 200. * The key must
        # be a UTF-8 encoded string with a length limit of 128 characters. * For
        # indexable attribute, the key must match the pattern: a-zA-Z0-9*. For example,
        # key0LikeThis or KEY_1_LIKE_THIS.
        # Corresponds to the JSON property `attributes`
        # @return [Hash<String,Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCustomAttribute>]
        attr_accessor :attributes
      
        # An intended audience of the Product for whom it's sold.
        # Corresponds to the JSON property `audience`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaAudience]
        attr_accessor :audience
      
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
      
        # The timestamp when this Product becomes available for SearchService.Search.
        # Corresponds to the JSON property `availableTime`
        # @return [String]
        attr_accessor :available_time
      
        # The brands of the product. A maximum of 30 brands are allowed. Each brand must
        # be a UTF-8 encoded string with a length limit of 1,000 characters. Otherwise,
        # an INVALID_ARGUMENT error is returned. Google Merchant Center property [brand](
        # https://support.google.com/merchants/answer/6324351). Schema.org property [
        # Product.brand](https://schema.org/brand).
        # Corresponds to the JSON property `brands`
        # @return [Array<String>]
        attr_accessor :brands
      
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
      
        # The id of the collection members when type is Type.COLLECTION. Should not set
        # it for other types. A maximum of 1000 values are allowed. Otherwise, an
        # INVALID_ARGUMENT error is return.
        # Corresponds to the JSON property `collectionMemberIds`
        # @return [Array<String>]
        attr_accessor :collection_member_ids
      
        # The color information of a Product.
        # Corresponds to the JSON property `colorInfo`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaColorInfo]
        attr_accessor :color_info
      
        # The condition of the product. Strongly encouraged to use the standard values: "
        # new", "refurbished", "used". A maximum of 5 values are allowed per Product.
        # Each value must be a UTF-8 encoded string with a length limit of 128
        # characters. Otherwise, an INVALID_ARGUMENT error is returned. Google Merchant
        # Center property [condition](https://support.google.com/merchants/answer/
        # 6324469). Schema.org property [Offer.itemCondition](https://schema.org/
        # itemCondition).
        # Corresponds to the JSON property `conditions`
        # @return [Array<String>]
        attr_accessor :conditions
      
        # Product description. This field must be a UTF-8 encoded string with a length
        # limit of 5,000 characters. Otherwise, an INVALID_ARGUMENT error is returned.
        # Google Merchant Center property [description](https://support.google.com/
        # merchants/answer/6324468). schema.org property [Product.description](https://
        # schema.org/description).
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The timestamp when this product becomes unavailable for SearchService.Search.
        # If it is set, the Product is not available for SearchService.Search after
        # expire_time. However, the product can still be retrieved by ProductService.
        # GetProduct and ProductService.ListProducts. expire_time must be later than
        # available_time and publish_time, otherwise an INVALID_ARGUMENT error is thrown.
        # Google Merchant Center property [expiration_date](https://support.google.com/
        # merchants/answer/6324499).
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # Fulfillment information, such as the store IDs for in-store pickup or region
        # IDs for different shipping methods. All the elements must have distinct
        # FulfillmentInfo.type. Otherwise, an INVALID_ARGUMENT error is returned.
        # Corresponds to the JSON property `fulfillmentInfo`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaFulfillmentInfo>]
        attr_accessor :fulfillment_info
      
        # The Global Trade Item Number (GTIN) of the product. This field must be a UTF-8
        # encoded string with a length limit of 128 characters. Otherwise, an
        # INVALID_ARGUMENT error is returned. This field must be a Unigram. Otherwise,
        # an INVALID_ARGUMENT error is returned. Google Merchant Center property [gtin](
        # https://support.google.com/merchants/answer/6324461). Schema.org property [
        # Product.isbn](https://schema.org/isbn) or [Product.gtin8](https://schema.org/
        # gtin8) or [Product.gtin12](https://schema.org/gtin12) or [Product.gtin13](
        # https://schema.org/gtin13) or [Product.gtin14](https://schema.org/gtin14). If
        # the value is not a valid GTIN, an INVALID_ARGUMENT error is returned.
        # Corresponds to the JSON property `gtin`
        # @return [String]
        attr_accessor :gtin
      
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
      
        # Language of the title/description and other string attributes. Use language
        # tags defined by BCP 47. For product prediction, this field is ignored and the
        # model automatically detects the text language. The Product can include text in
        # different languages, but duplicating Products to provide text in multiple
        # languages can result in degraded model performance. For product search this
        # field is in use. It defaults to "en-US" if unset.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # The material of the product. For example, "leather", "wooden". A maximum of 20
        # values are allowed. Each value must be a UTF-8 encoded string with a length
        # limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is returned.
        # Google Merchant Center property [material](https://support.google.com/
        # merchants/answer/6324410). Schema.org property [Product.material](https://
        # schema.org/material).
        # Corresponds to the JSON property `materials`
        # @return [Array<String>]
        attr_accessor :materials
      
        # Immutable. Full resource name of the product, such as `projects/*/locations/
        # global/catalogs/default_catalog/branches/default_branch/products/product_id`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The pattern or graphic print of the product. For example, "striped", "polka
        # dot", "paisley". A maximum of 20 values are allowed per Product. Each value
        # must be a UTF-8 encoded string with a length limit of 128 characters.
        # Otherwise, an INVALID_ARGUMENT error is returned. Google Merchant Center
        # property [pattern](https://support.google.com/merchants/answer/6324483).
        # Schema.org property [Product.pattern](https://schema.org/pattern).
        # Corresponds to the JSON property `patterns`
        # @return [Array<String>]
        attr_accessor :patterns
      
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
      
        # The promotions applied to the product. A maximum of 10 values are allowed per
        # Product.
        # Corresponds to the JSON property `promotions`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaPromotion>]
        attr_accessor :promotions
      
        # The timestamp when the product is published by the retailer for the first time,
        # which indicates the freshness of the products. Note that this field is
        # different from available_time, given it purely describes product freshness
        # regardless of when it is available on search and recommendation.
        # Corresponds to the JSON property `publishTime`
        # @return [String]
        attr_accessor :publish_time
      
        # The rating of a Product.
        # Corresponds to the JSON property `rating`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaRating]
        attr_accessor :rating
      
        # Indicates which fields in the Products are returned in SearchResponse.
        # Supported fields for all types: * audience * availability * brands *
        # color_info * conditions * gtin * materials * name * patterns * price_info *
        # rating * sizes * title * uri Supported fields only for Type.PRIMARY and Type.
        # COLLECTION: * categories * description * images Supported fields only for Type.
        # VARIANT: * Only the first image in images To mark attributes as retrievable,
        # include paths of the form "attributes.key" where "key" is the key of a custom
        # attribute, as specified in attributes. For Type.PRIMARY and Type.COLLECTION,
        # the following fields are always returned in SearchResponse by default: * name
        # For Type.VARIANT, the following fields are always returned in by default: *
        # name * color_info Maximum number of paths is 30. Otherwise, an
        # INVALID_ARGUMENT error is returned. Note: Returning more fields in
        # SearchResponse may increase response payload size and serving latency.
        # Corresponds to the JSON property `retrievableFields`
        # @return [String]
        attr_accessor :retrievable_fields
      
        # The size of the product. To represent different size systems or size types,
        # consider using this format: [[[size_system:]size_type:]size_value]. For
        # example, in "US:MENS:M", "US" represents size system; "MENS" represents size
        # type; "M" represents size value. In "GIRLS:27", size system is empty; "GIRLS"
        # represents size type; "27" represents size value. In "32 inches", both size
        # system and size type are empty, while size value is "32 inches". A maximum of
        # 20 values are allowed per Product. Each value must be a UTF-8 encoded string
        # with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is
        # returned. Google Merchant Center property [size](https://support.google.com/
        # merchants/answer/6324492), [size_type](https://support.google.com/merchants/
        # answer/6324497) and [size_system](https://support.google.com/merchants/answer/
        # 6324502). Schema.org property [Product.size](https://schema.org/size).
        # Corresponds to the JSON property `sizes`
        # @return [Array<String>]
        attr_accessor :sizes
      
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
      
        # Input only. The TTL (time to live) of the product. If it is set, expire_time
        # is set as current timestamp plus ttl. The derived expire_time is returned in
        # the output and ttl is left blank when retrieving the Product. If it is set,
        # the product is not available for SearchService.Search after current timestamp
        # plus ttl. However, the product can still be retrieved by ProductService.
        # GetProduct and ProductService.ListProducts.
        # Corresponds to the JSON property `ttl`
        # @return [String]
        attr_accessor :ttl
      
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
      
        # Output only. Product variants grouped together on primary product which share
        # similar product attributes. It's automatically grouped by primary_product_id
        # for all the product variants. Only populated for Type.PRIMARY Products. Note:
        # This field is OUTPUT_ONLY for ProductService.GetProduct. Do not set this field
        # in API requests.
        # Corresponds to the JSON property `variants`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProduct>]
        attr_accessor :variants
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @audience = args[:audience] if args.key?(:audience)
          @availability = args[:availability] if args.key?(:availability)
          @available_quantity = args[:available_quantity] if args.key?(:available_quantity)
          @available_time = args[:available_time] if args.key?(:available_time)
          @brands = args[:brands] if args.key?(:brands)
          @categories = args[:categories] if args.key?(:categories)
          @collection_member_ids = args[:collection_member_ids] if args.key?(:collection_member_ids)
          @color_info = args[:color_info] if args.key?(:color_info)
          @conditions = args[:conditions] if args.key?(:conditions)
          @description = args[:description] if args.key?(:description)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @fulfillment_info = args[:fulfillment_info] if args.key?(:fulfillment_info)
          @gtin = args[:gtin] if args.key?(:gtin)
          @id = args[:id] if args.key?(:id)
          @images = args[:images] if args.key?(:images)
          @language_code = args[:language_code] if args.key?(:language_code)
          @materials = args[:materials] if args.key?(:materials)
          @name = args[:name] if args.key?(:name)
          @patterns = args[:patterns] if args.key?(:patterns)
          @price_info = args[:price_info] if args.key?(:price_info)
          @primary_product_id = args[:primary_product_id] if args.key?(:primary_product_id)
          @promotions = args[:promotions] if args.key?(:promotions)
          @publish_time = args[:publish_time] if args.key?(:publish_time)
          @rating = args[:rating] if args.key?(:rating)
          @retrievable_fields = args[:retrievable_fields] if args.key?(:retrievable_fields)
          @sizes = args[:sizes] if args.key?(:sizes)
          @tags = args[:tags] if args.key?(:tags)
          @title = args[:title] if args.key?(:title)
          @ttl = args[:ttl] if args.key?(:ttl)
          @type = args[:type] if args.key?(:type)
          @uri = args[:uri] if args.key?(:uri)
          @variants = args[:variants] if args.key?(:variants)
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
        # Product.id. Recommended max of 100 items.
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
      
      # Promotion information.
      class GoogleCloudRetailV2betaPromotion
        include Google::Apis::Core::Hashable
      
        # ID of the promotion. For example, "free gift". The value value must be a UTF-8
        # encoded string with a length limit of 128 characters, and match the pattern: a-
        # zA-Z*. For example, id0LikeThis or ID_1_LIKE_THIS. Otherwise, an
        # INVALID_ARGUMENT error is returned. Google Merchant Center property [promotion]
        # (https://support.google.com/merchants/answer/7050148).
        # Corresponds to the JSON property `promotionId`
        # @return [String]
        attr_accessor :promotion_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @promotion_id = args[:promotion_id] if args.key?(:promotion_id)
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
      
      # The rating of a Product.
      class GoogleCloudRetailV2betaRating
        include Google::Apis::Core::Hashable
      
        # The average rating of the Product. The rating is scaled at 1-5. Otherwise, an
        # INVALID_ARGUMENT error is returned.
        # Corresponds to the JSON property `averageRating`
        # @return [Float]
        attr_accessor :average_rating
      
        # The total number of ratings. This value is independent of the value of
        # rating_histogram. This value must be nonnegative. Otherwise, an
        # INVALID_ARGUMENT error is returned.
        # Corresponds to the JSON property `ratingCount`
        # @return [Fixnum]
        attr_accessor :rating_count
      
        # List of rating counts per rating value (index = rating - 1). The list is empty
        # if there is no rating. If the list is non-empty, its size is always 5.
        # Otherwise, an INVALID_ARGUMENT error is returned. For example, [41, 14, 13, 47,
        # 303]. It means that the Product got 41 ratings with 1 star, 14 ratings with 2
        # star, and so on.
        # Corresponds to the JSON property `ratingHistogram`
        # @return [Array<Fixnum>]
        attr_accessor :rating_histogram
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @average_rating = args[:average_rating] if args.key?(:average_rating)
          @rating_count = args[:rating_count] if args.key?(:rating_count)
          @rating_histogram = args[:rating_histogram] if args.key?(:rating_histogram)
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
      
      # Metadata related to the progress of the RemoveFulfillmentPlaces operation.
      # Currently empty because there is no meaningful metadata populated from the
      # RemoveFulfillmentPlaces method.
      class GoogleCloudRetailV2betaRemoveFulfillmentPlacesMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for RemoveFulfillmentPlaces method.
      class GoogleCloudRetailV2betaRemoveFulfillmentPlacesRequest
        include Google::Apis::Core::Hashable
      
        # If set to true, and the Product is not found, the fulfillment information will
        # still be processed and retained for at most 1 day and processed once the
        # Product is created. If set to false, a NOT_FOUND error is returned if the
        # Product is not found.
        # Corresponds to the JSON property `allowMissing`
        # @return [Boolean]
        attr_accessor :allow_missing
        alias_method :allow_missing?, :allow_missing
      
        # Required. The IDs for this type, such as the store IDs for "pickup-in-store"
        # or the region IDs for "same-day-delivery", to be removed for this type. At
        # least 1 value is required, and a maximum of 2000 values are allowed. Each
        # value must be a string with a length limit of 10 characters, matching the
        # pattern [a-zA-Z0-9_-]+, such as "store1" or "REGION-2". Otherwise, an
        # INVALID_ARGUMENT error is returned.
        # Corresponds to the JSON property `placeIds`
        # @return [Array<String>]
        attr_accessor :place_ids
      
        # The time when the fulfillment updates are issued, used to prevent out-of-order
        # updates on fulfillment information. If not provided, the internal system time
        # will be used.
        # Corresponds to the JSON property `removeTime`
        # @return [String]
        attr_accessor :remove_time
      
        # Required. The fulfillment type, including commonly used types (such as pickup
        # in store and same day delivery), and custom types. Supported values: * "pickup-
        # in-store" * "ship-to-store" * "same-day-delivery" * "next-day-delivery" * "
        # custom-type-1" * "custom-type-2" * "custom-type-3" * "custom-type-4" * "custom-
        # type-5" If this field is set to an invalid value other than these, an
        # INVALID_ARGUMENT error is returned. This field directly corresponds to Product.
        # fulfillment_info.type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_missing = args[:allow_missing] if args.key?(:allow_missing)
          @place_ids = args[:place_ids] if args.key?(:place_ids)
          @remove_time = args[:remove_time] if args.key?(:remove_time)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Response of the RemoveFulfillmentPlacesRequest. Currently empty because there
      # is no meaningful response populated from the RemoveFulfillmentPlaces method.
      class GoogleCloudRetailV2betaRemoveFulfillmentPlacesResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for SearchService.Search method.
      class GoogleCloudRetailV2betaSearchRequest
        include Google::Apis::Core::Hashable
      
        # Boost specification to boost certain items.
        # Corresponds to the JSON property `boostSpec`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchRequestBoostSpec]
        attr_accessor :boost_spec
      
        # The branch resource name, such as `projects/*/locations/global/catalogs/
        # default_catalog/branches/0`. Use "default_branch" as the branch ID or leave
        # this field empty, to search products under the default branch.
        # Corresponds to the JSON property `branch`
        # @return [String]
        attr_accessor :branch
      
        # The filter applied to every search request when quality improvement such as
        # query expansion is needed. For example, if a query does not have enough
        # results, an expanded query with SearchRequest.canonical_filter will be
        # returned as a supplement of the original query. This field is strongly
        # recommended to achieve high search quality. See SearchRequest.filter for more
        # details about filter syntax.
        # Corresponds to the JSON property `canonicalFilter`
        # @return [String]
        attr_accessor :canonical_filter
      
        # The specifications of dynamically generated facets.
        # Corresponds to the JSON property `dynamicFacetSpec`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchRequestDynamicFacetSpec]
        attr_accessor :dynamic_facet_spec
      
        # Facet specifications for faceted search. If empty, no facets are returned. A
        # maximum of 100 values are allowed. Otherwise, an INVALID_ARGUMENT error is
        # returned.
        # Corresponds to the JSON property `facetSpecs`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchRequestFacetSpec>]
        attr_accessor :facet_specs
      
        # The filter syntax consists of an expression language for constructing a
        # predicate from one or more fields of the products being filtered. Filter
        # expression is case-sensitive. See more details at this [user guide](https://
        # cloud.google.com/retail/docs/filter-and-order#filter). If this field is
        # unrecognizable, an INVALID_ARGUMENT is returned.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # A 0-indexed integer that specifies the current offset (that is, starting
        # result location, amongst the Products deemed by the API as relevant) in search
        # results. This field is only considered if page_token is unset. If this field
        # is negative, an INVALID_ARGUMENT is returned.
        # Corresponds to the JSON property `offset`
        # @return [Fixnum]
        attr_accessor :offset
      
        # The order in which products are returned. Products can be ordered by a field
        # in an Product object. Leave it unset if ordered by relevance. OrderBy
        # expression is case-sensitive. See more details at this [user guide](https://
        # cloud.google.com/retail/docs/filter-and-order#order). If this field is
        # unrecognizable, an INVALID_ARGUMENT is returned.
        # Corresponds to the JSON property `orderBy`
        # @return [String]
        attr_accessor :order_by
      
        # The categories associated with a category page. Required for category
        # navigation queries to achieve good search quality. The format should be the
        # same as UserEvent.page_categories; To represent full path of category, use '>'
        # sign to separate different hierarchies. If '>' is part of the category name,
        # please replace it with other character(s). Category pages include special
        # pages such as sales or promotions. For instance, a special sale page may have
        # the category hierarchy: "pageCategories" : ["Sales > 2017 Black Friday Deals"].
        # Corresponds to the JSON property `pageCategories`
        # @return [Array<String>]
        attr_accessor :page_categories
      
        # Maximum number of Products to return. If unspecified, defaults to a reasonable
        # value. The maximum allowed value is 120. Values above 120 will be coerced to
        # 120. If this field is negative, an INVALID_ARGUMENT is returned.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # A page token SearchResponse.next_page_token, received from a previous
        # SearchService.Search call. Provide this to retrieve the subsequent page. When
        # paginating, all other parameters provided to SearchService.Search must match
        # the call that provided the page token. Otherwise, an INVALID_ARGUMENT error is
        # returned.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Raw search query.
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        # Specification to determine under which conditions query expansion should occur.
        # Corresponds to the JSON property `queryExpansionSpec`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchRequestQueryExpansionSpec]
        attr_accessor :query_expansion_spec
      
        # Information of an end user.
        # Corresponds to the JSON property `userInfo`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaUserInfo]
        attr_accessor :user_info
      
        # The keys to fetch and rollup the matching variant Products attributes. The
        # attributes from all the matching variant Products are merged and de-duplicated.
        # Notice that rollup variant Products attributes will lead to extra query
        # latency. Maximum number of keys is 10. For FulfillmentInfo, a fulfillment type
        # and a fulfillment ID must be provided in the format of "fulfillmentType.
        # fulfillmentId". E.g., in "pickupInStore.store123", "pickupInStore" is
        # fulfillment type and "store123" is the store ID. Supported keys are: *
        # colorFamilies * price * originalPrice * discount * inventory(place_id,price) *
        # attributes.key, where key is any key in the Product.attributes map. *
        # pickupInStore.id, where id is any FulfillmentInfo.place_ids for
        # FulfillmentInfo.type "pickup-in-store". * shipToStore.id, where id is any
        # FulfillmentInfo.place_ids for FulfillmentInfo.type "ship-to-store". *
        # sameDayDelivery.id, where id is any FulfillmentInfo.place_ids for
        # FulfillmentInfo.type "same-day-delivery". * nextDayDelivery.id, where id is
        # any FulfillmentInfo.place_ids for FulfillmentInfo.type "next-day-delivery". *
        # customFulfillment1.id, where id is any FulfillmentInfo.place_ids for
        # FulfillmentInfo.type "custom-type-1". * customFulfillment2.id, where id is any
        # FulfillmentInfo.place_ids for FulfillmentInfo.type "custom-type-2". *
        # customFulfillment3.id, where id is any FulfillmentInfo.place_ids for
        # FulfillmentInfo.type "custom-type-3". * customFulfillment4.id, where id is any
        # FulfillmentInfo.place_ids for FulfillmentInfo.type "custom-type-4". *
        # customFulfillment5.id, where id is any FulfillmentInfo.place_ids for
        # FulfillmentInfo.type "custom-type-5". If this field is set to an invalid value
        # other than these, an INVALID_ARGUMENT error is returned.
        # Corresponds to the JSON property `variantRollupKeys`
        # @return [Array<String>]
        attr_accessor :variant_rollup_keys
      
        # Required. A unique identifier for tracking visitors. For example, this could
        # be implemented with an HTTP cookie, which should be able to uniquely identify
        # a visitor on a single device. This unique identifier should not change if the
        # visitor logs in or out of the website. The field must be a UTF-8 encoded
        # string with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT
        # error is returned.
        # Corresponds to the JSON property `visitorId`
        # @return [String]
        attr_accessor :visitor_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @boost_spec = args[:boost_spec] if args.key?(:boost_spec)
          @branch = args[:branch] if args.key?(:branch)
          @canonical_filter = args[:canonical_filter] if args.key?(:canonical_filter)
          @dynamic_facet_spec = args[:dynamic_facet_spec] if args.key?(:dynamic_facet_spec)
          @facet_specs = args[:facet_specs] if args.key?(:facet_specs)
          @filter = args[:filter] if args.key?(:filter)
          @offset = args[:offset] if args.key?(:offset)
          @order_by = args[:order_by] if args.key?(:order_by)
          @page_categories = args[:page_categories] if args.key?(:page_categories)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @query = args[:query] if args.key?(:query)
          @query_expansion_spec = args[:query_expansion_spec] if args.key?(:query_expansion_spec)
          @user_info = args[:user_info] if args.key?(:user_info)
          @variant_rollup_keys = args[:variant_rollup_keys] if args.key?(:variant_rollup_keys)
          @visitor_id = args[:visitor_id] if args.key?(:visitor_id)
        end
      end
      
      # Boost specification to boost certain items.
      class GoogleCloudRetailV2betaSearchRequestBoostSpec
        include Google::Apis::Core::Hashable
      
        # Condition boost specifications. If a product matches multiple conditions in
        # the specifictions, boost scores from these specifications are all applied and
        # combined in a non-linear way. Maximum number of specifications is 10.
        # Corresponds to the JSON property `conditionBoostSpecs`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchRequestBoostSpecConditionBoostSpec>]
        attr_accessor :condition_boost_specs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition_boost_specs = args[:condition_boost_specs] if args.key?(:condition_boost_specs)
        end
      end
      
      # Boost applies to products which match a condition.
      class GoogleCloudRetailV2betaSearchRequestBoostSpecConditionBoostSpec
        include Google::Apis::Core::Hashable
      
        # Strength of the condition boost, which should be in [-1, 1]. Negative boost
        # means demotion. Default is 0.0. Setting to 1.0 gives the item a big promotion.
        # However, it does not necessarily mean that the boosted item will be the top
        # result at all times, nor that other items will be excluded. Results could
        # still be shown even when none of them matches the condition. And results that
        # are significantly more relevant to the search query can still trump your
        # heavily favored but irrelevant items. Setting to -1.0 gives the item a big
        # demotion. However, results that are deeply relevant might still be shown. The
        # item will have an upstream battle to get a fairly high ranking, but it is not
        # blocked out completely. Setting to 0.0 means no boost applied. The boosting
        # condition is ignored.
        # Corresponds to the JSON property `boost`
        # @return [Float]
        attr_accessor :boost
      
        # An expression which specifies a boost condition. The syntax and supported
        # fields are the same as a filter expression. See SearchRequest.filter for
        # detail syntax and limitations. Examples: * To boost products with product ID "
        # product_1" or "product_2", and color "Red" or "Blue": * (id: ANY("product_1", "
        # product_2")) AND (colorFamilies: ANY("Red","Blue"))
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
      
      # The specifications of dynamically generated facets.
      class GoogleCloudRetailV2betaSearchRequestDynamicFacetSpec
        include Google::Apis::Core::Hashable
      
        # Mode of the DynamicFacet feature. Defaults to Mode.DISABLED if it's unset.
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
      
      # A facet specification to perform faceted search.
      class GoogleCloudRetailV2betaSearchRequestFacetSpec
        include Google::Apis::Core::Hashable
      
        # Enables dynamic position for this facet. If set to true, the position of this
        # facet among all facets in the response is determined by Google Retail Search.
        # It will be ordered together with dynamic facets if dynamic facets is enabled.
        # If set to false, the position of this facet in the response will be the same
        # as in the request, and it will be ranked before the facets with dynamic
        # position enable and all dynamic facets. For example, you may always want to
        # have rating facet returned in the response, but it's not necessarily to always
        # display the rating facet at the top. In that case, you can set
        # enable_dynamic_position to true so that the position of rating facet in
        # response will be determined by Google Retail Search. Another example, assuming
        # you have the following facets in the request: * "rating",
        # enable_dynamic_position = true * "price", enable_dynamic_position = false * "
        # brands", enable_dynamic_position = false And also you have a dynamic facets
        # enable, which will generate a facet 'gender'. Then the final order of the
        # facets in the response can be ("price", "brands", "rating", "gender") or ("
        # price", "brands", "gender", "rating") depends on how Google Retail Search
        # orders "gender" and "rating" facets. However, notice that "price" and "brands"
        # will always be ranked at 1st and 2nd position since their
        # enable_dynamic_position are false.
        # Corresponds to the JSON property `enableDynamicPosition`
        # @return [Boolean]
        attr_accessor :enable_dynamic_position
        alias_method :enable_dynamic_position?, :enable_dynamic_position
      
        # List of keys to exclude when faceting. By default, FacetKey.key is not
        # excluded from the filter unless it is listed in this field. For example,
        # suppose there are 100 products with color facet "Red" and 200 products with
        # color facet "Blue". A query containing the filter "colorFamilies:ANY("Red")"
        # and have "colorFamilies" as FacetKey.key will by default return the "Red" with
        # count 100. If this field contains "colorFamilies", then the query returns both
        # the "Red" with count 100 and "Blue" with count 200, because the "colorFamilies"
        # key is now excluded from the filter. A maximum of 100 values are allowed.
        # Otherwise, an INVALID_ARGUMENT error is returned.
        # Corresponds to the JSON property `excludedFilterKeys`
        # @return [Array<String>]
        attr_accessor :excluded_filter_keys
      
        # Specifies how a facet is computed.
        # Corresponds to the JSON property `facetKey`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchRequestFacetSpecFacetKey]
        attr_accessor :facet_key
      
        # Maximum of facet values that should be returned for this facet. If unspecified,
        # defaults to 20. The maximum allowed value is 300. Values above 300 will be
        # coerced to 300. If this field is negative, an INVALID_ARGUMENT is returned.
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
      class GoogleCloudRetailV2betaSearchRequestFacetSpecFacetKey
        include Google::Apis::Core::Hashable
      
        # Only get facet values that contains the given strings. For example, suppose "
        # categories" has three values "Women > Shoe", "Women > Dress" and "Men > Shoe".
        # If set "contains" to "Shoe", the "categories" facet will give only "Women >
        # Shoe" and "Men > Shoe". Only supported on textual fields. Maximum is 10.
        # Corresponds to the JSON property `contains`
        # @return [Array<String>]
        attr_accessor :contains
      
        # Set only if values should be bucketized into intervals. Must be set for facets
        # with numerical values. Must not be set for facet with text values. Maximum
        # number of intervals is 30.
        # Corresponds to the JSON property `intervals`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaInterval>]
        attr_accessor :intervals
      
        # Required. Supported textual and numerical facet keys in Product object, over
        # which the facet values are computed. Facet key is case-sensitive. Allowed
        # facet keys when FacetKey.query is not specified: * textual_field = * "brands" *
        # "categories" * "genders" * "ageGroups" * "availability" * "colorFamilies" * "
        # colors" * "sizes" * "materials" * "patterns" * "conditions" * "attributes.key"
        # * "pickupInStore" * "shipToStore" * "sameDayDelivery" * "nextDayDelivery" * "
        # customFulfillment1" * "customFulfillment2" * "customFulfillment3" * "
        # customFulfillment4" * "customFulfillment5" * numerical_field = * "price" * "
        # discount" * "rating" * "ratingCount" * "attributes.key" * "inventory(place_id,
        # price)"
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # The order in which Facet.values are returned. Allowed values are: * "count
        # desc", which means order by Facet.FacetValue.count descending. * "value desc",
        # which means order by Facet.FacetValue.value descending. Only applies to
        # textual facets. If not set, textual values are sorted in [natural order](https:
        # //en.wikipedia.org/wiki/Natural_sort_order); numerical intervals are sorted in
        # the order given by FacetSpec.FacetKey.intervals; FulfillmentInfo.place_ids are
        # sorted in the order given by FacetSpec.FacetKey.restricted_values.
        # Corresponds to the JSON property `orderBy`
        # @return [String]
        attr_accessor :order_by
      
        # Only get facet values that start with the given string prefix. For example,
        # suppose "categories" has three values "Women > Shoe", "Women > Dress" and "Men
        # > Shoe". If set "prefixes" to "Women", the "categories" facet will give only "
        # Women > Shoe" and "Women > Dress". Only supported on textual fields. Maximum
        # is 10.
        # Corresponds to the JSON property `prefixes`
        # @return [Array<String>]
        attr_accessor :prefixes
      
        # The query that is used to compute facet for the given facet key. When provided,
        # it will override the default behavior of facet computation. The query syntax
        # is the same as a filter expression. See SearchRequest.filter for detail syntax
        # and limitations. Notice that there is no limitation on FacetKey.key when query
        # is specified. In the response, FacetValue.value will be always "1" and
        # FacetValue.count will be the number of results that matches the query. For
        # example, you can set a customized facet for "shipToStore", where FacetKey.key
        # is "customizedShipToStore", and FacetKey.query is "availability: ANY(\"
        # IN_STOCK\") AND shipToStore: ANY(\"123\")". Then the facet will count the
        # products that are both in stock and ship to store "123".
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        # Only get facet for the given restricted values. For example, when using "
        # pickupInStore" as key and set restricted values to ["store123", "store456"],
        # only facets for "store123" and "store456" are returned. Only supported on
        # textual fields and fulfillments. Maximum is 20. Must be set for the
        # fulfillment facet keys: * pickupInStore * shipToStore * sameDayDelivery *
        # nextDayDelivery * customFulfillment1 * customFulfillment2 * customFulfillment3
        # * customFulfillment4 * customFulfillment5
        # Corresponds to the JSON property `restrictedValues`
        # @return [Array<String>]
        attr_accessor :restricted_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contains = args[:contains] if args.key?(:contains)
          @intervals = args[:intervals] if args.key?(:intervals)
          @key = args[:key] if args.key?(:key)
          @order_by = args[:order_by] if args.key?(:order_by)
          @prefixes = args[:prefixes] if args.key?(:prefixes)
          @query = args[:query] if args.key?(:query)
          @restricted_values = args[:restricted_values] if args.key?(:restricted_values)
        end
      end
      
      # Specification to determine under which conditions query expansion should occur.
      class GoogleCloudRetailV2betaSearchRequestQueryExpansionSpec
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
      
      # Response message for SearchService.Search method.
      class GoogleCloudRetailV2betaSearchResponse
        include Google::Apis::Core::Hashable
      
        # A unique search token. This should be included in the UserEvent logs resulting
        # from this search, which enables accurate attribution of search model
        # performance.
        # Corresponds to the JSON property `attributionToken`
        # @return [String]
        attr_accessor :attribution_token
      
        # If spell correction applies, the corrected query. Otherwise, empty.
        # Corresponds to the JSON property `correctedQuery`
        # @return [String]
        attr_accessor :corrected_query
      
        # Results of facets requested by user.
        # Corresponds to the JSON property `facets`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchResponseFacet>]
        attr_accessor :facets
      
        # A token that can be sent as SearchRequest.page_token to retrieve the next page.
        # If this field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Information describing query expansion including whether expansion has
        # occurred.
        # Corresponds to the JSON property `queryExpansionInfo`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchResponseQueryExpansionInfo]
        attr_accessor :query_expansion_info
      
        # The URI of a customer-defined redirect page. If redirect action is triggered,
        # no search will be performed, and only redirect_uri and attribution_token will
        # be set in the response.
        # Corresponds to the JSON property `redirectUri`
        # @return [String]
        attr_accessor :redirect_uri
      
        # A list of matched items. The order represents the ranking.
        # Corresponds to the JSON property `results`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchResponseSearchResult>]
        attr_accessor :results
      
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
          @attribution_token = args[:attribution_token] if args.key?(:attribution_token)
          @corrected_query = args[:corrected_query] if args.key?(:corrected_query)
          @facets = args[:facets] if args.key?(:facets)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @query_expansion_info = args[:query_expansion_info] if args.key?(:query_expansion_info)
          @redirect_uri = args[:redirect_uri] if args.key?(:redirect_uri)
          @results = args[:results] if args.key?(:results)
          @total_size = args[:total_size] if args.key?(:total_size)
        end
      end
      
      # A facet result.
      class GoogleCloudRetailV2betaSearchResponseFacet
        include Google::Apis::Core::Hashable
      
        # Whether the facet is dynamically generated.
        # Corresponds to the JSON property `dynamicFacet`
        # @return [Boolean]
        attr_accessor :dynamic_facet
        alias_method :dynamic_facet?, :dynamic_facet
      
        # The key for this facet. E.g., "colorFamilies" or "price" or "attributes.attr1".
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # The facet values for this field.
        # Corresponds to the JSON property `values`
        # @return [Array<Google::Apis::RetailV2beta::GoogleCloudRetailV2betaSearchResponseFacetFacetValue>]
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
      class GoogleCloudRetailV2betaSearchResponseFacetFacetValue
        include Google::Apis::Core::Hashable
      
        # Number of items that have this facet value.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # A floating point interval.
        # Corresponds to the JSON property `interval`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaInterval]
        attr_accessor :interval
      
        # Text value of a facet, such as "Black" for facet "colorFamilies".
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
      
      # Information describing query expansion including whether expansion has
      # occurred.
      class GoogleCloudRetailV2betaSearchResponseQueryExpansionInfo
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
      class GoogleCloudRetailV2betaSearchResponseSearchResult
        include Google::Apis::Core::Hashable
      
        # Product.id of the searched Product.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The count of matched variant Products.
        # Corresponds to the JSON property `matchingVariantCount`
        # @return [Fixnum]
        attr_accessor :matching_variant_count
      
        # If a variant Product matches the search query, this map indicates which
        # Product fields are matched. The key is the Product.name, the value is a field
        # mask of the matched Product fields. If matched attributes cannot be determined,
        # this map will be empty. For example, a key "sku1" with field mask "products.
        # color_info" indicates there is a match between "sku1" ColorInfo and the query.
        # Corresponds to the JSON property `matchingVariantFields`
        # @return [Hash<String,String>]
        attr_accessor :matching_variant_fields
      
        # Product captures all metadata information of items to be recommended or
        # searched.
        # Corresponds to the JSON property `product`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProduct]
        attr_accessor :product
      
        # The rollup matching variant Product attributes. The key is one of the
        # SearchRequest.variant_rollup_keys. The values are the merged and de-duplicated
        # Product attributes. Notice that the rollup values are respect filter. For
        # example, when filtering by "colorFamilies:ANY(\"red\")" and rollup "
        # colorFamilies", only "red" is returned. For textual and numerical attributes,
        # the rollup values is a list of string or double values with type google.
        # protobuf.ListValue. For example, if there are two variants with colors "red"
        # and "blue", the rollup values are ` key: "colorFamilies" value ` list_value `
        # values ` string_value: "red" ` values ` string_value: "blue" ` ` ` ` For
        # FulfillmentInfo, the rollup values is a double value with type google.protobuf.
        # Value. For example, ``key: "pickupInStore.store1" value ` number_value: 10 ```
        # means a there are 10 variants in this product are available in the store "
        # store1".
        # Corresponds to the JSON property `variantRollupValues`
        # @return [Hash<String,Object>]
        attr_accessor :variant_rollup_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @matching_variant_count = args[:matching_variant_count] if args.key?(:matching_variant_count)
          @matching_variant_fields = args[:matching_variant_fields] if args.key?(:matching_variant_fields)
          @product = args[:product] if args.key?(:product)
          @variant_rollup_values = args[:variant_rollup_values] if args.key?(:variant_rollup_values)
        end
      end
      
      # Request message to set a specified branch as new default_branch.
      class GoogleCloudRetailV2betaSetDefaultBranchRequest
        include Google::Apis::Core::Hashable
      
        # The final component of the resource name of a branch. This field must be one
        # of "0", "1" or "2". Otherwise, an INVALID_ARGUMENT error is returned.
        # Corresponds to the JSON property `branchId`
        # @return [String]
        attr_accessor :branch_id
      
        # Some note on this request, this can be retrieved by CatalogService.
        # GetDefaultBranch before next valid default branch set occurs. This field must
        # be a UTF-8 encoded string with a length limit of 1,000 characters. Otherwise,
        # an INVALID_ARGUMENT error is returned.
        # Corresponds to the JSON property `note`
        # @return [String]
        attr_accessor :note
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @branch_id = args[:branch_id] if args.key?(:branch_id)
          @note = args[:note] if args.key?(:note)
        end
      end
      
      # Metadata related to the progress of the SetInventory operation. Currently
      # empty because there is no meaningful metadata populated from the SetInventory
      # method.
      class GoogleCloudRetailV2betaSetInventoryMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for SetInventory method.
      class GoogleCloudRetailV2betaSetInventoryRequest
        include Google::Apis::Core::Hashable
      
        # If set to true, and the Product with name Product.name is not found, the
        # inventory update will still be processed and retained for at most 1 day until
        # the Product is created. If set to false, a NOT_FOUND error is returned if the
        # Product is not found.
        # Corresponds to the JSON property `allowMissing`
        # @return [Boolean]
        attr_accessor :allow_missing
        alias_method :allow_missing?, :allow_missing
      
        # Product captures all metadata information of items to be recommended or
        # searched.
        # Corresponds to the JSON property `inventory`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaProduct]
        attr_accessor :inventory
      
        # Indicates which inventory fields in the provided Product to update. If not set
        # or set with empty paths, all inventory fields will be updated. If an
        # unsupported or unknown field is provided, an INVALID_ARGUMENT error is
        # returned and the entire update will be ignored.
        # Corresponds to the JSON property `setMask`
        # @return [String]
        attr_accessor :set_mask
      
        # The time when the request is issued, used to prevent out-of-order updates on
        # inventory fields with the last update time recorded. If not provided, the
        # internal system time will be used.
        # Corresponds to the JSON property `setTime`
        # @return [String]
        attr_accessor :set_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_missing = args[:allow_missing] if args.key?(:allow_missing)
          @inventory = args[:inventory] if args.key?(:inventory)
          @set_mask = args[:set_mask] if args.key?(:set_mask)
          @set_time = args[:set_time] if args.key?(:set_time)
        end
      end
      
      # Response of the SetInventoryRequest. Currently empty because there is no
      # meaningful response populated from the SetInventory method.
      class GoogleCloudRetailV2betaSetInventoryResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
        # user events that are the result of PredictionService.Predict. The value must
        # be a valid SearchResponse.attribution_token for user events that are the
        # result of SearchService.Search. This token enables us to accurately attribute
        # page view or purchase back to the event and the particular predict response
        # containing this clicked/purchased product. If user clicks on product K in the
        # recommendation results, pass PredictResponse.attribution_token as a URL
        # parameter to product K's page. When recording events on product K's page, log
        # the PredictResponse.attribution_token to this field.
        # Corresponds to the JSON property `attributionToken`
        # @return [String]
        attr_accessor :attribution_token
      
        # The ID or name of the associated shopping cart. This ID is used to associate
        # multiple items added or present in the cart before purchase. This can only be
        # set for `add-to-cart`, `purchase-complete`, or `shopping-cart-page-view`
        # events.
        # Corresponds to the JSON property `cartId`
        # @return [String]
        attr_accessor :cart_id
      
        # Detailed completion information including completion attribution token and
        # clicked completion info.
        # Corresponds to the JSON property `completionDetail`
        # @return [Google::Apis::RetailV2beta::GoogleCloudRetailV2betaCompletionDetail]
        attr_accessor :completion_detail
      
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
      
        # The filter syntax consists of an expression language for constructing a
        # predicate from one or more fields of the products being filtered. See
        # SearchRequest.filter for definition and syntax. The value must be a UTF-8
        # encoded string with a length limit of 1,000 characters. Otherwise, an
        # INVALID_ARGUMENT error is returned.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # An integer that specifies the current offset for pagination (the 0-indexed
        # starting location, amongst the products deemed by the API as relevant). See
        # SearchRequest.offset for definition. If this field is negative, an
        # INVALID_ARGUMENT is returned. This can only be set for `search` events. Other
        # event types should not set this field. Otherwise, an INVALID_ARGUMENT error is
        # returned.
        # Corresponds to the JSON property `offset`
        # @return [Fixnum]
        attr_accessor :offset
      
        # The order in which products are returned. See SearchRequest.order_by for
        # definition and syntax. The value must be a UTF-8 encoded string with a length
        # limit of 1,000 characters. Otherwise, an INVALID_ARGUMENT error is returned.
        # This can only be set for `search` events. Other event types should not set
        # this field. Otherwise, an INVALID_ARGUMENT error is returned.
        # Corresponds to the JSON property `orderBy`
        # @return [String]
        attr_accessor :order_by
      
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
      
        # A unique ID of a web page view. This should be kept the same for all user
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
        # the end user on the current page (the end user may have not finished browsing
        # the whole page yet). When a new page is returned to the end user, after
        # pagination/filtering/ordering even for the same query, a new `search` event
        # with different product_details is desired. The end user may have not finished
        # browsing the whole page yet.
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
      
        # The user's search query. See SearchRequest.query for definition. The value
        # must be a UTF-8 encoded string with a length limit of 5,000 characters.
        # Otherwise, an INVALID_ARGUMENT error is returned. At least one of search_query
        # or page_categories is required for `search` events. Other event types should
        # not set this field. Otherwise, an INVALID_ARGUMENT error is returned.
        # Corresponds to the JSON property `searchQuery`
        # @return [String]
        attr_accessor :search_query
      
        # A unique identifier for tracking a visitor session with a length limit of 128
        # bytes. A session is an aggregation of an end user behavior in a time span. A
        # general guideline to populate the sesion_id: 1. If user has no activity for 30
        # min, a new session_id should be assigned. 2. The session_id should be unique
        # across users, suggest use uuid or add visitor_id as prefix.
        # Corresponds to the JSON property `sessionId`
        # @return [String]
        attr_accessor :session_id
      
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
          @completion_detail = args[:completion_detail] if args.key?(:completion_detail)
          @event_time = args[:event_time] if args.key?(:event_time)
          @event_type = args[:event_type] if args.key?(:event_type)
          @experiment_ids = args[:experiment_ids] if args.key?(:experiment_ids)
          @filter = args[:filter] if args.key?(:filter)
          @offset = args[:offset] if args.key?(:offset)
          @order_by = args[:order_by] if args.key?(:order_by)
          @page_categories = args[:page_categories] if args.key?(:page_categories)
          @page_view_id = args[:page_view_id] if args.key?(:page_view_id)
          @product_details = args[:product_details] if args.key?(:product_details)
          @purchase_transaction = args[:purchase_transaction] if args.key?(:purchase_transaction)
          @referrer_uri = args[:referrer_uri] if args.key?(:referrer_uri)
          @search_query = args[:search_query] if args.key?(:search_query)
          @session_id = args[:session_id] if args.key?(:session_id)
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
      
        # The end user's IP address. Required for getting SearchResponse.
        # sponsored_results. This field is used to extract location information for
        # personalization. This field must be either an IPv4 address (e.g. "104.133.9.80"
        # ) or an IPv6 address (e.g. "2001:0db8:85a3:0000:0000:8a2e:0370:7334").
        # Otherwise, an INVALID_ARGUMENT error is returned. This should not be set when
        # using the JavaScript tag in UserEventService.CollectUserEvent or if
        # direct_user_request is set.
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # User agent as included in the HTTP header. Required for getting SearchResponse.
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
      
      # Represents a whole or partial calendar date, such as a birthday. The time of
      # day and time zone are either specified elsewhere or are insignificant. The
      # date is relative to the Gregorian Calendar. This can represent one of the
      # following: * A full date, with non-zero year, month, and day values * A month
      # and day value, with a zero year, such as an anniversary * A year on its own,
      # with zero month and day values * A year and month value, with a zero day, such
      # as a credit card expiration date Related types are google.type.TimeOfDay and `
      # google.protobuf.Timestamp`.
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
