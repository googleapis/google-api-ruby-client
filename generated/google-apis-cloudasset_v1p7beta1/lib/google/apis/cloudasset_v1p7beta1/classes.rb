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
    module CloudassetV1p7beta1
      
      # A BigQuery destination for exporting assets to.
      class BigQueryDestination
        include Google::Apis::Core::Hashable
      
        # Required. The BigQuery dataset in format "projects/projectId/datasets/
        # datasetId", to which the snapshot result should be exported. If this dataset
        # does not exist, the export call returns an INVALID_ARGUMENT error.
        # Corresponds to the JSON property `dataset`
        # @return [String]
        attr_accessor :dataset
      
        # If the destination table already exists and this flag is `TRUE`, the table
        # will be overwritten by the contents of assets snapshot. If the flag is `FALSE`
        # or unset and the destination table already exists, the export call returns an
        # INVALID_ARGUMEMT error.
        # Corresponds to the JSON property `force`
        # @return [Boolean]
        attr_accessor :force
        alias_method :force?, :force
      
        # Specifications of BigQuery partitioned table as export destination.
        # Corresponds to the JSON property `partitionSpec`
        # @return [Google::Apis::CloudassetV1p7beta1::PartitionSpec]
        attr_accessor :partition_spec
      
        # If this flag is `TRUE`, the snapshot results will be written to one or
        # multiple tables, each of which contains results of one asset type. The [force]
        # and [partition_spec] fields will apply to each of them. Field [table] will be
        # concatenated with "_" and the asset type names (see https://cloud.google.com/
        # asset-inventory/docs/supported-asset-types for supported asset types) to
        # construct per-asset-type table names, in which all non-alphanumeric characters
        # like "." and "/" will be substituted by "_". Example: if field [table] is "
        # mytable" and snapshot results contain "storage.googleapis.com/Bucket" assets,
        # the corresponding table name will be "mytable_storage_googleapis_com_Bucket".
        # If any of these tables does not exist, a new table with the concatenated name
        # will be created. When [content_type] in the ExportAssetsRequest is `RESOURCE`,
        # the schema of each table will include RECORD-type columns mapped to the nested
        # fields in the Asset.resource.data field of that asset type (up to the 15
        # nested level BigQuery supports (https://cloud.google.com/bigquery/docs/nested-
        # repeated#limitations)). The fields in >15 nested levels will be stored in JSON
        # format string as a child column of its parent RECORD column. If error occurs
        # when exporting to any table, the whole export call will return an error but
        # the export results that already succeed will persist. Example: if exporting to
        # table_type_A succeeds when exporting to table_type_B fails during one export
        # call, the results in table_type_A will persist and there will not be partial
        # results persisting in a table.
        # Corresponds to the JSON property `separateTablesPerAssetType`
        # @return [Boolean]
        attr_accessor :separate_tables_per_asset_type
        alias_method :separate_tables_per_asset_type?, :separate_tables_per_asset_type
      
        # Required. The BigQuery table to which the snapshot result should be written.
        # If this table does not exist, a new table with the given name will be created.
        # Corresponds to the JSON property `table`
        # @return [String]
        attr_accessor :table
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset = args[:dataset] if args.key?(:dataset)
          @force = args[:force] if args.key?(:force)
          @partition_spec = args[:partition_spec] if args.key?(:partition_spec)
          @separate_tables_per_asset_type = args[:separate_tables_per_asset_type] if args.key?(:separate_tables_per_asset_type)
          @table = args[:table] if args.key?(:table)
        end
      end
      
      # Export asset request.
      class ExportAssetsRequest
        include Google::Apis::Core::Hashable
      
        # A list of asset types to take a snapshot for. For example: "compute.googleapis.
        # com/Disk". Regular expressions are also supported. For example: * "compute.
        # googleapis.com.*" snapshots resources whose asset type starts with "compute.
        # googleapis.com". * ".*Instance" snapshots resources whose asset type ends with
        # "Instance". * ".*Instance.*" snapshots resources whose asset type contains "
        # Instance". See [RE2](https://github.com/google/re2/wiki/Syntax) for all
        # supported regular expression syntax. If the regular expression does not match
        # any supported asset type, an INVALID_ARGUMENT error will be returned. If
        # specified, only matching assets will be returned, otherwise, it will snapshot
        # all asset types. See [Introduction to Cloud Asset Inventory](https://cloud.
        # google.com/asset-inventory/docs/overview) for all supported asset types.
        # Corresponds to the JSON property `assetTypes`
        # @return [Array<String>]
        attr_accessor :asset_types
      
        # Asset content type. If not specified, no content but the asset name will be
        # returned.
        # Corresponds to the JSON property `contentType`
        # @return [String]
        attr_accessor :content_type
      
        # Output configuration for export assets destination.
        # Corresponds to the JSON property `outputConfig`
        # @return [Google::Apis::CloudassetV1p7beta1::OutputConfig]
        attr_accessor :output_config
      
        # Timestamp to take an asset snapshot. This can only be set to a timestamp
        # between the current time and the current time minus 35 days (inclusive). If
        # not specified, the current time will be used. Due to delays in resource data
        # collection and indexing, there is a volatile window during which running the
        # same query may get different results.
        # Corresponds to the JSON property `readTime`
        # @return [String]
        attr_accessor :read_time
      
        # A list of relationship types to export, for example: `
        # INSTANCE_TO_INSTANCEGROUP`. This field should only be specified if
        # content_type=RELATIONSHIP. If specified, it will snapshot [asset_types]'
        # specified relationships, or give errors if any relationship_types' supported
        # types are not in [asset_types]. If not specified, it will snapshot all [
        # asset_types]' supported relationships. An unspecified [asset_types] field
        # means all supported asset_types. See [Introduction to Cloud Asset Inventory](
        # https://cloud.google.com/asset-inventory/docs/overview) for all supported
        # asset types and relationship types.
        # Corresponds to the JSON property `relationshipTypes`
        # @return [Array<String>]
        attr_accessor :relationship_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset_types = args[:asset_types] if args.key?(:asset_types)
          @content_type = args[:content_type] if args.key?(:content_type)
          @output_config = args[:output_config] if args.key?(:output_config)
          @read_time = args[:read_time] if args.key?(:read_time)
          @relationship_types = args[:relationship_types] if args.key?(:relationship_types)
        end
      end
      
      # A Cloud Storage location.
      class GcsDestination
        include Google::Apis::Core::Hashable
      
        # The uri of the Cloud Storage object. It's the same uri that is used by gsutil.
        # Example: "gs://bucket_name/object_name". See [Viewing and Editing Object
        # Metadata](https://cloud.google.com/storage/docs/viewing-editing-metadata) for
        # more information.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        # The uri prefix of all generated Cloud Storage objects. Example: "gs://
        # bucket_name/object_name_prefix". Each object uri is in format: "gs://
        # bucket_name/object_name_prefix/`ASSET_TYPE`/`SHARD_NUMBER` and only contains
        # assets for that type. starts from 0. Example: "gs://bucket_name/
        # object_name_prefix/compute.googleapis.com/Disk/0" is the first shard of output
        # objects containing all compute.googleapis.com/Disk assets. An INVALID_ARGUMENT
        # error will be returned if file with the same name "gs://bucket_name/
        # object_name_prefix" already exists.
        # Corresponds to the JSON property `uriPrefix`
        # @return [String]
        attr_accessor :uri_prefix
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @uri = args[:uri] if args.key?(:uri)
          @uri_prefix = args[:uri_prefix] if args.key?(:uri_prefix)
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
        # @return [Google::Apis::CloudassetV1p7beta1::Status]
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
      
      # Output configuration for export assets destination.
      class OutputConfig
        include Google::Apis::Core::Hashable
      
        # A BigQuery destination for exporting assets to.
        # Corresponds to the JSON property `bigqueryDestination`
        # @return [Google::Apis::CloudassetV1p7beta1::BigQueryDestination]
        attr_accessor :bigquery_destination
      
        # A Cloud Storage location.
        # Corresponds to the JSON property `gcsDestination`
        # @return [Google::Apis::CloudassetV1p7beta1::GcsDestination]
        attr_accessor :gcs_destination
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bigquery_destination = args[:bigquery_destination] if args.key?(:bigquery_destination)
          @gcs_destination = args[:gcs_destination] if args.key?(:gcs_destination)
        end
      end
      
      # Specifications of BigQuery partitioned table as export destination.
      class PartitionSpec
        include Google::Apis::Core::Hashable
      
        # The partition key for BigQuery partitioned table.
        # Corresponds to the JSON property `partitionKey`
        # @return [String]
        attr_accessor :partition_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @partition_key = args[:partition_key] if args.key?(:partition_key)
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
