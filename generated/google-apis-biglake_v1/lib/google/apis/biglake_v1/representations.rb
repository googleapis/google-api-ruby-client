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
      
      class Catalog
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Database
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HiveDatabaseOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HiveTableOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCatalogsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDatabasesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListTablesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RenameTableRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SerDeInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StorageDescriptor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Table
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Catalog
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :delete_time, as: 'deleteTime'
          property :expire_time, as: 'expireTime'
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
        end
      end
      
      class Database
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :delete_time, as: 'deleteTime'
          property :expire_time, as: 'expireTime'
          property :hive_options, as: 'hiveOptions', class: Google::Apis::BiglakeV1::HiveDatabaseOptions, decorator: Google::Apis::BiglakeV1::HiveDatabaseOptions::Representation
      
          property :name, as: 'name'
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
        end
      end
      
      class HiveDatabaseOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location_uri, as: 'locationUri'
          hash :parameters, as: 'parameters'
        end
      end
      
      class HiveTableOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :parameters, as: 'parameters'
          property :storage_descriptor, as: 'storageDescriptor', class: Google::Apis::BiglakeV1::StorageDescriptor, decorator: Google::Apis::BiglakeV1::StorageDescriptor::Representation
      
          property :table_type, as: 'tableType'
        end
      end
      
      class ListCatalogsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :catalogs, as: 'catalogs', class: Google::Apis::BiglakeV1::Catalog, decorator: Google::Apis::BiglakeV1::Catalog::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListDatabasesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :databases, as: 'databases', class: Google::Apis::BiglakeV1::Database, decorator: Google::Apis::BiglakeV1::Database::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListTablesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :tables, as: 'tables', class: Google::Apis::BiglakeV1::Table, decorator: Google::Apis::BiglakeV1::Table::Representation
      
        end
      end
      
      class RenameTableRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :new_name, as: 'newName'
        end
      end
      
      class SerDeInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :serialization_lib, as: 'serializationLib'
        end
      end
      
      class StorageDescriptor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input_format, as: 'inputFormat'
          property :location_uri, as: 'locationUri'
          property :output_format, as: 'outputFormat'
          property :serde_info, as: 'serdeInfo', class: Google::Apis::BiglakeV1::SerDeInfo, decorator: Google::Apis::BiglakeV1::SerDeInfo::Representation
      
        end
      end
      
      class Table
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :delete_time, as: 'deleteTime'
          property :etag, as: 'etag'
          property :expire_time, as: 'expireTime'
          property :hive_options, as: 'hiveOptions', class: Google::Apis::BiglakeV1::HiveTableOptions, decorator: Google::Apis::BiglakeV1::HiveTableOptions::Representation
      
          property :name, as: 'name'
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
        end
      end
    end
  end
end
