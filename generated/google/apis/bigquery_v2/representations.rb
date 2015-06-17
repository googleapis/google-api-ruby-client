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
      
      class CsvOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Dataset
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Access
          class Representation < Google::Apis::Core::JsonRepresentation; end
        end
      end
      
      class DatasetList
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Dataset
          class Representation < Google::Apis::Core::JsonRepresentation; end
        end
      end
      
      class DatasetReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ErrorProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ExternalDataConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class GetQueryResultsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Job
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class CancelJobResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class JobConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class JobConfigurationExtract
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class JobConfigurationLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class JobConfigurationLoad
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class JobConfigurationQuery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class JobConfigurationTableCopy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class JobList
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Job
          class Representation < Google::Apis::Core::JsonRepresentation; end
        end
      end
      
      class JobReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class JobStatistics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class JobStatistics2
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class JobStatistics3
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class JobStatistics4
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class JobStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ProjectList
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Project
          class Representation < Google::Apis::Core::JsonRepresentation; end
        end
      end
      
      class ProjectReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class QueryRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class QueryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Table
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class TableCell
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class InsertAllTableDataRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Row
          class Representation < Google::Apis::Core::JsonRepresentation; end
        end
      end
      
      class InsertAllTableDataResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class InsertError
          class Representation < Google::Apis::Core::JsonRepresentation; end
        end
      end
      
      class TableDataList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class TableFieldSchema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class TableList
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Table
          class Representation < Google::Apis::Core::JsonRepresentation; end
        end
      end
      
      class TableReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class TableRow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class TableSchema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ViewDefinition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      # @private
      class CsvOptions
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_jagged_rows, as: 'allowJaggedRows'
          property :allow_quoted_newlines, as: 'allowQuotedNewlines'
          property :encoding, as: 'encoding'
          property :field_delimiter, as: 'fieldDelimiter'
          property :quote, as: 'quote'
          property :skip_leading_rows, as: 'skipLeadingRows'
        end
      end
      
      # @private
      class Dataset
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :access, as: 'access', class: Google::Apis::BigqueryV2::Dataset::Access, decorator: Google::Apis::BigqueryV2::Dataset::Access::Representation
      
          property :creation_time, as: 'creationTime'
          property :dataset_reference, as: 'datasetReference', class: Google::Apis::BigqueryV2::DatasetReference, decorator: Google::Apis::BigqueryV2::DatasetReference::Representation
      
          property :default_table_expiration_ms, as: 'defaultTableExpirationMs'
          property :description, as: 'description'
          property :etag, as: 'etag'
          property :friendly_name, as: 'friendlyName'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :last_modified_time, as: 'lastModifiedTime'
          property :location, as: 'location'
          property :self_link, as: 'selfLink'
        end
        
        # @private
        class Access
          class Representation < Google::Apis::Core::JsonRepresentation
            property :domain, as: 'domain'
            property :group_by_email, as: 'groupByEmail'
            property :role, as: 'role'
            property :special_group, as: 'specialGroup'
            property :user_by_email, as: 'userByEmail'
            property :view, as: 'view', class: Google::Apis::BigqueryV2::TableReference, decorator: Google::Apis::BigqueryV2::TableReference::Representation
        
          end
        end
      end
      
      # @private
      class DatasetList
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :datasets, as: 'datasets', class: Google::Apis::BigqueryV2::DatasetList::Dataset, decorator: Google::Apis::BigqueryV2::DatasetList::Dataset::Representation
      
          property :etag, as: 'etag'
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
        end
        
        # @private
        class Dataset
          class Representation < Google::Apis::Core::JsonRepresentation
            property :dataset_reference, as: 'datasetReference', class: Google::Apis::BigqueryV2::DatasetReference, decorator: Google::Apis::BigqueryV2::DatasetReference::Representation
        
            property :friendly_name, as: 'friendlyName'
            property :id, as: 'id'
            property :kind, as: 'kind'
          end
        end
      end
      
      # @private
      class DatasetReference
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset_id, as: 'datasetId'
          property :project_id, as: 'projectId'
        end
      end
      
      # @private
      class ErrorProto
        class Representation < Google::Apis::Core::JsonRepresentation
          property :debug_info, as: 'debugInfo'
          property :location, as: 'location'
          property :message, as: 'message'
          property :reason, as: 'reason'
        end
      end
      
      # @private
      class ExternalDataConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compression, as: 'compression'
          property :csv_options, as: 'csvOptions', class: Google::Apis::BigqueryV2::CsvOptions, decorator: Google::Apis::BigqueryV2::CsvOptions::Representation
      
          property :ignore_unknown_values, as: 'ignoreUnknownValues'
          property :max_bad_records, as: 'maxBadRecords'
          property :schema, as: 'schema', class: Google::Apis::BigqueryV2::TableSchema, decorator: Google::Apis::BigqueryV2::TableSchema::Representation
      
          property :source_format, as: 'sourceFormat'
          collection :source_uris, as: 'sourceUris'
        end
      end
      
      # @private
      class GetQueryResultsResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cache_hit, as: 'cacheHit'
          property :etag, as: 'etag'
          property :job_complete, as: 'jobComplete'
          property :job_reference, as: 'jobReference', class: Google::Apis::BigqueryV2::JobReference, decorator: Google::Apis::BigqueryV2::JobReference::Representation
      
          property :kind, as: 'kind'
          property :page_token, as: 'pageToken'
          collection :rows, as: 'rows', class: Google::Apis::BigqueryV2::TableRow, decorator: Google::Apis::BigqueryV2::TableRow::Representation
      
          property :schema, as: 'schema', class: Google::Apis::BigqueryV2::TableSchema, decorator: Google::Apis::BigqueryV2::TableSchema::Representation
      
          property :total_bytes_processed, as: 'totalBytesProcessed'
          property :total_rows, as: 'totalRows'
        end
      end
      
      # @private
      class Job
        class Representation < Google::Apis::Core::JsonRepresentation
          property :configuration, as: 'configuration', class: Google::Apis::BigqueryV2::JobConfiguration, decorator: Google::Apis::BigqueryV2::JobConfiguration::Representation
      
          property :etag, as: 'etag'
          property :id, as: 'id'
          property :job_reference, as: 'jobReference', class: Google::Apis::BigqueryV2::JobReference, decorator: Google::Apis::BigqueryV2::JobReference::Representation
      
          property :kind, as: 'kind'
          property :self_link, as: 'selfLink'
          property :statistics, as: 'statistics', class: Google::Apis::BigqueryV2::JobStatistics, decorator: Google::Apis::BigqueryV2::JobStatistics::Representation
      
          property :status, as: 'status', class: Google::Apis::BigqueryV2::JobStatus, decorator: Google::Apis::BigqueryV2::JobStatus::Representation
      
          property :user_email, as: 'user_email'
        end
      end
      
      # @private
      class CancelJobResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :job, as: 'job', class: Google::Apis::BigqueryV2::Job, decorator: Google::Apis::BigqueryV2::Job::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      # @private
      class JobConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation
          property :copy, as: 'copy', class: Google::Apis::BigqueryV2::JobConfigurationTableCopy, decorator: Google::Apis::BigqueryV2::JobConfigurationTableCopy::Representation
      
          property :dry_run, as: 'dryRun'
          property :extract, as: 'extract', class: Google::Apis::BigqueryV2::JobConfigurationExtract, decorator: Google::Apis::BigqueryV2::JobConfigurationExtract::Representation
      
          property :link, as: 'link', class: Google::Apis::BigqueryV2::JobConfigurationLink, decorator: Google::Apis::BigqueryV2::JobConfigurationLink::Representation
      
          property :load, as: 'load', class: Google::Apis::BigqueryV2::JobConfigurationLoad, decorator: Google::Apis::BigqueryV2::JobConfigurationLoad::Representation
      
          property :query, as: 'query', class: Google::Apis::BigqueryV2::JobConfigurationQuery, decorator: Google::Apis::BigqueryV2::JobConfigurationQuery::Representation
      
        end
      end
      
      # @private
      class JobConfigurationExtract
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compression, as: 'compression'
          property :destination_format, as: 'destinationFormat'
          property :destination_uri, as: 'destinationUri'
          collection :destination_uris, as: 'destinationUris'
          property :field_delimiter, as: 'fieldDelimiter'
          property :print_header, as: 'printHeader'
          property :source_table, as: 'sourceTable', class: Google::Apis::BigqueryV2::TableReference, decorator: Google::Apis::BigqueryV2::TableReference::Representation
      
        end
      end
      
      # @private
      class JobConfigurationLink
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_disposition, as: 'createDisposition'
          property :destination_table, as: 'destinationTable', class: Google::Apis::BigqueryV2::TableReference, decorator: Google::Apis::BigqueryV2::TableReference::Representation
      
          collection :source_uri, as: 'sourceUri'
          property :write_disposition, as: 'writeDisposition'
        end
      end
      
      # @private
      class JobConfigurationLoad
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_jagged_rows, as: 'allowJaggedRows'
          property :allow_quoted_newlines, as: 'allowQuotedNewlines'
          property :create_disposition, as: 'createDisposition'
          property :destination_table, as: 'destinationTable', class: Google::Apis::BigqueryV2::TableReference, decorator: Google::Apis::BigqueryV2::TableReference::Representation
      
          property :encoding, as: 'encoding'
          property :field_delimiter, as: 'fieldDelimiter'
          property :ignore_unknown_values, as: 'ignoreUnknownValues'
          property :max_bad_records, as: 'maxBadRecords'
          collection :projection_fields, as: 'projectionFields'
          property :quote, as: 'quote'
          property :schema, as: 'schema', class: Google::Apis::BigqueryV2::TableSchema, decorator: Google::Apis::BigqueryV2::TableSchema::Representation
      
          property :schema_inline, as: 'schemaInline'
          property :schema_inline_format, as: 'schemaInlineFormat'
          property :skip_leading_rows, as: 'skipLeadingRows'
          property :source_format, as: 'sourceFormat'
          collection :source_uris, as: 'sourceUris'
          property :write_disposition, as: 'writeDisposition'
        end
      end
      
      # @private
      class JobConfigurationQuery
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_large_results, as: 'allowLargeResults'
          property :create_disposition, as: 'createDisposition'
          property :default_dataset, as: 'defaultDataset', class: Google::Apis::BigqueryV2::DatasetReference, decorator: Google::Apis::BigqueryV2::DatasetReference::Representation
      
          property :destination_table, as: 'destinationTable', class: Google::Apis::BigqueryV2::TableReference, decorator: Google::Apis::BigqueryV2::TableReference::Representation
      
          property :flatten_results, as: 'flattenResults'
          property :preserve_nulls, as: 'preserveNulls'
          property :priority, as: 'priority'
          property :query, as: 'query'
          hash :table_definitions, as: 'tableDefinitions', class: Google::Apis::BigqueryV2::ExternalDataConfiguration, decorator: Google::Apis::BigqueryV2::ExternalDataConfiguration::Representation
      
          property :use_query_cache, as: 'useQueryCache'
          property :write_disposition, as: 'writeDisposition'
        end
      end
      
      # @private
      class JobConfigurationTableCopy
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_disposition, as: 'createDisposition'
          property :destination_table, as: 'destinationTable', class: Google::Apis::BigqueryV2::TableReference, decorator: Google::Apis::BigqueryV2::TableReference::Representation
      
          property :source_table, as: 'sourceTable', class: Google::Apis::BigqueryV2::TableReference, decorator: Google::Apis::BigqueryV2::TableReference::Representation
      
          collection :source_tables, as: 'sourceTables', class: Google::Apis::BigqueryV2::TableReference, decorator: Google::Apis::BigqueryV2::TableReference::Representation
      
          property :write_disposition, as: 'writeDisposition'
        end
      end
      
      # @private
      class JobList
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          collection :jobs, as: 'jobs', class: Google::Apis::BigqueryV2::JobList::Job, decorator: Google::Apis::BigqueryV2::JobList::Job::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
        end
        
        # @private
        class Job
          class Representation < Google::Apis::Core::JsonRepresentation
            property :configuration, as: 'configuration', class: Google::Apis::BigqueryV2::JobConfiguration, decorator: Google::Apis::BigqueryV2::JobConfiguration::Representation
        
            property :error_result, as: 'errorResult', class: Google::Apis::BigqueryV2::ErrorProto, decorator: Google::Apis::BigqueryV2::ErrorProto::Representation
        
            property :id, as: 'id'
            property :job_reference, as: 'jobReference', class: Google::Apis::BigqueryV2::JobReference, decorator: Google::Apis::BigqueryV2::JobReference::Representation
        
            property :kind, as: 'kind'
            property :state, as: 'state'
            property :statistics, as: 'statistics', class: Google::Apis::BigqueryV2::JobStatistics, decorator: Google::Apis::BigqueryV2::JobStatistics::Representation
        
            property :status, as: 'status', class: Google::Apis::BigqueryV2::JobStatus, decorator: Google::Apis::BigqueryV2::JobStatus::Representation
        
            property :user_email, as: 'user_email'
          end
        end
      end
      
      # @private
      class JobReference
        class Representation < Google::Apis::Core::JsonRepresentation
          property :job_id, as: 'jobId'
          property :project_id, as: 'projectId'
        end
      end
      
      # @private
      class JobStatistics
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_time, as: 'creationTime'
          property :end_time, as: 'endTime'
          property :extract, as: 'extract', class: Google::Apis::BigqueryV2::JobStatistics4, decorator: Google::Apis::BigqueryV2::JobStatistics4::Representation
      
          property :load, as: 'load', class: Google::Apis::BigqueryV2::JobStatistics3, decorator: Google::Apis::BigqueryV2::JobStatistics3::Representation
      
          property :query, as: 'query', class: Google::Apis::BigqueryV2::JobStatistics2, decorator: Google::Apis::BigqueryV2::JobStatistics2::Representation
      
          property :start_time, as: 'startTime'
          property :total_bytes_processed, as: 'totalBytesProcessed'
        end
      end
      
      # @private
      class JobStatistics2
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cache_hit, as: 'cacheHit'
          property :total_bytes_processed, as: 'totalBytesProcessed'
        end
      end
      
      # @private
      class JobStatistics3
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input_file_bytes, as: 'inputFileBytes'
          property :input_files, as: 'inputFiles'
          property :output_bytes, as: 'outputBytes'
          property :output_rows, as: 'outputRows'
        end
      end
      
      # @private
      class JobStatistics4
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :destination_uri_file_counts, as: 'destinationUriFileCounts'
        end
      end
      
      # @private
      class JobStatus
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_result, as: 'errorResult', class: Google::Apis::BigqueryV2::ErrorProto, decorator: Google::Apis::BigqueryV2::ErrorProto::Representation
      
          collection :errors, as: 'errors', class: Google::Apis::BigqueryV2::ErrorProto, decorator: Google::Apis::BigqueryV2::ErrorProto::Representation
      
          property :state, as: 'state'
        end
      end
      
      # @private
      class ProjectList
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :projects, as: 'projects', class: Google::Apis::BigqueryV2::ProjectList::Project, decorator: Google::Apis::BigqueryV2::ProjectList::Project::Representation
      
          property :total_items, as: 'totalItems'
        end
        
        # @private
        class Project
          class Representation < Google::Apis::Core::JsonRepresentation
            property :friendly_name, as: 'friendlyName'
            property :id, as: 'id'
            property :kind, as: 'kind'
            property :numeric_id, as: 'numericId'
            property :project_reference, as: 'projectReference', class: Google::Apis::BigqueryV2::ProjectReference, decorator: Google::Apis::BigqueryV2::ProjectReference::Representation
        
          end
        end
      end
      
      # @private
      class ProjectReference
        class Representation < Google::Apis::Core::JsonRepresentation
          property :project_id, as: 'projectId'
        end
      end
      
      # @private
      class QueryRequest
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_dataset, as: 'defaultDataset', class: Google::Apis::BigqueryV2::DatasetReference, decorator: Google::Apis::BigqueryV2::DatasetReference::Representation
      
          property :dry_run, as: 'dryRun'
          property :kind, as: 'kind'
          property :max_results, as: 'maxResults'
          property :preserve_nulls, as: 'preserveNulls'
          property :query, as: 'query'
          property :timeout_ms, as: 'timeoutMs'
          property :use_query_cache, as: 'useQueryCache'
        end
      end
      
      # @private
      class QueryResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cache_hit, as: 'cacheHit'
          property :job_complete, as: 'jobComplete'
          property :job_reference, as: 'jobReference', class: Google::Apis::BigqueryV2::JobReference, decorator: Google::Apis::BigqueryV2::JobReference::Representation
      
          property :kind, as: 'kind'
          property :page_token, as: 'pageToken'
          collection :rows, as: 'rows', class: Google::Apis::BigqueryV2::TableRow, decorator: Google::Apis::BigqueryV2::TableRow::Representation
      
          property :schema, as: 'schema', class: Google::Apis::BigqueryV2::TableSchema, decorator: Google::Apis::BigqueryV2::TableSchema::Representation
      
          property :total_bytes_processed, as: 'totalBytesProcessed'
          property :total_rows, as: 'totalRows'
        end
      end
      
      # @private
      class Table
        class Representation < Google::Apis::Core::JsonRepresentation
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
          property :schema, as: 'schema', class: Google::Apis::BigqueryV2::TableSchema, decorator: Google::Apis::BigqueryV2::TableSchema::Representation
      
          property :self_link, as: 'selfLink'
          property :table_reference, as: 'tableReference', class: Google::Apis::BigqueryV2::TableReference, decorator: Google::Apis::BigqueryV2::TableReference::Representation
      
          property :type, as: 'type'
          property :view, as: 'view', class: Google::Apis::BigqueryV2::ViewDefinition, decorator: Google::Apis::BigqueryV2::ViewDefinition::Representation
      
        end
      end
      
      # @private
      class TableCell
        class Representation < Google::Apis::Core::JsonRepresentation
          property :v, as: 'v'
        end
      end
      
      # @private
      class InsertAllTableDataRequest
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ignore_unknown_values, as: 'ignoreUnknownValues'
          property :kind, as: 'kind'
          collection :rows, as: 'rows', class: Google::Apis::BigqueryV2::InsertAllTableDataRequest::Row, decorator: Google::Apis::BigqueryV2::InsertAllTableDataRequest::Row::Representation
      
          property :skip_invalid_rows, as: 'skipInvalidRows'
        end
        
        # @private
        class Row
          class Representation < Google::Apis::Core::JsonRepresentation
            property :insert_id, as: 'insertId'
            hash :json, as: 'json'
          end
        end
      end
      
      # @private
      class InsertAllTableDataResponse
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :insert_errors, as: 'insertErrors', class: Google::Apis::BigqueryV2::InsertAllTableDataResponse::InsertError, decorator: Google::Apis::BigqueryV2::InsertAllTableDataResponse::InsertError::Representation
      
          property :kind, as: 'kind'
        end
        
        # @private
        class InsertError
          class Representation < Google::Apis::Core::JsonRepresentation
            collection :errors, as: 'errors', class: Google::Apis::BigqueryV2::ErrorProto, decorator: Google::Apis::BigqueryV2::ErrorProto::Representation
        
            property :index, as: 'index'
          end
        end
      end
      
      # @private
      class TableDataList
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :kind, as: 'kind'
          property :page_token, as: 'pageToken'
          collection :rows, as: 'rows', class: Google::Apis::BigqueryV2::TableRow, decorator: Google::Apis::BigqueryV2::TableRow::Representation
      
          property :total_rows, as: 'totalRows'
        end
      end
      
      # @private
      class TableFieldSchema
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          collection :fields, as: 'fields', class: Google::Apis::BigqueryV2::TableFieldSchema, decorator: Google::Apis::BigqueryV2::TableFieldSchema::Representation
      
          property :mode, as: 'mode'
          property :name, as: 'name'
          property :type, as: 'type'
        end
      end
      
      # @private
      class TableList
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :tables, as: 'tables', class: Google::Apis::BigqueryV2::TableList::Table, decorator: Google::Apis::BigqueryV2::TableList::Table::Representation
      
          property :total_items, as: 'totalItems'
        end
        
        # @private
        class Table
          class Representation < Google::Apis::Core::JsonRepresentation
            property :friendly_name, as: 'friendlyName'
            property :id, as: 'id'
            property :kind, as: 'kind'
            property :table_reference, as: 'tableReference', class: Google::Apis::BigqueryV2::TableReference, decorator: Google::Apis::BigqueryV2::TableReference::Representation
        
            property :type, as: 'type'
          end
        end
      end
      
      # @private
      class TableReference
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset_id, as: 'datasetId'
          property :project_id, as: 'projectId'
          property :table_id, as: 'tableId'
        end
      end
      
      # @private
      class TableRow
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :f, as: 'f', class: Google::Apis::BigqueryV2::TableCell, decorator: Google::Apis::BigqueryV2::TableCell::Representation
      
        end
      end
      
      # @private
      class TableSchema
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :fields, as: 'fields', class: Google::Apis::BigqueryV2::TableFieldSchema, decorator: Google::Apis::BigqueryV2::TableFieldSchema::Representation
      
        end
      end
      
      # @private
      class ViewDefinition
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query, as: 'query'
        end
      end
    end
  end
end
