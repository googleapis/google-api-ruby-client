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
      
      class BigQueryDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExportAssetsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GcsDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OutputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PartitionSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BigQueryDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset, as: 'dataset'
          property :force, as: 'force'
          property :partition_spec, as: 'partitionSpec', class: Google::Apis::CloudassetV1p7beta1::PartitionSpec, decorator: Google::Apis::CloudassetV1p7beta1::PartitionSpec::Representation
      
          property :separate_tables_per_asset_type, as: 'separateTablesPerAssetType'
          property :table, as: 'table'
        end
      end
      
      class ExportAssetsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :asset_types, as: 'assetTypes'
          property :content_type, as: 'contentType'
          property :output_config, as: 'outputConfig', class: Google::Apis::CloudassetV1p7beta1::OutputConfig, decorator: Google::Apis::CloudassetV1p7beta1::OutputConfig::Representation
      
          property :read_time, as: 'readTime'
          collection :relationship_types, as: 'relationshipTypes'
        end
      end
      
      class GcsDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri, as: 'uri'
          property :uri_prefix, as: 'uriPrefix'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::CloudassetV1p7beta1::Status, decorator: Google::Apis::CloudassetV1p7beta1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OutputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_destination, as: 'bigqueryDestination', class: Google::Apis::CloudassetV1p7beta1::BigQueryDestination, decorator: Google::Apis::CloudassetV1p7beta1::BigQueryDestination::Representation
      
          property :gcs_destination, as: 'gcsDestination', class: Google::Apis::CloudassetV1p7beta1::GcsDestination, decorator: Google::Apis::CloudassetV1p7beta1::GcsDestination::Representation
      
        end
      end
      
      class PartitionSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :partition_key, as: 'partitionKey'
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
    end
  end
end
