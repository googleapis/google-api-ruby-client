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
      
      # Metadata related to the progress of the ImportDocuments operation. This will
      # be returned by the google.longrunning.Operation.metadata field.
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
        # Storage directory. Import errors will be written to sharded files in this
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
      
      # Metadata related to the progress of the Import operation. This will be
      # returned by the google.longrunning.Operation.metadata field.
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
      
      # BigQuery source import data from.
      class GoogleCloudDiscoveryengineV1betaBigQuerySource
        include Google::Apis::Core::Hashable
      
        # The schema to use when parsing the data from the source. Supported values for
        # imports: * `user_event` (default): One JSON UserEvent per line. * `document` (
        # default): One JSON Document per line. Each document must have a valid document.
        # id.
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
      
      # Detailed completion information including completion attribution token and
      # clicked completion info.
      class GoogleCloudDiscoveryengineV1betaCompletionInfo
        include Google::Apis::Core::Hashable
      
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
          @selected_position = args[:selected_position] if args.key?(:selected_position)
          @selected_suggestion = args[:selected_suggestion] if args.key?(:selected_suggestion)
        end
      end
      
      # A custom attribute that is not explicitly modeled in a resource, e.g.
      # UserEvent.
      class GoogleCloudDiscoveryengineV1betaCustomAttribute
        include Google::Apis::Core::Hashable
      
        # The numerical values of this custom attribute. For example, `[2.3, 15.4]` when
        # the key is "lengths_cm". Exactly one of text or numbers should be set.
        # Otherwise, an INVALID_ARGUMENT error is returned.
        # Corresponds to the JSON property `numbers`
        # @return [Array<Float>]
        attr_accessor :numbers
      
        # The textual values of this custom attribute. For example, `["yellow", "green"]`
        # when the key is "color". Empty string is not allowed. Otherwise, an
        # INVALID_ARGUMENT error is returned. Exactly one of text or numbers should be
        # set. Otherwise, an INVALID_ARGUMENT error is returned.
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
      
      # Document captures all raw metadata information of items to be recommended or
      # searched.
      class GoogleCloudDiscoveryengineV1betaDocument
        include Google::Apis::Core::Hashable
      
        # Immutable. The identifier of the document. Id should conform to [RFC-1034](
        # https://tools.ietf.org/html/rfc1034) standard with a length limit of 63
        # characters.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The JSON string representation of the document. It should conform to the
        # registered schema or an INVALID_ARGUMENT error is thrown.
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
      
        # Required. The identifier of the schema located in the same data store.
        # Corresponds to the JSON property `schemaId`
        # @return [String]
        attr_accessor :schema_id
      
        # The structured JSON data for the document. It should conform to the registered
        # schema or an INVALID_ARGUMENT error is thrown.
        # Corresponds to the JSON property `structData`
        # @return [Hash<String,Object>]
        attr_accessor :struct_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @json_data = args[:json_data] if args.key?(:json_data)
          @name = args[:name] if args.key?(:name)
          @parent_document_id = args[:parent_document_id] if args.key?(:parent_document_id)
          @schema_id = args[:schema_id] if args.key?(:schema_id)
          @struct_data = args[:struct_data] if args.key?(:struct_data)
        end
      end
      
      # Detailed document information associated with a user event.
      class GoogleCloudDiscoveryengineV1betaDocumentInfo
        include Google::Apis::Core::Hashable
      
        # Required. The Document resource ID.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Required. The Document resource full name, of the form: projects/`project\_id`/
        # locations/`location`/collections/`collection\_id`/dataStores/`data\_store\_id`/
        # branches/`branch\_id`/documents/`document\_id`
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
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
          @promotion_ids = args[:promotion_ids] if args.key?(:promotion_ids)
          @quantity = args[:quantity] if args.key?(:quantity)
        end
      end
      
      # Cloud Storage location for input content.
      class GoogleCloudDiscoveryengineV1betaGcsSource
        include Google::Apis::Core::Hashable
      
        # The schema to use when parsing the data from the source. Supported values for
        # imports: * `user_event` (default): One JSON UserEvent per line. * `document` (
        # default): One JSON Document per line. Each document must have a valid Document.
        # id.
        # Corresponds to the JSON property `dataSchema`
        # @return [String]
        attr_accessor :data_schema
      
        # Required. Cloud Storage URIs to input files. URI can be up to 2000 characters
        # long. URIs can match the full object path (for example, `gs://bucket/directory/
        # object.json`) or a pattern matching one or more files, such as `gs://bucket/
        # directory/*.json`. A request can contain at most 100 files, and each file can
        # be up to 2 GB.
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
      
      # Metadata related to the progress of the ImportDocuments operation. This will
      # be returned by the google.longrunning.Operation.metadata field.
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
          @bigquery_source = args[:bigquery_source] if args.key?(:bigquery_source)
          @error_config = args[:error_config] if args.key?(:error_config)
          @gcs_source = args[:gcs_source] if args.key?(:gcs_source)
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
        # Storage directory. Import errors will be written to sharded files in this
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
      
      # Metadata related to the progress of the Import operation. This will be
      # returned by the google.longrunning.Operation.metadata field.
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
        # relative to the media total length. This value must be between [0, 1.0]
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
        # special sale page may have the category hierarchy: "pageCategory" : "Sales >
        # 2017 Black Friday Deals". Required for `view-category-page` events. Other
        # event types should not set this field. Otherwise, an INVALID_ARGUMENT error is
        # returned.
        # Corresponds to the JSON property `pageCategory`
        # @return [String]
        attr_accessor :page_category
      
        # A unique ID of a web page view. This should be kept the same for all user
        # events triggered from the same pageview. For example, an item detail page view
        # could trigger multiple events as the user is browsing the page. The `
        # pageViewId` property should be kept the same for all these events so that they
        # can be grouped together properly. When using the client side event reporting
        # with JavaScript pixel and Google Tag Manager, this value is filled in
        # automatically.
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
      
      # Request message for Recommend method.
      class GoogleCloudDiscoveryengineV1betaRecommendRequest
        include Google::Apis::Core::Hashable
      
        # Filter for restricting recommendation results with a length limit of 5,000
        # characters. Currently, only filter expressions on the `filter_tags` attribute
        # is supported. Examples: * (filter_tags: ANY("Red", "Blue") OR filter_tags: ANY(
        # "Hot", "Cold")) * (filter_tags: ANY("Red", "Blue")) AND NOT (filter_tags: ANY("
        # Green")) If your filter blocks all results, the API will return generic (
        # unfiltered) popular Documents. If you only want results strictly matching the
        # filters, set `strictFiltering` to True in RecommendRequest.params to receive
        # empty results instead. Note that the API will never return Documents with
        # storageStatus of "EXPIRED" or "DELETED" regardless of filter choices.
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
        # will be returned in RecommendResponse.results.document. * `returnScore`:
        # Boolean. If set to true, the recommendation 'score' corresponding to each
        # returned Document will be set in RecommendResponse.results.metadata. The given
        # 'score' indicates the probability of a Document conversion given the user's
        # context and history. * `strictFiltering`: Boolean. True by default. If set to
        # false, the service will return generic (unfiltered) popular Documents instead
        # of empty if your filter blocks all recommendation results. * `diversityLevel`:
        # String. Default empty. If set to be non-empty, then it needs to be one of: * '
        # no-diversity' * 'low-diversity' * 'medium-diversity' * 'high-diversity' * '
        # auto-diversity' This gives request-level control and adjusts recommendation
        # results based on Document category.
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
      
      # Detailed search information.
      class GoogleCloudDiscoveryengineV1betaSearchInfo
        include Google::Apis::Core::Hashable
      
        # An integer that specifies the current offset for pagination (the 0-indexed
        # starting location, amongst the products deemed by the API as relevant). See
        # SearchRequest.offset for definition. If this field is negative, an
        # INVALID_ARGUMENT is returned. This can only be set for `search` events. Other
        # event types should not set this field. Otherwise, an INVALID_ARGUMENT error is
        # returned.
        # Corresponds to the JSON property `offset`
        # @return [Fixnum]
        attr_accessor :offset
      
        # The order in which products are returned, if applicable. See SearchRequest.
        # order_by for definition and syntax. The value must be a UTF-8 encoded string
        # with a length limit of 1,000 characters. Otherwise, an INVALID_ARGUMENT error
        # is returned. This can only be set for `search` events. Other event types
        # should not set this field. Otherwise, an INVALID_ARGUMENT error is returned.
        # Corresponds to the JSON property `orderBy`
        # @return [String]
        attr_accessor :order_by
      
        # The user's search query. See SearchRequest.query for definition. The value
        # must be a UTF-8 encoded string with a length limit of 5,000 characters.
        # Otherwise, an INVALID_ARGUMENT error is returned. At least one of search_query
        # or page_categories is required for `search` events. Other event types should
        # not set this field. Otherwise, an INVALID_ARGUMENT error is returned.
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
        # needs to pass all below criteria, otherwise an INVALID_ARGUMENT error is
        # returned: * The key must be a UTF-8 encoded string with a length limit of 5,
        # 000 characters. * For text attributes, at most 400 values are allowed. Empty
        # values are not allowed. Each value must be a UTF-8 encoded string with a
        # length limit of 256 characters. * For number attributes, at most 400 values
        # are allowed. For product recommendations, an example of extra user information
        # is traffic_channel, which is how a user arrives at the site. Users can arrive
        # at the site by coming to the site directly, coming through Google search, or
        # in other ways.
        # Corresponds to the JSON property `attributes`
        # @return [Hash<String,Google::Apis::DiscoveryengineV1beta::GoogleCloudDiscoveryengineV1betaCustomAttribute>]
        attr_accessor :attributes
      
        # Token to attribute an API response to user action(s) to trigger the event.
        # Highly recommended for user events that are the result of PredictionService.
        # Predict. This field enables accurate attribution of recommendation model
        # performance. The value must be one of: * PredictResponse.attribution_token for
        # events that are the result of PredictionService.Predict. * SearchResponse.
        # attribution_token for events that are the result of SearchService.Search. *
        # CompleteQueryResponse.attribution_token for events that are the result of
        # SearchService.CompleteQuery. This token enables us to accurately attribute
        # page view or conversion completion back to the event and the particular
        # predict response containing this clicked/purchased product. If user clicks on
        # product K in the recommendation results, pass PredictResponse.
        # attribution_token as a URL parameter to product K's page. When recording
        # events on product K's page, log the PredictResponse.attribution_token to this
        # field.
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
        # is for `search` events, the associated SearchService.SearchRequest may contain
        # a filter expression in SearchService.SearchRequest.filter conforming to https:/
        # /google.aip.dev/160#filtering. Similarly, for `view-item-list` events that are
        # generated from a PredictionService.PredictRequest, this field may be populated
        # directly from PredictionService.PredictRequest.filter conforming to https://
        # google.aip.dev/160#filtering. The value must be a UTF-8 encoded string with a
        # length limit of 1,000 characters. Otherwise, an INVALID_ARGUMENT error is
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
        # string with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT
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
        # such as a user name. Don't set for anonymous users. Always use a hashed value
        # for this ID. Don't set the field to the same fixed ID for different users.
        # This mixes the event history of those users together, which results in
        # degraded model quality. The field must be a UTF-8 encoded string with a length
        # limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is returned.
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
