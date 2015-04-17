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
    module BigqueryV2
      class CsvOptionsRepresentation < Google::Apis::Core::JsonRepresentation; end
      class DatasetRepresentation < Google::Apis::Core::JsonRepresentation; end
      class DatasetListRepresentation < Google::Apis::Core::JsonRepresentation; end
      class DatasetReferenceRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ErrorProtoRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ExternalDataConfigurationRepresentation < Google::Apis::Core::JsonRepresentation; end
      class GetQueryResultsResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class JobRepresentation < Google::Apis::Core::JsonRepresentation; end
      class JobConfigurationRepresentation < Google::Apis::Core::JsonRepresentation; end
      class JobConfigurationExtractRepresentation < Google::Apis::Core::JsonRepresentation; end
      class JobConfigurationLinkRepresentation < Google::Apis::Core::JsonRepresentation; end
      class JobConfigurationLoadRepresentation < Google::Apis::Core::JsonRepresentation; end
      class JobConfigurationQueryRepresentation < Google::Apis::Core::JsonRepresentation; end
      class JobConfigurationTableCopyRepresentation < Google::Apis::Core::JsonRepresentation; end
      class JobListRepresentation < Google::Apis::Core::JsonRepresentation; end
      class JobReferenceRepresentation < Google::Apis::Core::JsonRepresentation; end
      class JobStatisticsRepresentation < Google::Apis::Core::JsonRepresentation; end
      class JobStatistics2Representation < Google::Apis::Core::JsonRepresentation; end
      class JobStatistics3Representation < Google::Apis::Core::JsonRepresentation; end
      class JobStatistics4Representation < Google::Apis::Core::JsonRepresentation; end
      class JobStatusRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ProjectListRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ProjectReferenceRepresentation < Google::Apis::Core::JsonRepresentation; end
      class QueryRequestRepresentation < Google::Apis::Core::JsonRepresentation; end
      class QueryResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class TableRepresentation < Google::Apis::Core::JsonRepresentation; end
      class TableCellRepresentation < Google::Apis::Core::JsonRepresentation; end
      class TableDataInsertAllRequestRepresentation < Google::Apis::Core::JsonRepresentation; end
      class TableDataInsertAllResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class TableDataListRepresentation < Google::Apis::Core::JsonRepresentation; end
      class TableFieldSchemaRepresentation < Google::Apis::Core::JsonRepresentation; end
      class TableListRepresentation < Google::Apis::Core::JsonRepresentation; end
      class TableReferenceRepresentation < Google::Apis::Core::JsonRepresentation; end
      class TableRowRepresentation < Google::Apis::Core::JsonRepresentation; end
      class TableSchemaRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ViewDefinitionRepresentation < Google::Apis::Core::JsonRepresentation; end

      # @private
      class CsvOptionsRepresentation < Google::Apis::Core::JsonRepresentation
        property :allow_jagged_rows, as: 'allowJaggedRows'
        property :allow_quoted_newlines, as: 'allowQuotedNewlines'
        property :encoding, as: 'encoding'
        property :field_delimiter, as: 'fieldDelimiter'
        property :quote, as: 'quote'
        property :skip_leading_rows, as: 'skipLeadingRows'
      end

      # @private
      class DatasetRepresentation < Google::Apis::Core::JsonRepresentation
        collection :access, as: 'access', class: Google::Apis::BigqueryV2::Dataset::Access do
          property :domain, as: 'domain'
          property :group_by_email, as: 'groupByEmail'
          property :role, as: 'role'
          property :special_group, as: 'specialGroup'
          property :user_by_email, as: 'userByEmail'
          property :view, as: 'view', class: Google::Apis::BigqueryV2::TableReference, decorator: Google::Apis::BigqueryV2::TableReferenceRepresentation
        end
        
        
        property :creation_time, as: 'creationTime'
        property :dataset_reference, as: 'datasetReference', class: Google::Apis::BigqueryV2::DatasetReference, decorator: Google::Apis::BigqueryV2::DatasetReferenceRepresentation
        
        property :default_table_expiration_ms, as: 'defaultTableExpirationMs'
        property :description, as: 'description'
        property :etag, as: 'etag'
        property :friendly_name, as: 'friendlyName'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :last_modified_time, as: 'lastModifiedTime'
        property :self_link, as: 'selfLink'
      end

      # @private
      class DatasetListRepresentation < Google::Apis::Core::JsonRepresentation
        collection :datasets, as: 'datasets', class: Google::Apis::BigqueryV2::DatasetList::Dataset do
          property :dataset_reference, as: 'datasetReference', class: Google::Apis::BigqueryV2::DatasetReference, decorator: Google::Apis::BigqueryV2::DatasetReferenceRepresentation
          
          property :friendly_name, as: 'friendlyName'
          property :id, as: 'id'
          property :kind, as: 'kind'
        end
        
        
        property :etag, as: 'etag'
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class DatasetReferenceRepresentation < Google::Apis::Core::JsonRepresentation
        property :dataset_id, as: 'datasetId'
        property :project_id, as: 'projectId'
      end

      # @private
      class ErrorProtoRepresentation < Google::Apis::Core::JsonRepresentation
        property :debug_info, as: 'debugInfo'
        property :location, as: 'location'
        property :message, as: 'message'
        property :reason, as: 'reason'
      end

      # @private
      class ExternalDataConfigurationRepresentation < Google::Apis::Core::JsonRepresentation
        property :compression, as: 'compression'
        property :csv_options, as: 'csvOptions', class: Google::Apis::BigqueryV2::CsvOptions, decorator: Google::Apis::BigqueryV2::CsvOptionsRepresentation
        
        property :ignore_unknown_values, as: 'ignoreUnknownValues'
        property :max_bad_records, as: 'maxBadRecords'
        property :schema, as: 'schema', class: Google::Apis::BigqueryV2::TableSchema, decorator: Google::Apis::BigqueryV2::TableSchemaRepresentation
        
        property :source_format, as: 'sourceFormat'
        collection :source_uris, as: 'sourceUris'
      end

      # @private
      class GetQueryResultsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :cache_hit, as: 'cacheHit'
        property :etag, as: 'etag'
        property :job_complete, as: 'jobComplete'
        property :job_reference, as: 'jobReference', class: Google::Apis::BigqueryV2::JobReference, decorator: Google::Apis::BigqueryV2::JobReferenceRepresentation
        
        property :kind, as: 'kind'
        property :page_token, as: 'pageToken'
        collection :rows, as: 'rows', class: Google::Apis::BigqueryV2::TableRow, decorator: Google::Apis::BigqueryV2::TableRowRepresentation
        
        
        property :schema, as: 'schema', class: Google::Apis::BigqueryV2::TableSchema, decorator: Google::Apis::BigqueryV2::TableSchemaRepresentation
        
        property :total_bytes_processed, as: 'totalBytesProcessed'
        property :total_rows, as: 'totalRows'
      end

      # @private
      class JobRepresentation < Google::Apis::Core::JsonRepresentation
        property :configuration, as: 'configuration', class: Google::Apis::BigqueryV2::JobConfiguration, decorator: Google::Apis::BigqueryV2::JobConfigurationRepresentation
        
        property :etag, as: 'etag'
        property :id, as: 'id'
        property :job_reference, as: 'jobReference', class: Google::Apis::BigqueryV2::JobReference, decorator: Google::Apis::BigqueryV2::JobReferenceRepresentation
        
        property :kind, as: 'kind'
        property :self_link, as: 'selfLink'
        property :statistics, as: 'statistics', class: Google::Apis::BigqueryV2::JobStatistics, decorator: Google::Apis::BigqueryV2::JobStatisticsRepresentation
        
        property :status, as: 'status', class: Google::Apis::BigqueryV2::JobStatus, decorator: Google::Apis::BigqueryV2::JobStatusRepresentation
        
        property :user_email, as: 'user_email'
      end

      # @private
      class JobConfigurationRepresentation < Google::Apis::Core::JsonRepresentation
        property :copy, as: 'copy', class: Google::Apis::BigqueryV2::JobConfigurationTableCopy, decorator: Google::Apis::BigqueryV2::JobConfigurationTableCopyRepresentation
        
        property :dry_run, as: 'dryRun'
        property :extract, as: 'extract', class: Google::Apis::BigqueryV2::JobConfigurationExtract, decorator: Google::Apis::BigqueryV2::JobConfigurationExtractRepresentation
        
        property :link, as: 'link', class: Google::Apis::BigqueryV2::JobConfigurationLink, decorator: Google::Apis::BigqueryV2::JobConfigurationLinkRepresentation
        
        property :load, as: 'load', class: Google::Apis::BigqueryV2::JobConfigurationLoad, decorator: Google::Apis::BigqueryV2::JobConfigurationLoadRepresentation
        
        property :query, as: 'query', class: Google::Apis::BigqueryV2::JobConfigurationQuery, decorator: Google::Apis::BigqueryV2::JobConfigurationQueryRepresentation
      end

      # @private
      class JobConfigurationExtractRepresentation < Google::Apis::Core::JsonRepresentation
        property :compression, as: 'compression'
        property :destination_format, as: 'destinationFormat'
        property :destination_uri, as: 'destinationUri'
        collection :destination_uris, as: 'destinationUris'
        
        property :field_delimiter, as: 'fieldDelimiter'
        property :print_header, as: 'printHeader'
        property :source_table, as: 'sourceTable', class: Google::Apis::BigqueryV2::TableReference, decorator: Google::Apis::BigqueryV2::TableReferenceRepresentation
      end

      # @private
      class JobConfigurationLinkRepresentation < Google::Apis::Core::JsonRepresentation
        property :create_disposition, as: 'createDisposition'
        property :destination_table, as: 'destinationTable', class: Google::Apis::BigqueryV2::TableReference, decorator: Google::Apis::BigqueryV2::TableReferenceRepresentation
        
        collection :source_uri, as: 'sourceUri'
        
        property :write_disposition, as: 'writeDisposition'
      end

      # @private
      class JobConfigurationLoadRepresentation < Google::Apis::Core::JsonRepresentation
        property :allow_jagged_rows, as: 'allowJaggedRows'
        property :allow_quoted_newlines, as: 'allowQuotedNewlines'
        property :create_disposition, as: 'createDisposition'
        property :destination_table, as: 'destinationTable', class: Google::Apis::BigqueryV2::TableReference, decorator: Google::Apis::BigqueryV2::TableReferenceRepresentation
        
        property :encoding, as: 'encoding'
        property :field_delimiter, as: 'fieldDelimiter'
        property :ignore_unknown_values, as: 'ignoreUnknownValues'
        property :max_bad_records, as: 'maxBadRecords'
        collection :projection_fields, as: 'projectionFields'
        
        property :quote, as: 'quote'
        property :schema, as: 'schema', class: Google::Apis::BigqueryV2::TableSchema, decorator: Google::Apis::BigqueryV2::TableSchemaRepresentation
        
        property :schema_inline, as: 'schemaInline'
        property :schema_inline_format, as: 'schemaInlineFormat'
        property :skip_leading_rows, as: 'skipLeadingRows'
        property :source_format, as: 'sourceFormat'
        collection :source_uris, as: 'sourceUris'
        
        property :write_disposition, as: 'writeDisposition'
      end

      # @private
      class JobConfigurationQueryRepresentation < Google::Apis::Core::JsonRepresentation
        property :allow_large_results, as: 'allowLargeResults'
        property :create_disposition, as: 'createDisposition'
        property :default_dataset, as: 'defaultDataset', class: Google::Apis::BigqueryV2::DatasetReference, decorator: Google::Apis::BigqueryV2::DatasetReferenceRepresentation
        
        property :destination_table, as: 'destinationTable', class: Google::Apis::BigqueryV2::TableReference, decorator: Google::Apis::BigqueryV2::TableReferenceRepresentation
        
        property :flatten_results, as: 'flattenResults'
        property :preserve_nulls, as: 'preserveNulls'
        property :priority, as: 'priority'
        property :query, as: 'query'
        hash :table_definitions, as: 'tableDefinitions', class: Google::Apis::BigqueryV2::ExternalDataConfiguration, decorator: Google::Apis::BigqueryV2::ExternalDataConfigurationRepresentation
        
        
        property :use_query_cache, as: 'useQueryCache'
        property :write_disposition, as: 'writeDisposition'
      end

      # @private
      class JobConfigurationTableCopyRepresentation < Google::Apis::Core::JsonRepresentation
        property :create_disposition, as: 'createDisposition'
        property :destination_table, as: 'destinationTable', class: Google::Apis::BigqueryV2::TableReference, decorator: Google::Apis::BigqueryV2::TableReferenceRepresentation
        
        property :source_table, as: 'sourceTable', class: Google::Apis::BigqueryV2::TableReference, decorator: Google::Apis::BigqueryV2::TableReferenceRepresentation
        
        collection :source_tables, as: 'sourceTables', class: Google::Apis::BigqueryV2::TableReference, decorator: Google::Apis::BigqueryV2::TableReferenceRepresentation
        
        
        property :write_disposition, as: 'writeDisposition'
      end

      # @private
      class JobListRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        collection :jobs, as: 'jobs', class: Google::Apis::BigqueryV2::JobList::Job do
          property :configuration, as: 'configuration', class: Google::Apis::BigqueryV2::JobConfiguration, decorator: Google::Apis::BigqueryV2::JobConfigurationRepresentation
          
          property :error_result, as: 'errorResult', class: Google::Apis::BigqueryV2::ErrorProto, decorator: Google::Apis::BigqueryV2::ErrorProtoRepresentation
          
          property :id, as: 'id'
          property :job_reference, as: 'jobReference', class: Google::Apis::BigqueryV2::JobReference, decorator: Google::Apis::BigqueryV2::JobReferenceRepresentation
          
          property :kind, as: 'kind'
          property :state, as: 'state'
          property :statistics, as: 'statistics', class: Google::Apis::BigqueryV2::JobStatistics, decorator: Google::Apis::BigqueryV2::JobStatisticsRepresentation
          
          property :status, as: 'status', class: Google::Apis::BigqueryV2::JobStatus, decorator: Google::Apis::BigqueryV2::JobStatusRepresentation
          
          property :user_email, as: 'user_email'
        end
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :total_items, as: 'totalItems'
      end

      # @private
      class JobReferenceRepresentation < Google::Apis::Core::JsonRepresentation
        property :job_id, as: 'jobId'
        property :project_id, as: 'projectId'
      end

      # @private
      class JobStatisticsRepresentation < Google::Apis::Core::JsonRepresentation
        property :creation_time, as: 'creationTime'
        property :end_time, as: 'endTime'
        property :extract, as: 'extract', class: Google::Apis::BigqueryV2::JobStatistics4, decorator: Google::Apis::BigqueryV2::JobStatistics4Representation
        
        property :load, as: 'load', class: Google::Apis::BigqueryV2::JobStatistics3, decorator: Google::Apis::BigqueryV2::JobStatistics3Representation
        
        property :query, as: 'query', class: Google::Apis::BigqueryV2::JobStatistics2, decorator: Google::Apis::BigqueryV2::JobStatistics2Representation
        
        property :start_time, as: 'startTime'
        property :total_bytes_processed, as: 'totalBytesProcessed'
      end

      # @private
      class JobStatistics2Representation < Google::Apis::Core::JsonRepresentation
        property :cache_hit, as: 'cacheHit'
        property :total_bytes_processed, as: 'totalBytesProcessed'
      end

      # @private
      class JobStatistics3Representation < Google::Apis::Core::JsonRepresentation
        property :input_file_bytes, as: 'inputFileBytes'
        property :input_files, as: 'inputFiles'
        property :output_bytes, as: 'outputBytes'
        property :output_rows, as: 'outputRows'
      end

      # @private
      class JobStatistics4Representation < Google::Apis::Core::JsonRepresentation
        collection :destination_uri_file_counts, as: 'destinationUriFileCounts'
      end

      # @private
      class JobStatusRepresentation < Google::Apis::Core::JsonRepresentation
        property :error_result, as: 'errorResult', class: Google::Apis::BigqueryV2::ErrorProto, decorator: Google::Apis::BigqueryV2::ErrorProtoRepresentation
        
        collection :errors, as: 'errors', class: Google::Apis::BigqueryV2::ErrorProto, decorator: Google::Apis::BigqueryV2::ErrorProtoRepresentation
        
        
        property :state, as: 'state'
      end

      # @private
      class ProjectListRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        collection :projects, as: 'projects', class: Google::Apis::BigqueryV2::ProjectList::Project do
          property :friendly_name, as: 'friendlyName'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :numeric_id, as: 'numericId'
          property :project_reference, as: 'projectReference', class: Google::Apis::BigqueryV2::ProjectReference, decorator: Google::Apis::BigqueryV2::ProjectReferenceRepresentation
        end
        
        
        property :total_items, as: 'totalItems'
      end

      # @private
      class ProjectReferenceRepresentation < Google::Apis::Core::JsonRepresentation
        property :project_id, as: 'projectId'
      end

      # @private
      class QueryRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :default_dataset, as: 'defaultDataset', class: Google::Apis::BigqueryV2::DatasetReference, decorator: Google::Apis::BigqueryV2::DatasetReferenceRepresentation
        
        property :dry_run, as: 'dryRun'
        property :kind, as: 'kind'
        property :max_results, as: 'maxResults'
        property :preserve_nulls, as: 'preserveNulls'
        property :query, as: 'query'
        property :timeout_ms, as: 'timeoutMs'
        property :use_query_cache, as: 'useQueryCache'
      end

      # @private
      class QueryResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :cache_hit, as: 'cacheHit'
        property :job_complete, as: 'jobComplete'
        property :job_reference, as: 'jobReference', class: Google::Apis::BigqueryV2::JobReference, decorator: Google::Apis::BigqueryV2::JobReferenceRepresentation
        
        property :kind, as: 'kind'
        property :page_token, as: 'pageToken'
        collection :rows, as: 'rows', class: Google::Apis::BigqueryV2::TableRow, decorator: Google::Apis::BigqueryV2::TableRowRepresentation
        
        
        property :schema, as: 'schema', class: Google::Apis::BigqueryV2::TableSchema, decorator: Google::Apis::BigqueryV2::TableSchemaRepresentation
        
        property :total_bytes_processed, as: 'totalBytesProcessed'
        property :total_rows, as: 'totalRows'
      end

      # @private
      class TableRepresentation < Google::Apis::Core::JsonRepresentation
        property :creation_time, as: 'creationTime'
        property :description, as: 'description'
        property :etag, as: 'etag'
        property :expiration_time, as: 'expirationTime'
        property :friendly_name, as: 'friendlyName'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :last_modified_time, as: 'lastModifiedTime'
        property :num_bytes, as: 'numBytes'
        property :num_rows, as: 'numRows'
        property :schema, as: 'schema', class: Google::Apis::BigqueryV2::TableSchema, decorator: Google::Apis::BigqueryV2::TableSchemaRepresentation
        
        property :self_link, as: 'selfLink'
        property :table_reference, as: 'tableReference', class: Google::Apis::BigqueryV2::TableReference, decorator: Google::Apis::BigqueryV2::TableReferenceRepresentation
        
        property :type, as: 'type'
        property :view, as: 'view', class: Google::Apis::BigqueryV2::ViewDefinition, decorator: Google::Apis::BigqueryV2::ViewDefinitionRepresentation
      end

      # @private
      class TableCellRepresentation < Google::Apis::Core::JsonRepresentation
        property :v, as: 'v'
      end

      # @private
      class TableDataInsertAllRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :ignore_unknown_values, as: 'ignoreUnknownValues'
        property :kind, as: 'kind'
        collection :rows, as: 'rows', class: Google::Apis::BigqueryV2::TableDataInsertAllRequest::Row do
          property :insert_id, as: 'insertId'
          hash :json, as: 'json'
        end
        
        
        property :skip_invalid_rows, as: 'skipInvalidRows'
      end

      # @private
      class TableDataInsertAllResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :insert_errors, as: 'insertErrors', class: Google::Apis::BigqueryV2::TableDataInsertAllResponse::InsertError do
          collection :errors, as: 'errors', class: Google::Apis::BigqueryV2::ErrorProto, decorator: Google::Apis::BigqueryV2::ErrorProtoRepresentation
          
          
          property :index, as: 'index'
        end
        
        
        property :kind, as: 'kind'
      end

      # @private
      class TableDataListRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        property :kind, as: 'kind'
        property :page_token, as: 'pageToken'
        collection :rows, as: 'rows', class: Google::Apis::BigqueryV2::TableRow, decorator: Google::Apis::BigqueryV2::TableRowRepresentation
        
        
        property :total_rows, as: 'totalRows'
      end

      # @private
      class TableFieldSchemaRepresentation < Google::Apis::Core::JsonRepresentation
        property :description, as: 'description'
        collection :fields, as: 'fields', class: Google::Apis::BigqueryV2::TableFieldSchema, decorator: Google::Apis::BigqueryV2::TableFieldSchemaRepresentation
        
        
        property :mode, as: 'mode'
        property :name, as: 'name'
        property :type, as: 'type'
      end

      # @private
      class TableListRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        collection :tables, as: 'tables', class: Google::Apis::BigqueryV2::TableList::Table do
          property :friendly_name, as: 'friendlyName'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :table_reference, as: 'tableReference', class: Google::Apis::BigqueryV2::TableReference, decorator: Google::Apis::BigqueryV2::TableReferenceRepresentation
          
          property :type, as: 'type'
        end
        
        
        property :total_items, as: 'totalItems'
      end

      # @private
      class TableReferenceRepresentation < Google::Apis::Core::JsonRepresentation
        property :dataset_id, as: 'datasetId'
        property :project_id, as: 'projectId'
        property :table_id, as: 'tableId'
      end

      # @private
      class TableRowRepresentation < Google::Apis::Core::JsonRepresentation
        collection :f, as: 'f', class: Google::Apis::BigqueryV2::TableCell, decorator: Google::Apis::BigqueryV2::TableCellRepresentation
      end

      # @private
      class TableSchemaRepresentation < Google::Apis::Core::JsonRepresentation
        collection :fields, as: 'fields', class: Google::Apis::BigqueryV2::TableFieldSchema, decorator: Google::Apis::BigqueryV2::TableFieldSchemaRepresentation
      end

      # @private
      class ViewDefinitionRepresentation < Google::Apis::Core::JsonRepresentation
        property :query, as: 'query'
      end
    end
  end
end
