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
      
      class GoogleLongrunningCancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningOperation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1BigQueryOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1BigQueryTable
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1CategoryDescription
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1CloudStorageKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1CloudStorageOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1CloudStoragePath
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1Color
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1ContentItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1CreateInspectOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1DatastoreKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1DatastoreOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1FieldId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1FileSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1Finding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1ImageLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1ImageRedactionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1InfoType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1InfoTypeDescription
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1InfoTypeLimit
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1InfoTypeStatistics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1InspectConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1InspectContentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1InspectContentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1InspectOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1InspectOperationResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1InspectResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1Key
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1KindExpression
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1ListInfoTypesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1ListInspectFindingsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1ListRootCategoriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1OperationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1OutputStorageConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1PartitionId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1PathElement
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1Projection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1PropertyReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1Range
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1RecordKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1RedactContentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1RedactContentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1ReplaceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1Row
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1StorageConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1Table
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1TableLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1Value
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleProtobufEmpty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleRpcStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeDate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeTimeOfDay
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningCancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleLongrunningListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::DlpV2beta1::GoogleLongrunningOperation, decorator: Google::Apis::DlpV2beta1::GoogleLongrunningOperation::Representation
      
        end
      end
      
      class GoogleLongrunningOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::DlpV2beta1::GoogleRpcStatus, decorator: Google::Apis::DlpV2beta1::GoogleRpcStatus::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class GooglePrivacyDlpV2beta1BigQueryOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :identifying_fields, as: 'identifyingFields', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1FieldId, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1FieldId::Representation
      
          property :table_reference, as: 'tableReference', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1BigQueryTable, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1BigQueryTable::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta1BigQueryTable
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset_id, as: 'datasetId'
          property :project_id, as: 'projectId'
          property :table_id, as: 'tableId'
        end
      end
      
      class GooglePrivacyDlpV2beta1CategoryDescription
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :name, as: 'name'
        end
      end
      
      class GooglePrivacyDlpV2beta1CloudStorageKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_path, as: 'filePath'
          property :start_offset, :numeric_string => true, as: 'startOffset'
        end
      end
      
      class GooglePrivacyDlpV2beta1CloudStorageOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_set, as: 'fileSet', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1FileSet, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1FileSet::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta1CloudStoragePath
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :path, as: 'path'
        end
      end
      
      class GooglePrivacyDlpV2beta1Color
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blue, as: 'blue'
          property :green, as: 'green'
          property :red, as: 'red'
        end
      end
      
      class GooglePrivacyDlpV2beta1ContentItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data, :base64 => true, as: 'data'
          property :table, as: 'table', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1Table, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1Table::Representation
      
          property :type, as: 'type'
          property :value, as: 'value'
        end
      end
      
      class GooglePrivacyDlpV2beta1CreateInspectOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inspect_config, as: 'inspectConfig', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1InspectConfig, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1InspectConfig::Representation
      
          property :operation_config, as: 'operationConfig', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1OperationConfig, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1OperationConfig::Representation
      
          property :output_config, as: 'outputConfig', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1OutputStorageConfig, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1OutputStorageConfig::Representation
      
          property :storage_config, as: 'storageConfig', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1StorageConfig, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1StorageConfig::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta1DatastoreKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entity_key, as: 'entityKey', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1Key, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1Key::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta1DatastoreOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1KindExpression, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1KindExpression::Representation
      
          property :partition_id, as: 'partitionId', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1PartitionId, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1PartitionId::Representation
      
          collection :projection, as: 'projection', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1Projection, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1Projection::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta1FieldId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column_name, as: 'columnName'
        end
      end
      
      class GooglePrivacyDlpV2beta1FileSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :url, as: 'url'
        end
      end
      
      class GooglePrivacyDlpV2beta1Finding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :info_type, as: 'infoType', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1InfoType, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1InfoType::Representation
      
          property :likelihood, as: 'likelihood'
          property :location, as: 'location', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1Location, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1Location::Representation
      
          property :quote, as: 'quote'
        end
      end
      
      class GooglePrivacyDlpV2beta1ImageLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :height, as: 'height'
          property :left, as: 'left'
          property :top, as: 'top'
          property :width, as: 'width'
        end
      end
      
      class GooglePrivacyDlpV2beta1ImageRedactionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :info_type, as: 'infoType', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1InfoType, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1InfoType::Representation
      
          property :redact_all_text, as: 'redactAllText'
          property :redaction_color, as: 'redactionColor', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1Color, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1Color::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta1InfoType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class GooglePrivacyDlpV2beta1InfoTypeDescription
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :categories, as: 'categories', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1CategoryDescription, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1CategoryDescription::Representation
      
          property :display_name, as: 'displayName'
          property :name, as: 'name'
        end
      end
      
      class GooglePrivacyDlpV2beta1InfoTypeLimit
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :info_type, as: 'infoType', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1InfoType, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1InfoType::Representation
      
          property :max_findings, as: 'maxFindings'
        end
      end
      
      class GooglePrivacyDlpV2beta1InfoTypeStatistics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, :numeric_string => true, as: 'count'
          property :info_type, as: 'infoType', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1InfoType, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1InfoType::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta1InspectConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exclude_types, as: 'excludeTypes'
          property :include_quote, as: 'includeQuote'
          collection :info_type_limits, as: 'infoTypeLimits', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1InfoTypeLimit, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1InfoTypeLimit::Representation
      
          collection :info_types, as: 'infoTypes', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1InfoType, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1InfoType::Representation
      
          property :max_findings, as: 'maxFindings'
          property :min_likelihood, as: 'minLikelihood'
        end
      end
      
      class GooglePrivacyDlpV2beta1InspectContentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inspect_config, as: 'inspectConfig', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1InspectConfig, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1InspectConfig::Representation
      
          collection :items, as: 'items', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1ContentItem, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1ContentItem::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta1InspectContentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :results, as: 'results', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1InspectResult, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1InspectResult::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta1InspectOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          collection :info_type_stats, as: 'infoTypeStats', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1InfoTypeStatistics, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1InfoTypeStatistics::Representation
      
          property :processed_bytes, :numeric_string => true, as: 'processedBytes'
          property :request_inspect_config, as: 'requestInspectConfig', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1InspectConfig, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1InspectConfig::Representation
      
          property :request_output_config, as: 'requestOutputConfig', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1OutputStorageConfig, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1OutputStorageConfig::Representation
      
          property :request_storage_config, as: 'requestStorageConfig', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1StorageConfig, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1StorageConfig::Representation
      
          property :total_estimated_bytes, :numeric_string => true, as: 'totalEstimatedBytes'
        end
      end
      
      class GooglePrivacyDlpV2beta1InspectOperationResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class GooglePrivacyDlpV2beta1InspectResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :findings, as: 'findings', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1Finding, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1Finding::Representation
      
          property :findings_truncated, as: 'findingsTruncated'
        end
      end
      
      class GooglePrivacyDlpV2beta1Key
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :partition_id, as: 'partitionId', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1PartitionId, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1PartitionId::Representation
      
          collection :path, as: 'path', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1PathElement, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1PathElement::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta1KindExpression
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class GooglePrivacyDlpV2beta1ListInfoTypesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :info_types, as: 'infoTypes', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1InfoTypeDescription, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1InfoTypeDescription::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta1ListInspectFindingsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          property :result, as: 'result', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1InspectResult, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1InspectResult::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta1ListRootCategoriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :categories, as: 'categories', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1CategoryDescription, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1CategoryDescription::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta1Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :byte_range, as: 'byteRange', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1Range, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1Range::Representation
      
          property :codepoint_range, as: 'codepointRange', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1Range, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1Range::Representation
      
          property :field_id, as: 'fieldId', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1FieldId, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1FieldId::Representation
      
          collection :image_boxes, as: 'imageBoxes', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1ImageLocation, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1ImageLocation::Representation
      
          property :record_key, as: 'recordKey', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1RecordKey, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1RecordKey::Representation
      
          property :table_location, as: 'tableLocation', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1TableLocation, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1TableLocation::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta1OperationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_item_findings, :numeric_string => true, as: 'maxItemFindings'
        end
      end
      
      class GooglePrivacyDlpV2beta1OutputStorageConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :storage_path, as: 'storagePath', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1CloudStoragePath, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1CloudStoragePath::Representation
      
          property :table, as: 'table', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1BigQueryTable, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1BigQueryTable::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta1PartitionId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :namespace_id, as: 'namespaceId'
          property :project_id, as: 'projectId'
        end
      end
      
      class GooglePrivacyDlpV2beta1PathElement
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
        end
      end
      
      class GooglePrivacyDlpV2beta1Projection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :property, as: 'property', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1PropertyReference, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1PropertyReference::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta1PropertyReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class GooglePrivacyDlpV2beta1Range
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end, :numeric_string => true, as: 'end'
          property :start, :numeric_string => true, as: 'start'
        end
      end
      
      class GooglePrivacyDlpV2beta1RecordKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_storage_key, as: 'cloudStorageKey', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1CloudStorageKey, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1CloudStorageKey::Representation
      
          property :datastore_key, as: 'datastoreKey', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1DatastoreKey, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1DatastoreKey::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta1RedactContentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :image_redaction_configs, as: 'imageRedactionConfigs', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1ImageRedactionConfig, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1ImageRedactionConfig::Representation
      
          property :inspect_config, as: 'inspectConfig', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1InspectConfig, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1InspectConfig::Representation
      
          collection :items, as: 'items', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1ContentItem, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1ContentItem::Representation
      
          collection :replace_configs, as: 'replaceConfigs', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1ReplaceConfig, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1ReplaceConfig::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta1RedactContentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1ContentItem, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1ContentItem::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta1ReplaceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :info_type, as: 'infoType', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1InfoType, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1InfoType::Representation
      
          property :replace_with, as: 'replaceWith'
        end
      end
      
      class GooglePrivacyDlpV2beta1Row
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1Value, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1Value::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta1StorageConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :big_query_options, as: 'bigQueryOptions', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1BigQueryOptions, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1BigQueryOptions::Representation
      
          property :cloud_storage_options, as: 'cloudStorageOptions', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1CloudStorageOptions, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1CloudStorageOptions::Representation
      
          property :datastore_options, as: 'datastoreOptions', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1DatastoreOptions, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1DatastoreOptions::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta1Table
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :headers, as: 'headers', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1FieldId, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1FieldId::Representation
      
          collection :rows, as: 'rows', class: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1Row, decorator: Google::Apis::DlpV2beta1::GooglePrivacyDlpV2beta1Row::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta1TableLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :row_index, :numeric_string => true, as: 'rowIndex'
        end
      end
      
      class GooglePrivacyDlpV2beta1Value
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boolean_value, as: 'booleanValue'
          property :date_value, as: 'dateValue', class: Google::Apis::DlpV2beta1::GoogleTypeDate, decorator: Google::Apis::DlpV2beta1::GoogleTypeDate::Representation
      
          property :float_value, as: 'floatValue'
          property :integer_value, :numeric_string => true, as: 'integerValue'
          property :string_value, as: 'stringValue'
          property :time_value, as: 'timeValue', class: Google::Apis::DlpV2beta1::GoogleTypeTimeOfDay, decorator: Google::Apis::DlpV2beta1::GoogleTypeTimeOfDay::Representation
      
          property :timestamp_value, as: 'timestampValue'
        end
      end
      
      class GoogleProtobufEmpty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleRpcStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class GoogleTypeDate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :month, as: 'month'
          property :year, as: 'year'
        end
      end
      
      class GoogleTypeTimeOfDay
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hours, as: 'hours'
          property :minutes, as: 'minutes'
          property :nanos, as: 'nanos'
          property :seconds, as: 'seconds'
        end
      end
    end
  end
end
