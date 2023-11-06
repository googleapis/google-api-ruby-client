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
    module BiglakeV1
      
      # Catalog is the container of databases.
      class Catalog
        include Google::Apis::Core::Hashable
      
        # Output only. The creation time of the catalog.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The deletion time of the catalog. Only set after the catalog is
        # deleted.
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # Output only. The time when this catalog is considered expired. Only set after
        # the catalog is deleted.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # Output only. The resource name. Format: projects/`project_id_or_number`/
        # locations/`location_id`/catalogs/`catalog_id`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The last modification time of the catalog.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Database is the container of tables.
      class Database
        include Google::Apis::Core::Hashable
      
        # Output only. The creation time of the database.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The deletion time of the database. Only set after the database is
        # deleted.
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # Output only. The time when this database is considered expired. Only set after
        # the database is deleted.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # Options of a Hive database.
        # Corresponds to the JSON property `hiveOptions`
        # @return [Google::Apis::BiglakeV1::HiveDatabaseOptions]
        attr_accessor :hive_options
      
        # Output only. The resource name. Format: projects/`project_id_or_number`/
        # locations/`location_id`/catalogs/`catalog_id`/databases/`database_id`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The database type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Output only. The last modification time of the database.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @hive_options = args[:hive_options] if args.key?(:hive_options)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Options of a Hive database.
      class HiveDatabaseOptions
        include Google::Apis::Core::Hashable
      
        # Cloud Storage folder URI where the database data is stored, starting with "gs:/
        # /".
        # Corresponds to the JSON property `locationUri`
        # @return [String]
        attr_accessor :location_uri
      
        # Stores user supplied Hive database parameters.
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,String>]
        attr_accessor :parameters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location_uri = args[:location_uri] if args.key?(:location_uri)
          @parameters = args[:parameters] if args.key?(:parameters)
        end
      end
      
      # Options of a Hive table.
      class HiveTableOptions
        include Google::Apis::Core::Hashable
      
        # Stores user supplied Hive table parameters.
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,String>]
        attr_accessor :parameters
      
        # Stores physical storage information of the data.
        # Corresponds to the JSON property `storageDescriptor`
        # @return [Google::Apis::BiglakeV1::StorageDescriptor]
        attr_accessor :storage_descriptor
      
        # Hive table type. For example, MANAGED_TABLE, EXTERNAL_TABLE.
        # Corresponds to the JSON property `tableType`
        # @return [String]
        attr_accessor :table_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parameters = args[:parameters] if args.key?(:parameters)
          @storage_descriptor = args[:storage_descriptor] if args.key?(:storage_descriptor)
          @table_type = args[:table_type] if args.key?(:table_type)
        end
      end
      
      # Response message for the ListCatalogs method.
      class ListCatalogsResponse
        include Google::Apis::Core::Hashable
      
        # The catalogs from the specified project.
        # Corresponds to the JSON property `catalogs`
        # @return [Array<Google::Apis::BiglakeV1::Catalog>]
        attr_accessor :catalogs
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
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
      
      # Response message for the ListDatabases method.
      class ListDatabasesResponse
        include Google::Apis::Core::Hashable
      
        # The databases from the specified catalog.
        # Corresponds to the JSON property `databases`
        # @return [Array<Google::Apis::BiglakeV1::Database>]
        attr_accessor :databases
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @databases = args[:databases] if args.key?(:databases)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for the ListTables method.
      class ListTablesResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The tables from the specified database.
        # Corresponds to the JSON property `tables`
        # @return [Array<Google::Apis::BiglakeV1::Table>]
        attr_accessor :tables
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @tables = args[:tables] if args.key?(:tables)
        end
      end
      
      # Request message for the RenameTable method in MetastoreService
      class RenameTableRequest
        include Google::Apis::Core::Hashable
      
        # Required. The new `name` for the specified table, must be in the same database.
        # Format: projects/`project_id_or_number`/locations/`location_id`/catalogs/`
        # catalog_id`/databases/`database_id`/tables/`table_id`
        # Corresponds to the JSON property `newName`
        # @return [String]
        attr_accessor :new_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @new_name = args[:new_name] if args.key?(:new_name)
        end
      end
      
      # Serializer and deserializer information.
      class SerDeInfo
        include Google::Apis::Core::Hashable
      
        # The fully qualified Java class name of the serialization library.
        # Corresponds to the JSON property `serializationLib`
        # @return [String]
        attr_accessor :serialization_lib
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @serialization_lib = args[:serialization_lib] if args.key?(:serialization_lib)
        end
      end
      
      # Stores physical storage information of the data.
      class StorageDescriptor
        include Google::Apis::Core::Hashable
      
        # The fully qualified Java class name of the input format.
        # Corresponds to the JSON property `inputFormat`
        # @return [String]
        attr_accessor :input_format
      
        # Cloud Storage folder URI where the table data is stored, starting with "gs://".
        # Corresponds to the JSON property `locationUri`
        # @return [String]
        attr_accessor :location_uri
      
        # The fully qualified Java class name of the output format.
        # Corresponds to the JSON property `outputFormat`
        # @return [String]
        attr_accessor :output_format
      
        # Serializer and deserializer information.
        # Corresponds to the JSON property `serdeInfo`
        # @return [Google::Apis::BiglakeV1::SerDeInfo]
        attr_accessor :serde_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @input_format = args[:input_format] if args.key?(:input_format)
          @location_uri = args[:location_uri] if args.key?(:location_uri)
          @output_format = args[:output_format] if args.key?(:output_format)
          @serde_info = args[:serde_info] if args.key?(:serde_info)
        end
      end
      
      # Represents a table.
      class Table
        include Google::Apis::Core::Hashable
      
        # Output only. The creation time of the table.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The deletion time of the table. Only set after the table is
        # deleted.
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # The checksum of a table object computed by the server based on the value of
        # other fields. It may be sent on update requests to ensure the client has an up-
        # to-date value before proceeding. It is only checked for update table
        # operations.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Output only. The time when this table is considered expired. Only set after
        # the table is deleted.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # Options of a Hive table.
        # Corresponds to the JSON property `hiveOptions`
        # @return [Google::Apis::BiglakeV1::HiveTableOptions]
        attr_accessor :hive_options
      
        # Output only. The resource name. Format: projects/`project_id_or_number`/
        # locations/`location_id`/catalogs/`catalog_id`/databases/`database_id`/tables/`
        # table_id`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The table type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Output only. The last modification time of the table.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @etag = args[:etag] if args.key?(:etag)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @hive_options = args[:hive_options] if args.key?(:hive_options)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
    end
  end
end
