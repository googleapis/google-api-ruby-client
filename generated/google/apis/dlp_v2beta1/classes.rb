# Copyright 2015 Google Inc.
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
    module DlpV2beta1
      
      # The request message for Operations.CancelOperation.
      class GoogleLongrunningCancelOperationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
        # @return [Array<Google::Apis::DlpV2beta1::GoogleLongrunningOperation>]
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
      
        # If the value is `false`, it means the operation is still in progress.
        # If `true`, the operation is completed, and either `error` or `response` is
        # available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by
        # [gRPC](https://github.com/grpc). The error model is designed to be:
        # - Simple to use and understand for most users
        # - Flexible enough to meet unexpected needs
        # # Overview
        # The `Status` message contains three pieces of data: error code, error message,
        # and error details. The error code should be an enum value of
        # google.rpc.Code, but it may accept additional error codes if needed.  The
        # error message should be a developer-facing English message that helps
        # developers *understand* and *resolve* the error. If a localized user-facing
        # error message is needed, put the localized message in the error details or
        # localize it in the client. The optional error details may contain arbitrary
        # information about the error. There is a predefined set of error detail types
        # in the package `google.rpc` that can be used for common error conditions.
        # # Language mapping
        # The `Status` message is the logical representation of the error model, but it
        # is not necessarily the actual wire format. When the `Status` message is
        # exposed in different client libraries and different wire protocols, it can be
        # mapped differently. For example, it will likely be mapped to some exceptions
        # in Java, but more likely mapped to some error codes in C.
        # # Other uses
        # The error model and the `Status` message can be used in a variety of
        # environments, either with or without APIs, to provide a
        # consistent developer experience across different environments.
        # Example uses of this error model include:
        # - Partial errors. If a service needs to return partial errors to the client,
        # it may embed the `Status` in the normal response to indicate the partial
        # errors.
        # - Workflow errors. A typical workflow has multiple steps. Each step may
        # have a `Status` message for error reporting.
        # - Batch operations. If a client uses batch request and batch response, the
        # `Status` message should be used directly inside batch response, one for
        # each error sub-response.
        # - Asynchronous operations. If an API call embeds asynchronous operation
        # results in its response, the status of those operations should be
        # represented directly using the `Status` message.
        # - Logging. If some API errors are stored in logs, the message `Status` could
        # be used directly after any stripping needed for security/privacy reasons.
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::DlpV2beta1::GoogleRpcStatus]
        attr_accessor :error
      
        # This field will contain an InspectOperationMetadata object. This will always
        # be returned with the Operation.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, The `name` should have the format of `inspect/
        # operations/<identifier>`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # This field will contain an InspectOperationResult object.
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
      
      # Options defining BigQuery table and row identifiers.
      class GooglePrivacyDlpV2beta1BigQueryOptions
        include Google::Apis::Core::Hashable
      
        # References to fields uniquely identifying rows within the table.
        # Nested fields in the format, like `person.birthdate.year`, are allowed.
        # Corresponds to the JSON property `identifyingFields`
        # @return [Array<Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1FieldId>]
        attr_accessor :identifying_fields
      
        # Message defining the location of a BigQuery table. A table is uniquely
        # identified  by its project_id, dataset_id, and table_name. Within a query
        # a table is often referenced with a string in the format of:
        # `<project_id>:<dataset_id>.<table_id>` or
        # `<project_id>.<dataset_id>.<table_id>`.
        # Corresponds to the JSON property `tableReference`
        # @return [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1BigQueryTable]
        attr_accessor :table_reference
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @identifying_fields = args[:identifying_fields] if args.key?(:identifying_fields)
          @table_reference = args[:table_reference] if args.key?(:table_reference)
        end
      end
      
      # Message defining the location of a BigQuery table. A table is uniquely
      # identified  by its project_id, dataset_id, and table_name. Within a query
      # a table is often referenced with a string in the format of:
      # `<project_id>:<dataset_id>.<table_id>` or
      # `<project_id>.<dataset_id>.<table_id>`.
      class GooglePrivacyDlpV2beta1BigQueryTable
        include Google::Apis::Core::Hashable
      
        # Dataset ID of the table.
        # Corresponds to the JSON property `datasetId`
        # @return [String]
        attr_accessor :dataset_id
      
        # The Google Cloud Platform project ID of the project containing the table.
        # If omitted, project ID is inferred from the API call.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Name of the table.
        # Corresponds to the JSON property `tableId`
        # @return [String]
        attr_accessor :table_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset_id = args[:dataset_id] if args.key?(:dataset_id)
          @project_id = args[:project_id] if args.key?(:project_id)
          @table_id = args[:table_id] if args.key?(:table_id)
        end
      end
      
      # Info Type Category description.
      class GooglePrivacyDlpV2beta1CategoryDescription
        include Google::Apis::Core::Hashable
      
        # Human readable form of the category name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Internal name of the category.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Record key for a finding in a Cloud Storage file.
      class GooglePrivacyDlpV2beta1CloudStorageKey
        include Google::Apis::Core::Hashable
      
        # Path to the file.
        # Corresponds to the JSON property `filePath`
        # @return [String]
        attr_accessor :file_path
      
        # Byte offset of the referenced data in the file.
        # Corresponds to the JSON property `startOffset`
        # @return [Fixnum]
        attr_accessor :start_offset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_path = args[:file_path] if args.key?(:file_path)
          @start_offset = args[:start_offset] if args.key?(:start_offset)
        end
      end
      
      # Options defining a file or a set of files (path ending with *) within
      # a Google Cloud Storage bucket.
      class GooglePrivacyDlpV2beta1CloudStorageOptions
        include Google::Apis::Core::Hashable
      
        # Set of files to scan.
        # Corresponds to the JSON property `fileSet`
        # @return [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1FileSet]
        attr_accessor :file_set
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_set = args[:file_set] if args.key?(:file_set)
        end
      end
      
      # A location in Cloud Storage.
      class GooglePrivacyDlpV2beta1CloudStoragePath
        include Google::Apis::Core::Hashable
      
        # The url, in the format of `gs://bucket/<path>`.
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
      
      # Represents a color in the RGB color space.
      class GooglePrivacyDlpV2beta1Color
        include Google::Apis::Core::Hashable
      
        # The amount of blue in the color as a value in the interval [0, 1].
        # Corresponds to the JSON property `blue`
        # @return [Float]
        attr_accessor :blue
      
        # The amount of green in the color as a value in the interval [0, 1].
        # Corresponds to the JSON property `green`
        # @return [Float]
        attr_accessor :green
      
        # The amount of red in the color as a value in the interval [0, 1].
        # Corresponds to the JSON property `red`
        # @return [Float]
        attr_accessor :red
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @blue = args[:blue] if args.key?(:blue)
          @green = args[:green] if args.key?(:green)
          @red = args[:red] if args.key?(:red)
        end
      end
      
      # Container structure for the content to inspect.
      class GooglePrivacyDlpV2beta1ContentItem
        include Google::Apis::Core::Hashable
      
        # Content data to inspect or redact.
        # Corresponds to the JSON property `data`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :data
      
        # Structured content to inspect. Up to 50,000 `Value`s per request allowed.
        # Corresponds to the JSON property `table`
        # @return [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1Table]
        attr_accessor :table
      
        # Type of the content, as defined in Content-Type HTTP header.
        # Supported types are: all "text" types, octet streams, PNG images,
        # JPEG images.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # String data to inspect or redact.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data = args[:data] if args.key?(:data)
          @table = args[:table] if args.key?(:table)
          @type = args[:type] if args.key?(:type)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Request for scheduling a scan of a data subset from a Google Platform data
      # repository.
      class GooglePrivacyDlpV2beta1CreateInspectOperationRequest
        include Google::Apis::Core::Hashable
      
        # Configuration description of the scanning process.
        # When used with redactContent only info_types and min_likelihood are currently
        # used.
        # Corresponds to the JSON property `inspectConfig`
        # @return [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1InspectConfig]
        attr_accessor :inspect_config
      
        # Additional configuration for inspect long running operations.
        # Corresponds to the JSON property `operationConfig`
        # @return [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1OperationConfig]
        attr_accessor :operation_config
      
        # Cloud repository for storing output.
        # Corresponds to the JSON property `outputConfig`
        # @return [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1OutputStorageConfig]
        attr_accessor :output_config
      
        # Shared message indicating Cloud storage type.
        # Corresponds to the JSON property `storageConfig`
        # @return [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1StorageConfig]
        attr_accessor :storage_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inspect_config = args[:inspect_config] if args.key?(:inspect_config)
          @operation_config = args[:operation_config] if args.key?(:operation_config)
          @output_config = args[:output_config] if args.key?(:output_config)
          @storage_config = args[:storage_config] if args.key?(:storage_config)
        end
      end
      
      # Record key for a finding in Cloud Datastore.
      class GooglePrivacyDlpV2beta1DatastoreKey
        include Google::Apis::Core::Hashable
      
        # A unique identifier for a Datastore entity.
        # If a key's partition ID or any of its path kinds or names are
        # reserved/read-only, the key is reserved/read-only.
        # A reserved/read-only key is forbidden in certain documented contexts.
        # Corresponds to the JSON property `entityKey`
        # @return [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1Key]
        attr_accessor :entity_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entity_key = args[:entity_key] if args.key?(:entity_key)
        end
      end
      
      # Options defining a data set within Google Cloud Datastore.
      class GooglePrivacyDlpV2beta1DatastoreOptions
        include Google::Apis::Core::Hashable
      
        # A representation of a Datastore kind.
        # Corresponds to the JSON property `kind`
        # @return [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1KindExpression]
        attr_accessor :kind
      
        # Datastore partition ID.
        # A partition ID identifies a grouping of entities. The grouping is always
        # by project and namespace, however the namespace ID may be empty.
        # A partition ID contains several dimensions:
        # project ID and namespace ID.
        # Corresponds to the JSON property `partitionId`
        # @return [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1PartitionId]
        attr_accessor :partition_id
      
        # Properties to scan. If none are specified, all properties will be scanned
        # by default.
        # Corresponds to the JSON property `projection`
        # @return [Array<Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1Projection>]
        attr_accessor :projection
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @partition_id = args[:partition_id] if args.key?(:partition_id)
          @projection = args[:projection] if args.key?(:projection)
        end
      end
      
      # General identifier of a data field in a storage service.
      class GooglePrivacyDlpV2beta1FieldId
        include Google::Apis::Core::Hashable
      
        # Name describing the field.
        # Corresponds to the JSON property `columnName`
        # @return [String]
        attr_accessor :column_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column_name = args[:column_name] if args.key?(:column_name)
        end
      end
      
      # Set of files to scan.
      class GooglePrivacyDlpV2beta1FileSet
        include Google::Apis::Core::Hashable
      
        # The url, in the format `gs://<bucket>/<path>`. Trailing wildcard in the
        # path is allowed.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Container structure describing a single finding within a string or image.
      class GooglePrivacyDlpV2beta1Finding
        include Google::Apis::Core::Hashable
      
        # Timestamp when finding was detected.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Type of information detected by the API.
        # Corresponds to the JSON property `infoType`
        # @return [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1InfoType]
        attr_accessor :info_type
      
        # Estimate of how likely it is that the info_type is correct.
        # Corresponds to the JSON property `likelihood`
        # @return [String]
        attr_accessor :likelihood
      
        # Specifies the location of a finding within its source item.
        # Corresponds to the JSON property `location`
        # @return [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1Location]
        attr_accessor :location
      
        # The specific string that may be potentially sensitive info.
        # Corresponds to the JSON property `quote`
        # @return [String]
        attr_accessor :quote
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @info_type = args[:info_type] if args.key?(:info_type)
          @likelihood = args[:likelihood] if args.key?(:likelihood)
          @location = args[:location] if args.key?(:location)
          @quote = args[:quote] if args.key?(:quote)
        end
      end
      
      # Bounding box encompassing detected text within an image.
      class GooglePrivacyDlpV2beta1ImageLocation
        include Google::Apis::Core::Hashable
      
        # Height of the bounding box in pixels.
        # Corresponds to the JSON property `height`
        # @return [Fixnum]
        attr_accessor :height
      
        # Left coordinate of the bounding box. (0,0) is upper left.
        # Corresponds to the JSON property `left`
        # @return [Fixnum]
        attr_accessor :left
      
        # Top coordinate of the bounding box. (0,0) is upper left.
        # Corresponds to the JSON property `top`
        # @return [Fixnum]
        attr_accessor :top
      
        # Width of the bounding box in pixels.
        # Corresponds to the JSON property `width`
        # @return [Fixnum]
        attr_accessor :width
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @height = args[:height] if args.key?(:height)
          @left = args[:left] if args.key?(:left)
          @top = args[:top] if args.key?(:top)
          @width = args[:width] if args.key?(:width)
        end
      end
      
      # Configuration for determing how redaction of images should occur.
      class GooglePrivacyDlpV2beta1ImageRedactionConfig
        include Google::Apis::Core::Hashable
      
        # Type of information detected by the API.
        # Corresponds to the JSON property `infoType`
        # @return [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1InfoType]
        attr_accessor :info_type
      
        # If true, all text found in the image, regardless whether it matches an
        # info_type, is redacted.
        # Corresponds to the JSON property `redactAllText`
        # @return [Boolean]
        attr_accessor :redact_all_text
        alias_method :redact_all_text?, :redact_all_text
      
        # Represents a color in the RGB color space.
        # Corresponds to the JSON property `redactionColor`
        # @return [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1Color]
        attr_accessor :redaction_color
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @info_type = args[:info_type] if args.key?(:info_type)
          @redact_all_text = args[:redact_all_text] if args.key?(:redact_all_text)
          @redaction_color = args[:redaction_color] if args.key?(:redaction_color)
        end
      end
      
      # Type of information detected by the API.
      class GooglePrivacyDlpV2beta1InfoType
        include Google::Apis::Core::Hashable
      
        # Name of the information type.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Info type description.
      class GooglePrivacyDlpV2beta1InfoTypeDescription
        include Google::Apis::Core::Hashable
      
        # List of categories this info type belongs to.
        # Corresponds to the JSON property `categories`
        # @return [Array<Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1CategoryDescription>]
        attr_accessor :categories
      
        # Human readable form of the info type name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Internal name of the info type.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @categories = args[:categories] if args.key?(:categories)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Max findings configuration per info type, per content item or long running
      # operation.
      class GooglePrivacyDlpV2beta1InfoTypeLimit
        include Google::Apis::Core::Hashable
      
        # Type of information detected by the API.
        # Corresponds to the JSON property `infoType`
        # @return [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1InfoType]
        attr_accessor :info_type
      
        # Max findings limit for the given infoType.
        # Corresponds to the JSON property `maxFindings`
        # @return [Fixnum]
        attr_accessor :max_findings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @info_type = args[:info_type] if args.key?(:info_type)
          @max_findings = args[:max_findings] if args.key?(:max_findings)
        end
      end
      
      # Statistics regarding a specific InfoType.
      class GooglePrivacyDlpV2beta1InfoTypeStatistics
        include Google::Apis::Core::Hashable
      
        # Number of findings for this info type.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # Type of information detected by the API.
        # Corresponds to the JSON property `infoType`
        # @return [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1InfoType]
        attr_accessor :info_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @info_type = args[:info_type] if args.key?(:info_type)
        end
      end
      
      # Configuration description of the scanning process.
      # When used with redactContent only info_types and min_likelihood are currently
      # used.
      class GooglePrivacyDlpV2beta1InspectConfig
        include Google::Apis::Core::Hashable
      
        # When true, excludes type information of the findings.
        # Corresponds to the JSON property `excludeTypes`
        # @return [Boolean]
        attr_accessor :exclude_types
        alias_method :exclude_types?, :exclude_types
      
        # When true, a contextual quote from the data that triggered a finding is
        # included in the response; see Finding.quote.
        # Corresponds to the JSON property `includeQuote`
        # @return [Boolean]
        attr_accessor :include_quote
        alias_method :include_quote?, :include_quote
      
        # Configuration of findings limit given for specified info types.
        # Corresponds to the JSON property `infoTypeLimits`
        # @return [Array<Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1InfoTypeLimit>]
        attr_accessor :info_type_limits
      
        # Restricts what info_types to look for. The values must correspond to
        # InfoType values returned by ListInfoTypes or found in documentation.
        # Empty info_types runs all enabled detectors.
        # Corresponds to the JSON property `infoTypes`
        # @return [Array<Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1InfoType>]
        attr_accessor :info_types
      
        # Limits the number of findings per content item or long running operation.
        # Corresponds to the JSON property `maxFindings`
        # @return [Fixnum]
        attr_accessor :max_findings
      
        # Only returns findings equal or above this threshold.
        # Corresponds to the JSON property `minLikelihood`
        # @return [String]
        attr_accessor :min_likelihood
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exclude_types = args[:exclude_types] if args.key?(:exclude_types)
          @include_quote = args[:include_quote] if args.key?(:include_quote)
          @info_type_limits = args[:info_type_limits] if args.key?(:info_type_limits)
          @info_types = args[:info_types] if args.key?(:info_types)
          @max_findings = args[:max_findings] if args.key?(:max_findings)
          @min_likelihood = args[:min_likelihood] if args.key?(:min_likelihood)
        end
      end
      
      # Request to search for potentially sensitive info in a list of items.
      class GooglePrivacyDlpV2beta1InspectContentRequest
        include Google::Apis::Core::Hashable
      
        # Configuration description of the scanning process.
        # When used with redactContent only info_types and min_likelihood are currently
        # used.
        # Corresponds to the JSON property `inspectConfig`
        # @return [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1InspectConfig]
        attr_accessor :inspect_config
      
        # The list of items to inspect. Items in a single request are
        # considered "related" unless inspect_config.independent_inputs is true.
        # Up to 100 are allowed per request.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1ContentItem>]
        attr_accessor :items
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inspect_config = args[:inspect_config] if args.key?(:inspect_config)
          @items = args[:items] if args.key?(:items)
        end
      end
      
      # Results of inspecting a list of items.
      class GooglePrivacyDlpV2beta1InspectContentResponse
        include Google::Apis::Core::Hashable
      
        # Each content_item from the request has a result in this list, in the
        # same order as the request.
        # Corresponds to the JSON property `results`
        # @return [Array<Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1InspectResult>]
        attr_accessor :results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @results = args[:results] if args.key?(:results)
        end
      end
      
      # Metadata returned within GetOperation for an inspect request.
      class GooglePrivacyDlpV2beta1InspectOperationMetadata
        include Google::Apis::Core::Hashable
      
        # The time which this request was started.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # 
        # Corresponds to the JSON property `infoTypeStats`
        # @return [Array<Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1InfoTypeStatistics>]
        attr_accessor :info_type_stats
      
        # Total size in bytes that were processed.
        # Corresponds to the JSON property `processedBytes`
        # @return [Fixnum]
        attr_accessor :processed_bytes
      
        # Configuration description of the scanning process.
        # When used with redactContent only info_types and min_likelihood are currently
        # used.
        # Corresponds to the JSON property `requestInspectConfig`
        # @return [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1InspectConfig]
        attr_accessor :request_inspect_config
      
        # Cloud repository for storing output.
        # Corresponds to the JSON property `requestOutputConfig`
        # @return [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1OutputStorageConfig]
        attr_accessor :request_output_config
      
        # Shared message indicating Cloud storage type.
        # Corresponds to the JSON property `requestStorageConfig`
        # @return [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1StorageConfig]
        attr_accessor :request_storage_config
      
        # Estimate of the number of bytes to process.
        # Corresponds to the JSON property `totalEstimatedBytes`
        # @return [Fixnum]
        attr_accessor :total_estimated_bytes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @info_type_stats = args[:info_type_stats] if args.key?(:info_type_stats)
          @processed_bytes = args[:processed_bytes] if args.key?(:processed_bytes)
          @request_inspect_config = args[:request_inspect_config] if args.key?(:request_inspect_config)
          @request_output_config = args[:request_output_config] if args.key?(:request_output_config)
          @request_storage_config = args[:request_storage_config] if args.key?(:request_storage_config)
          @total_estimated_bytes = args[:total_estimated_bytes] if args.key?(:total_estimated_bytes)
        end
      end
      
      # The operational data.
      class GooglePrivacyDlpV2beta1InspectOperationResult
        include Google::Apis::Core::Hashable
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the
        # `name` should have the format of `inspect/results/`id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # All the findings for a single scanned item.
      class GooglePrivacyDlpV2beta1InspectResult
        include Google::Apis::Core::Hashable
      
        # List of findings for an item.
        # Corresponds to the JSON property `findings`
        # @return [Array<Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1Finding>]
        attr_accessor :findings
      
        # If true, then this item might have more findings than were returned,
        # and the findings returned are an arbitrary subset of all findings.
        # The findings list might be truncated because the input items were too
        # large, or because the server reached the maximum amount of resources
        # allowed for a single API call. For best results, divide the input into
        # smaller batches.
        # Corresponds to the JSON property `findingsTruncated`
        # @return [Boolean]
        attr_accessor :findings_truncated
        alias_method :findings_truncated?, :findings_truncated
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @findings = args[:findings] if args.key?(:findings)
          @findings_truncated = args[:findings_truncated] if args.key?(:findings_truncated)
        end
      end
      
      # A unique identifier for a Datastore entity.
      # If a key's partition ID or any of its path kinds or names are
      # reserved/read-only, the key is reserved/read-only.
      # A reserved/read-only key is forbidden in certain documented contexts.
      class GooglePrivacyDlpV2beta1Key
        include Google::Apis::Core::Hashable
      
        # Datastore partition ID.
        # A partition ID identifies a grouping of entities. The grouping is always
        # by project and namespace, however the namespace ID may be empty.
        # A partition ID contains several dimensions:
        # project ID and namespace ID.
        # Corresponds to the JSON property `partitionId`
        # @return [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1PartitionId]
        attr_accessor :partition_id
      
        # The entity path.
        # An entity path consists of one or more elements composed of a kind and a
        # string or numerical identifier, which identify entities. The first
        # element identifies a _root entity_, the second element identifies
        # a _child_ of the root entity, the third element identifies a child of the
        # second entity, and so forth. The entities identified by all prefixes of
        # the path are called the element's _ancestors_.
        # A path can never be empty, and a path can have at most 100 elements.
        # Corresponds to the JSON property `path`
        # @return [Array<Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1PathElement>]
        attr_accessor :path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @partition_id = args[:partition_id] if args.key?(:partition_id)
          @path = args[:path] if args.key?(:path)
        end
      end
      
      # A representation of a Datastore kind.
      class GooglePrivacyDlpV2beta1KindExpression
        include Google::Apis::Core::Hashable
      
        # The name of the kind.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Response to the ListInfoTypes request.
      class GooglePrivacyDlpV2beta1ListInfoTypesResponse
        include Google::Apis::Core::Hashable
      
        # Set of sensitive info types belonging to a category.
        # Corresponds to the JSON property `infoTypes`
        # @return [Array<Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1InfoTypeDescription>]
        attr_accessor :info_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @info_types = args[:info_types] if args.key?(:info_types)
        end
      end
      
      # Response to the ListInspectFindings request.
      class GooglePrivacyDlpV2beta1ListInspectFindingsResponse
        include Google::Apis::Core::Hashable
      
        # If not empty, indicates that there may be more results that match the
        # request; this value should be passed in a new `ListInspectFindingsRequest`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # All the findings for a single scanned item.
        # Corresponds to the JSON property `result`
        # @return [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1InspectResult]
        attr_accessor :result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @result = args[:result] if args.key?(:result)
        end
      end
      
      # Response for ListRootCategories request.
      class GooglePrivacyDlpV2beta1ListRootCategoriesResponse
        include Google::Apis::Core::Hashable
      
        # List of all into type categories supported by the API.
        # Corresponds to the JSON property `categories`
        # @return [Array<Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1CategoryDescription>]
        attr_accessor :categories
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @categories = args[:categories] if args.key?(:categories)
        end
      end
      
      # Specifies the location of a finding within its source item.
      class GooglePrivacyDlpV2beta1Location
        include Google::Apis::Core::Hashable
      
        # Generic half-open interval [start, end)
        # Corresponds to the JSON property `byteRange`
        # @return [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1Range]
        attr_accessor :byte_range
      
        # Generic half-open interval [start, end)
        # Corresponds to the JSON property `codepointRange`
        # @return [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1Range]
        attr_accessor :codepoint_range
      
        # General identifier of a data field in a storage service.
        # Corresponds to the JSON property `fieldId`
        # @return [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1FieldId]
        attr_accessor :field_id
      
        # Location within an image's pixels.
        # Corresponds to the JSON property `imageBoxes`
        # @return [Array<Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1ImageLocation>]
        attr_accessor :image_boxes
      
        # Message for a unique key indicating a record that contains a finding.
        # Corresponds to the JSON property `recordKey`
        # @return [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1RecordKey]
        attr_accessor :record_key
      
        # Location of a finding within a `ContentItem.Table`.
        # Corresponds to the JSON property `tableLocation`
        # @return [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1TableLocation]
        attr_accessor :table_location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @byte_range = args[:byte_range] if args.key?(:byte_range)
          @codepoint_range = args[:codepoint_range] if args.key?(:codepoint_range)
          @field_id = args[:field_id] if args.key?(:field_id)
          @image_boxes = args[:image_boxes] if args.key?(:image_boxes)
          @record_key = args[:record_key] if args.key?(:record_key)
          @table_location = args[:table_location] if args.key?(:table_location)
        end
      end
      
      # Additional configuration for inspect long running operations.
      class GooglePrivacyDlpV2beta1OperationConfig
        include Google::Apis::Core::Hashable
      
        # Max number of findings per file, Datastore entity, or database row.
        # Corresponds to the JSON property `maxItemFindings`
        # @return [Fixnum]
        attr_accessor :max_item_findings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_item_findings = args[:max_item_findings] if args.key?(:max_item_findings)
        end
      end
      
      # Cloud repository for storing output.
      class GooglePrivacyDlpV2beta1OutputStorageConfig
        include Google::Apis::Core::Hashable
      
        # A location in Cloud Storage.
        # Corresponds to the JSON property `storagePath`
        # @return [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1CloudStoragePath]
        attr_accessor :storage_path
      
        # Message defining the location of a BigQuery table. A table is uniquely
        # identified  by its project_id, dataset_id, and table_name. Within a query
        # a table is often referenced with a string in the format of:
        # `<project_id>:<dataset_id>.<table_id>` or
        # `<project_id>.<dataset_id>.<table_id>`.
        # Corresponds to the JSON property `table`
        # @return [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1BigQueryTable]
        attr_accessor :table
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @storage_path = args[:storage_path] if args.key?(:storage_path)
          @table = args[:table] if args.key?(:table)
        end
      end
      
      # Datastore partition ID.
      # A partition ID identifies a grouping of entities. The grouping is always
      # by project and namespace, however the namespace ID may be empty.
      # A partition ID contains several dimensions:
      # project ID and namespace ID.
      class GooglePrivacyDlpV2beta1PartitionId
        include Google::Apis::Core::Hashable
      
        # If not empty, the ID of the namespace to which the entities belong.
        # Corresponds to the JSON property `namespaceId`
        # @return [String]
        attr_accessor :namespace_id
      
        # The ID of the project to which the entities belong.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @namespace_id = args[:namespace_id] if args.key?(:namespace_id)
          @project_id = args[:project_id] if args.key?(:project_id)
        end
      end
      
      # A (kind, ID/name) pair used to construct a key path.
      # If either name or ID is set, the element is complete.
      # If neither is set, the element is incomplete.
      class GooglePrivacyDlpV2beta1PathElement
        include Google::Apis::Core::Hashable
      
        # The auto-allocated ID of the entity.
        # Never equal to zero. Values less than zero are discouraged and may not
        # be supported in the future.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # The kind of the entity.
        # A kind matching regex `__.*__` is reserved/read-only.
        # A kind must not contain more than 1500 bytes when UTF-8 encoded.
        # Cannot be `""`.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The name of the entity.
        # A name matching regex `__.*__` is reserved/read-only.
        # A name must not be more than 1500 bytes when UTF-8 encoded.
        # Cannot be `""`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A representation of a Datastore property in a projection.
      class GooglePrivacyDlpV2beta1Projection
        include Google::Apis::Core::Hashable
      
        # A reference to a property relative to the Datastore kind expressions.
        # Corresponds to the JSON property `property`
        # @return [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1PropertyReference]
        attr_accessor :property
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @property = args[:property] if args.key?(:property)
        end
      end
      
      # A reference to a property relative to the Datastore kind expressions.
      class GooglePrivacyDlpV2beta1PropertyReference
        include Google::Apis::Core::Hashable
      
        # The name of the property.
        # If name includes "."s, it may be interpreted as a property name path.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Generic half-open interval [start, end)
      class GooglePrivacyDlpV2beta1Range
        include Google::Apis::Core::Hashable
      
        # Index of the last character of the range (exclusive).
        # Corresponds to the JSON property `end`
        # @return [Fixnum]
        attr_accessor :end
      
        # Index of the first character of the range (inclusive).
        # Corresponds to the JSON property `start`
        # @return [Fixnum]
        attr_accessor :start
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end = args[:end] if args.key?(:end)
          @start = args[:start] if args.key?(:start)
        end
      end
      
      # Message for a unique key indicating a record that contains a finding.
      class GooglePrivacyDlpV2beta1RecordKey
        include Google::Apis::Core::Hashable
      
        # Record key for a finding in a Cloud Storage file.
        # Corresponds to the JSON property `cloudStorageKey`
        # @return [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1CloudStorageKey]
        attr_accessor :cloud_storage_key
      
        # Record key for a finding in Cloud Datastore.
        # Corresponds to the JSON property `datastoreKey`
        # @return [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1DatastoreKey]
        attr_accessor :datastore_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_storage_key = args[:cloud_storage_key] if args.key?(:cloud_storage_key)
          @datastore_key = args[:datastore_key] if args.key?(:datastore_key)
        end
      end
      
      # Request to search for potentially sensitive info in a list of items
      # and replace it with a default or provided content.
      class GooglePrivacyDlpV2beta1RedactContentRequest
        include Google::Apis::Core::Hashable
      
        # The configuration for specifying what content to redact from images.
        # Corresponds to the JSON property `imageRedactionConfigs`
        # @return [Array<Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1ImageRedactionConfig>]
        attr_accessor :image_redaction_configs
      
        # Configuration description of the scanning process.
        # When used with redactContent only info_types and min_likelihood are currently
        # used.
        # Corresponds to the JSON property `inspectConfig`
        # @return [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1InspectConfig]
        attr_accessor :inspect_config
      
        # The list of items to inspect. Up to 100 are allowed per request.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1ContentItem>]
        attr_accessor :items
      
        # The strings to replace findings text findings with. Must specify at least
        # one of these or one ImageRedactionConfig if redacting images.
        # Corresponds to the JSON property `replaceConfigs`
        # @return [Array<Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1ReplaceConfig>]
        attr_accessor :replace_configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @image_redaction_configs = args[:image_redaction_configs] if args.key?(:image_redaction_configs)
          @inspect_config = args[:inspect_config] if args.key?(:inspect_config)
          @items = args[:items] if args.key?(:items)
          @replace_configs = args[:replace_configs] if args.key?(:replace_configs)
        end
      end
      
      # Results of redacting a list of items.
      class GooglePrivacyDlpV2beta1RedactContentResponse
        include Google::Apis::Core::Hashable
      
        # The redacted content.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1ContentItem>]
        attr_accessor :items
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
        end
      end
      
      # 
      class GooglePrivacyDlpV2beta1ReplaceConfig
        include Google::Apis::Core::Hashable
      
        # Type of information detected by the API.
        # Corresponds to the JSON property `infoType`
        # @return [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1InfoType]
        attr_accessor :info_type
      
        # Content replacing sensitive information of given type. Max 256 chars.
        # Corresponds to the JSON property `replaceWith`
        # @return [String]
        attr_accessor :replace_with
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @info_type = args[:info_type] if args.key?(:info_type)
          @replace_with = args[:replace_with] if args.key?(:replace_with)
        end
      end
      
      # 
      class GooglePrivacyDlpV2beta1Row
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `values`
        # @return [Array<Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1Value>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Shared message indicating Cloud storage type.
      class GooglePrivacyDlpV2beta1StorageConfig
        include Google::Apis::Core::Hashable
      
        # Options defining BigQuery table and row identifiers.
        # Corresponds to the JSON property `bigQueryOptions`
        # @return [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1BigQueryOptions]
        attr_accessor :big_query_options
      
        # Options defining a file or a set of files (path ending with *) within
        # a Google Cloud Storage bucket.
        # Corresponds to the JSON property `cloudStorageOptions`
        # @return [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1CloudStorageOptions]
        attr_accessor :cloud_storage_options
      
        # Options defining a data set within Google Cloud Datastore.
        # Corresponds to the JSON property `datastoreOptions`
        # @return [Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1DatastoreOptions]
        attr_accessor :datastore_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @big_query_options = args[:big_query_options] if args.key?(:big_query_options)
          @cloud_storage_options = args[:cloud_storage_options] if args.key?(:cloud_storage_options)
          @datastore_options = args[:datastore_options] if args.key?(:datastore_options)
        end
      end
      
      # Structured content to inspect. Up to 50,000 `Value`s per request allowed.
      class GooglePrivacyDlpV2beta1Table
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `headers`
        # @return [Array<Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1FieldId>]
        attr_accessor :headers
      
        # 
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1Row>]
        attr_accessor :rows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @headers = args[:headers] if args.key?(:headers)
          @rows = args[:rows] if args.key?(:rows)
        end
      end
      
      # Location of a finding within a `ContentItem.Table`.
      class GooglePrivacyDlpV2beta1TableLocation
        include Google::Apis::Core::Hashable
      
        # The zero-based index of the row where the finding is located.
        # Corresponds to the JSON property `rowIndex`
        # @return [Fixnum]
        attr_accessor :row_index
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @row_index = args[:row_index] if args.key?(:row_index)
        end
      end
      
      # Set of primitive values supported by the system.
      class GooglePrivacyDlpV2beta1Value
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `booleanValue`
        # @return [Boolean]
        attr_accessor :boolean_value
        alias_method :boolean_value?, :boolean_value
      
        # Represents a whole calendar date, e.g. date of birth. The time of day and
        # time zone are either specified elsewhere or are not significant. The date
        # is relative to the Proleptic Gregorian Calendar. The day may be 0 to
        # represent a year and month where the day is not significant, e.g. credit card
        # expiration date. The year may be 0 to represent a month and day independent
        # of year, e.g. anniversary date. Related types are google.type.TimeOfDay
        # and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `dateValue`
        # @return [Google::Apis::DlpV2beta1::GoogleTypeDate]
        attr_accessor :date_value
      
        # 
        # Corresponds to the JSON property `floatValue`
        # @return [Float]
        attr_accessor :float_value
      
        # 
        # Corresponds to the JSON property `integerValue`
        # @return [Fixnum]
        attr_accessor :integer_value
      
        # 
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        # Represents a time of day. The date and time zone are either not significant
        # or are specified elsewhere. An API may choose to allow leap seconds. Related
        # types are google.type.Date and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `timeValue`
        # @return [Google::Apis::DlpV2beta1::GoogleTypeTimeOfDay]
        attr_accessor :time_value
      
        # 
        # Corresponds to the JSON property `timestampValue`
        # @return [String]
        attr_accessor :timestamp_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @boolean_value = args[:boolean_value] if args.key?(:boolean_value)
          @date_value = args[:date_value] if args.key?(:date_value)
          @float_value = args[:float_value] if args.key?(:float_value)
          @integer_value = args[:integer_value] if args.key?(:integer_value)
          @string_value = args[:string_value] if args.key?(:string_value)
          @time_value = args[:time_value] if args.key?(:time_value)
          @timestamp_value = args[:timestamp_value] if args.key?(:timestamp_value)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated
      # empty messages in your APIs. A typical example is to use it as the request
      # or the response type of an API method. For instance:
      # service Foo `
      # rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
      # `
      # The JSON representation for `Empty` is empty JSON object ````.
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
      # programming environments, including REST APIs and RPC APIs. It is used by
      # [gRPC](https://github.com/grpc). The error model is designed to be:
      # - Simple to use and understand for most users
      # - Flexible enough to meet unexpected needs
      # # Overview
      # The `Status` message contains three pieces of data: error code, error message,
      # and error details. The error code should be an enum value of
      # google.rpc.Code, but it may accept additional error codes if needed.  The
      # error message should be a developer-facing English message that helps
      # developers *understand* and *resolve* the error. If a localized user-facing
      # error message is needed, put the localized message in the error details or
      # localize it in the client. The optional error details may contain arbitrary
      # information about the error. There is a predefined set of error detail types
      # in the package `google.rpc` that can be used for common error conditions.
      # # Language mapping
      # The `Status` message is the logical representation of the error model, but it
      # is not necessarily the actual wire format. When the `Status` message is
      # exposed in different client libraries and different wire protocols, it can be
      # mapped differently. For example, it will likely be mapped to some exceptions
      # in Java, but more likely mapped to some error codes in C.
      # # Other uses
      # The error model and the `Status` message can be used in a variety of
      # environments, either with or without APIs, to provide a
      # consistent developer experience across different environments.
      # Example uses of this error model include:
      # - Partial errors. If a service needs to return partial errors to the client,
      # it may embed the `Status` in the normal response to indicate the partial
      # errors.
      # - Workflow errors. A typical workflow has multiple steps. Each step may
      # have a `Status` message for error reporting.
      # - Batch operations. If a client uses batch request and batch response, the
      # `Status` message should be used directly inside batch response, one for
      # each error sub-response.
      # - Asynchronous operations. If an API call embeds asynchronous operation
      # results in its response, the status of those operations should be
      # represented directly using the `Status` message.
      # - Logging. If some API errors are stored in logs, the message `Status` could
      # be used directly after any stripping needed for security/privacy reasons.
      class GoogleRpcStatus
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details.  There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any
        # user-facing error message should be localized and sent in the
        # google.rpc.Status.details field, or localized by the client.
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
      
      # Represents a whole calendar date, e.g. date of birth. The time of day and
      # time zone are either specified elsewhere or are not significant. The date
      # is relative to the Proleptic Gregorian Calendar. The day may be 0 to
      # represent a year and month where the day is not significant, e.g. credit card
      # expiration date. The year may be 0 to represent a month and day independent
      # of year, e.g. anniversary date. Related types are google.type.TimeOfDay
      # and `google.protobuf.Timestamp`.
      class GoogleTypeDate
        include Google::Apis::Core::Hashable
      
        # Day of month. Must be from 1 to 31 and valid for the year and month, or 0
        # if specifying a year/month where the day is not significant.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Month of year. Must be from 1 to 12.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Year of date. Must be from 1 to 9999, or 0 if specifying a date without
        # a year.
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
      
      # Represents a time of day. The date and time zone are either not significant
      # or are specified elsewhere. An API may choose to allow leap seconds. Related
      # types are google.type.Date and `google.protobuf.Timestamp`.
      class GoogleTypeTimeOfDay
        include Google::Apis::Core::Hashable
      
        # Hours of day in 24 hour format. Should be from 0 to 23. An API may choose
        # to allow the value "24:00:00" for scenarios like business closing time.
        # Corresponds to the JSON property `hours`
        # @return [Fixnum]
        attr_accessor :hours
      
        # Minutes of hour of day. Must be from 0 to 59.
        # Corresponds to the JSON property `minutes`
        # @return [Fixnum]
        attr_accessor :minutes
      
        # Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # Seconds of minutes of the time. Must normally be from 0 to 59. An API may
        # allow the value 60 if it allows leap-seconds.
        # Corresponds to the JSON property `seconds`
        # @return [Fixnum]
        attr_accessor :seconds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hours = args[:hours] if args.key?(:hours)
          @minutes = args[:minutes] if args.key?(:minutes)
          @nanos = args[:nanos] if args.key?(:nanos)
          @seconds = args[:seconds] if args.key?(:seconds)
        end
      end
    end
  end
end
