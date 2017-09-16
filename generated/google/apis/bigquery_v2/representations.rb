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
      
      class BigtableColumn
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BigtableColumnFamily
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BigtableOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CsvOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Dataset
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Access
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatasetList
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Dataset
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatasetReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EncryptionConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ErrorProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExplainQueryStage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExplainQueryStep
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExternalDataConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetQueryResultsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetServiceAccountResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSheetsOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Job
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelJobResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobConfigurationExtract
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobConfigurationLoad
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobConfigurationQuery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobConfigurationTableCopy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobList
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Job
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobStatistics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobStatistics2
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobStatistics3
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobStatistics4
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProjectList
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Project
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProjectReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryParameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryParameterType
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class StructType
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryParameterValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Streamingbuffer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Table
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TableCell
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InsertAllTableDataRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Row
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InsertAllTableDataResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class InsertError
          class Representation < Google::Apis::Core::JsonRepresentation; end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TableDataList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TableFieldSchema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TableList
        class Representation < Google::Apis::Core::JsonRepresentation; end
        
        class Table
          class Representation < Google::Apis::Core::JsonRepresentation; end
          
          class View
            class Representation < Google::Apis::Core::JsonRepresentation; end
          
            include Google::Apis::Core::JsonObjectSupport
          end
        
          include Google::Apis::Core::JsonObjectSupport
        end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TableReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TableRow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TableSchema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimePartitioning
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UserDefinedFunctionResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ViewDefinition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BigtableColumn
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encoding, as: 'encoding'
          property :field_name, as: 'fieldName'
          property :only_read_latest, as: 'onlyReadLatest'
          property :qualifier_encoded, :base64 => true, as: 'qualifierEncoded'
          property :qualifier_string, as: 'qualifierString'
          property :type, as: 'type'
        end
      end
      
      class BigtableColumnFamily
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :columns, as: 'columns', class: Google::Apis::BigqueryV2::BigtableColumn, decorator: Google::Apis::BigqueryV2::BigtableColumn::Representation
      
          property :encoding, as: 'encoding'
          property :family_id, as: 'familyId'
          property :only_read_latest, as: 'onlyReadLatest'
          property :type, as: 'type'
        end
      end
      
      class BigtableOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :column_families, as: 'columnFamilies', class: Google::Apis::BigqueryV2::BigtableColumnFamily, decorator: Google::Apis::BigqueryV2::BigtableColumnFamily::Representation
      
          property :ignore_unspecified_column_families, as: 'ignoreUnspecifiedColumnFamilies'
          property :read_rowkey_as_string, as: 'readRowkeyAsString'
        end
      end
      
      class CsvOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_jagged_rows, as: 'allowJaggedRows'
          property :allow_quoted_newlines, as: 'allowQuotedNewlines'
          property :encoding, as: 'encoding'
          property :field_delimiter, as: 'fieldDelimiter'
          property :quote, as: 'quote'
          property :skip_leading_rows, :numeric_string => true, as: 'skipLeadingRows'
        end
      end
      
      class Dataset
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :access, as: 'access', class: Google::Apis::BigqueryV2::Dataset::Access, decorator: Google::Apis::BigqueryV2::Dataset::Access::Representation
      
          property :creation_time, :numeric_string => true, as: 'creationTime'
          property :dataset_reference, as: 'datasetReference', class: Google::Apis::BigqueryV2::DatasetReference, decorator: Google::Apis::BigqueryV2::DatasetReference::Representation
      
          property :default_table_expiration_ms, :numeric_string => true, as: 'defaultTableExpirationMs'
          property :description, as: 'description'
          property :etag, as: 'etag'
          property :friendly_name, as: 'friendlyName'
          property :id, as: 'id'
          property :kind, as: 'kind'
          hash :labels, as: 'labels'
          property :last_modified_time, :numeric_string => true, as: 'lastModifiedTime'
          property :location, as: 'location'
          property :self_link, as: 'selfLink'
        end
        
        class Access
          # @private
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
      
      class DatasetList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :datasets, as: 'datasets', class: Google::Apis::BigqueryV2::DatasetList::Dataset, decorator: Google::Apis::BigqueryV2::DatasetList::Dataset::Representation
      
          property :etag, as: 'etag'
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
        end
        
        class Dataset
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :dataset_reference, as: 'datasetReference', class: Google::Apis::BigqueryV2::DatasetReference, decorator: Google::Apis::BigqueryV2::DatasetReference::Representation
        
            property :friendly_name, as: 'friendlyName'
            property :id, as: 'id'
            property :kind, as: 'kind'
            hash :labels, as: 'labels'
          end
        end
      end
      
      class DatasetReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset_id, as: 'datasetId'
          property :project_id, as: 'projectId'
        end
      end
      
      class EncryptionConfiguration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_key_name, as: 'kmsKeyName'
        end
      end
      
      class ErrorProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :debug_info, as: 'debugInfo'
          property :location, as: 'location'
          property :message, as: 'message'
          property :reason, as: 'reason'
        end
      end
      
      class ExplainQueryStage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compute_ms_avg, :numeric_string => true, as: 'computeMsAvg'
          property :compute_ms_max, :numeric_string => true, as: 'computeMsMax'
          property :compute_ratio_avg, as: 'computeRatioAvg'
          property :compute_ratio_max, as: 'computeRatioMax'
          property :id, :numeric_string => true, as: 'id'
          property :name, as: 'name'
          property :read_ms_avg, :numeric_string => true, as: 'readMsAvg'
          property :read_ms_max, :numeric_string => true, as: 'readMsMax'
          property :read_ratio_avg, as: 'readRatioAvg'
          property :read_ratio_max, as: 'readRatioMax'
          property :records_read, :numeric_string => true, as: 'recordsRead'
          property :records_written, :numeric_string => true, as: 'recordsWritten'
          property :shuffle_output_bytes, :numeric_string => true, as: 'shuffleOutputBytes'
          property :shuffle_output_bytes_spilled, :numeric_string => true, as: 'shuffleOutputBytesSpilled'
          property :status, as: 'status'
          collection :steps, as: 'steps', class: Google::Apis::BigqueryV2::ExplainQueryStep, decorator: Google::Apis::BigqueryV2::ExplainQueryStep::Representation
      
          property :wait_ms_avg, :numeric_string => true, as: 'waitMsAvg'
          property :wait_ms_max, :numeric_string => true, as: 'waitMsMax'
          property :wait_ratio_avg, as: 'waitRatioAvg'
          property :wait_ratio_max, as: 'waitRatioMax'
          property :write_ms_avg, :numeric_string => true, as: 'writeMsAvg'
          property :write_ms_max, :numeric_string => true, as: 'writeMsMax'
          property :write_ratio_avg, as: 'writeRatioAvg'
          property :write_ratio_max, as: 'writeRatioMax'
        end
      end
      
      class ExplainQueryStep
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          collection :substeps, as: 'substeps'
        end
      end
      
      class ExternalDataConfiguration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :autodetect, as: 'autodetect'
          property :bigtable_options, as: 'bigtableOptions', class: Google::Apis::BigqueryV2::BigtableOptions, decorator: Google::Apis::BigqueryV2::BigtableOptions::Representation
      
          property :compression, as: 'compression'
          property :csv_options, as: 'csvOptions', class: Google::Apis::BigqueryV2::CsvOptions, decorator: Google::Apis::BigqueryV2::CsvOptions::Representation
      
          property :google_sheets_options, as: 'googleSheetsOptions', class: Google::Apis::BigqueryV2::GoogleSheetsOptions, decorator: Google::Apis::BigqueryV2::GoogleSheetsOptions::Representation
      
          property :ignore_unknown_values, as: 'ignoreUnknownValues'
          property :max_bad_records, as: 'maxBadRecords'
          property :schema, as: 'schema', class: Google::Apis::BigqueryV2::TableSchema, decorator: Google::Apis::BigqueryV2::TableSchema::Representation
      
          property :source_format, as: 'sourceFormat'
          collection :source_uris, as: 'sourceUris'
        end
      end
      
      class GetQueryResultsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cache_hit, as: 'cacheHit'
          collection :errors, as: 'errors', class: Google::Apis::BigqueryV2::ErrorProto, decorator: Google::Apis::BigqueryV2::ErrorProto::Representation
      
          property :etag, as: 'etag'
          property :job_complete, as: 'jobComplete'
          property :job_reference, as: 'jobReference', class: Google::Apis::BigqueryV2::JobReference, decorator: Google::Apis::BigqueryV2::JobReference::Representation
      
          property :kind, as: 'kind'
          property :num_dml_affected_rows, :numeric_string => true, as: 'numDmlAffectedRows'
          property :page_token, as: 'pageToken'
          collection :rows, as: 'rows', class: Google::Apis::BigqueryV2::TableRow, decorator: Google::Apis::BigqueryV2::TableRow::Representation
      
          property :schema, as: 'schema', class: Google::Apis::BigqueryV2::TableSchema, decorator: Google::Apis::BigqueryV2::TableSchema::Representation
      
          property :total_bytes_processed, :numeric_string => true, as: 'totalBytesProcessed'
          property :total_rows, :numeric_string => true, as: 'totalRows'
        end
      end
      
      class GetServiceAccountResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
          property :kind, as: 'kind'
        end
      end
      
      class GoogleSheetsOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :skip_leading_rows, :numeric_string => true, as: 'skipLeadingRows'
        end
      end
      
      class Job
        # @private
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
      
      class CancelJobResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :job, as: 'job', class: Google::Apis::BigqueryV2::Job, decorator: Google::Apis::BigqueryV2::Job::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class JobConfiguration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :copy, as: 'copy', class: Google::Apis::BigqueryV2::JobConfigurationTableCopy, decorator: Google::Apis::BigqueryV2::JobConfigurationTableCopy::Representation
      
          property :dry_run, as: 'dryRun'
          property :extract, as: 'extract', class: Google::Apis::BigqueryV2::JobConfigurationExtract, decorator: Google::Apis::BigqueryV2::JobConfigurationExtract::Representation
      
          hash :labels, as: 'labels'
          property :load, as: 'load', class: Google::Apis::BigqueryV2::JobConfigurationLoad, decorator: Google::Apis::BigqueryV2::JobConfigurationLoad::Representation
      
          property :query, as: 'query', class: Google::Apis::BigqueryV2::JobConfigurationQuery, decorator: Google::Apis::BigqueryV2::JobConfigurationQuery::Representation
      
        end
      end
      
      class JobConfigurationExtract
        # @private
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
      
      class JobConfigurationLoad
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_jagged_rows, as: 'allowJaggedRows'
          property :allow_quoted_newlines, as: 'allowQuotedNewlines'
          property :autodetect, as: 'autodetect'
          property :create_disposition, as: 'createDisposition'
          property :destination_encryption_configuration, as: 'destinationEncryptionConfiguration', class: Google::Apis::BigqueryV2::EncryptionConfiguration, decorator: Google::Apis::BigqueryV2::EncryptionConfiguration::Representation
      
          property :destination_table, as: 'destinationTable', class: Google::Apis::BigqueryV2::TableReference, decorator: Google::Apis::BigqueryV2::TableReference::Representation
      
          property :encoding, as: 'encoding'
          property :field_delimiter, as: 'fieldDelimiter'
          property :ignore_unknown_values, as: 'ignoreUnknownValues'
          property :max_bad_records, as: 'maxBadRecords'
          property :null_marker, as: 'nullMarker'
          collection :projection_fields, as: 'projectionFields'
          property :quote, as: 'quote'
          property :schema, as: 'schema', class: Google::Apis::BigqueryV2::TableSchema, decorator: Google::Apis::BigqueryV2::TableSchema::Representation
      
          property :schema_inline, as: 'schemaInline'
          property :schema_inline_format, as: 'schemaInlineFormat'
          collection :schema_update_options, as: 'schemaUpdateOptions'
          property :skip_leading_rows, as: 'skipLeadingRows'
          property :source_format, as: 'sourceFormat'
          collection :source_uris, as: 'sourceUris'
          property :time_partitioning, as: 'timePartitioning', class: Google::Apis::BigqueryV2::TimePartitioning, decorator: Google::Apis::BigqueryV2::TimePartitioning::Representation
      
          property :write_disposition, as: 'writeDisposition'
        end
      end
      
      class JobConfigurationQuery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_large_results, as: 'allowLargeResults'
          property :create_disposition, as: 'createDisposition'
          property :default_dataset, as: 'defaultDataset', class: Google::Apis::BigqueryV2::DatasetReference, decorator: Google::Apis::BigqueryV2::DatasetReference::Representation
      
          property :destination_encryption_configuration, as: 'destinationEncryptionConfiguration', class: Google::Apis::BigqueryV2::EncryptionConfiguration, decorator: Google::Apis::BigqueryV2::EncryptionConfiguration::Representation
      
          property :destination_table, as: 'destinationTable', class: Google::Apis::BigqueryV2::TableReference, decorator: Google::Apis::BigqueryV2::TableReference::Representation
      
          property :flatten_results, as: 'flattenResults'
          property :maximum_billing_tier, as: 'maximumBillingTier'
          property :maximum_bytes_billed, :numeric_string => true, as: 'maximumBytesBilled'
          property :parameter_mode, as: 'parameterMode'
          property :preserve_nulls, as: 'preserveNulls'
          property :priority, as: 'priority'
          property :query, as: 'query'
          collection :query_parameters, as: 'queryParameters', class: Google::Apis::BigqueryV2::QueryParameter, decorator: Google::Apis::BigqueryV2::QueryParameter::Representation
      
          collection :schema_update_options, as: 'schemaUpdateOptions'
          hash :table_definitions, as: 'tableDefinitions', class: Google::Apis::BigqueryV2::ExternalDataConfiguration, decorator: Google::Apis::BigqueryV2::ExternalDataConfiguration::Representation
      
          property :time_partitioning, as: 'timePartitioning', class: Google::Apis::BigqueryV2::TimePartitioning, decorator: Google::Apis::BigqueryV2::TimePartitioning::Representation
      
          property :use_legacy_sql, as: 'useLegacySql'
          property :use_query_cache, as: 'useQueryCache'
          collection :user_defined_function_resources, as: 'userDefinedFunctionResources', class: Google::Apis::BigqueryV2::UserDefinedFunctionResource, decorator: Google::Apis::BigqueryV2::UserDefinedFunctionResource::Representation
      
          property :write_disposition, as: 'writeDisposition'
        end
      end
      
      class JobConfigurationTableCopy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_disposition, as: 'createDisposition'
          property :destination_encryption_configuration, as: 'destinationEncryptionConfiguration', class: Google::Apis::BigqueryV2::EncryptionConfiguration, decorator: Google::Apis::BigqueryV2::EncryptionConfiguration::Representation
      
          property :destination_table, as: 'destinationTable', class: Google::Apis::BigqueryV2::TableReference, decorator: Google::Apis::BigqueryV2::TableReference::Representation
      
          property :source_table, as: 'sourceTable', class: Google::Apis::BigqueryV2::TableReference, decorator: Google::Apis::BigqueryV2::TableReference::Representation
      
          collection :source_tables, as: 'sourceTables', class: Google::Apis::BigqueryV2::TableReference, decorator: Google::Apis::BigqueryV2::TableReference::Representation
      
          property :write_disposition, as: 'writeDisposition'
        end
      end
      
      class JobList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          collection :jobs, as: 'jobs', class: Google::Apis::BigqueryV2::JobList::Job, decorator: Google::Apis::BigqueryV2::JobList::Job::Representation
      
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
        end
        
        class Job
          # @private
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
      
      class JobReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :job_id, as: 'jobId'
          property :project_id, as: 'projectId'
        end
      end
      
      class JobStatistics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_time, :numeric_string => true, as: 'creationTime'
          property :end_time, :numeric_string => true, as: 'endTime'
          property :extract, as: 'extract', class: Google::Apis::BigqueryV2::JobStatistics4, decorator: Google::Apis::BigqueryV2::JobStatistics4::Representation
      
          property :load, as: 'load', class: Google::Apis::BigqueryV2::JobStatistics3, decorator: Google::Apis::BigqueryV2::JobStatistics3::Representation
      
          property :query, as: 'query', class: Google::Apis::BigqueryV2::JobStatistics2, decorator: Google::Apis::BigqueryV2::JobStatistics2::Representation
      
          property :start_time, :numeric_string => true, as: 'startTime'
          property :total_bytes_processed, :numeric_string => true, as: 'totalBytesProcessed'
        end
      end
      
      class JobStatistics2
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :billing_tier, as: 'billingTier'
          property :cache_hit, as: 'cacheHit'
          property :num_dml_affected_rows, :numeric_string => true, as: 'numDmlAffectedRows'
          collection :query_plan, as: 'queryPlan', class: Google::Apis::BigqueryV2::ExplainQueryStage, decorator: Google::Apis::BigqueryV2::ExplainQueryStage::Representation
      
          collection :referenced_tables, as: 'referencedTables', class: Google::Apis::BigqueryV2::TableReference, decorator: Google::Apis::BigqueryV2::TableReference::Representation
      
          property :schema, as: 'schema', class: Google::Apis::BigqueryV2::TableSchema, decorator: Google::Apis::BigqueryV2::TableSchema::Representation
      
          property :statement_type, as: 'statementType'
          property :total_bytes_billed, :numeric_string => true, as: 'totalBytesBilled'
          property :total_bytes_processed, :numeric_string => true, as: 'totalBytesProcessed'
          property :total_slot_ms, :numeric_string => true, as: 'totalSlotMs'
          collection :undeclared_query_parameters, as: 'undeclaredQueryParameters', class: Google::Apis::BigqueryV2::QueryParameter, decorator: Google::Apis::BigqueryV2::QueryParameter::Representation
      
        end
      end
      
      class JobStatistics3
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bad_records, :numeric_string => true, as: 'badRecords'
          property :input_file_bytes, :numeric_string => true, as: 'inputFileBytes'
          property :input_files, :numeric_string => true, as: 'inputFiles'
          property :output_bytes, :numeric_string => true, as: 'outputBytes'
          property :output_rows, :numeric_string => true, as: 'outputRows'
        end
      end
      
      class JobStatistics4
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :destination_uri_file_counts, as: 'destinationUriFileCounts'
        end
      end
      
      class JobStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_result, as: 'errorResult', class: Google::Apis::BigqueryV2::ErrorProto, decorator: Google::Apis::BigqueryV2::ErrorProto::Representation
      
          collection :errors, as: 'errors', class: Google::Apis::BigqueryV2::ErrorProto, decorator: Google::Apis::BigqueryV2::ErrorProto::Representation
      
          property :state, as: 'state'
        end
      end
      
      class ProjectList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :projects, as: 'projects', class: Google::Apis::BigqueryV2::ProjectList::Project, decorator: Google::Apis::BigqueryV2::ProjectList::Project::Representation
      
          property :total_items, as: 'totalItems'
        end
        
        class Project
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :friendly_name, as: 'friendlyName'
            property :id, as: 'id'
            property :kind, as: 'kind'
            property :numeric_id, :numeric_string => true, as: 'numericId'
            property :project_reference, as: 'projectReference', class: Google::Apis::BigqueryV2::ProjectReference, decorator: Google::Apis::BigqueryV2::ProjectReference::Representation
        
          end
        end
      end
      
      class ProjectReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :project_id, as: 'projectId'
        end
      end
      
      class QueryParameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :parameter_type, as: 'parameterType', class: Google::Apis::BigqueryV2::QueryParameterType, decorator: Google::Apis::BigqueryV2::QueryParameterType::Representation
      
          property :parameter_value, as: 'parameterValue', class: Google::Apis::BigqueryV2::QueryParameterValue, decorator: Google::Apis::BigqueryV2::QueryParameterValue::Representation
      
        end
      end
      
      class QueryParameterType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :array_type, as: 'arrayType', class: Google::Apis::BigqueryV2::QueryParameterType, decorator: Google::Apis::BigqueryV2::QueryParameterType::Representation
      
          collection :struct_types, as: 'structTypes', class: Google::Apis::BigqueryV2::QueryParameterType::StructType, decorator: Google::Apis::BigqueryV2::QueryParameterType::StructType::Representation
      
          property :type, as: 'type'
        end
        
        class StructType
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :description, as: 'description'
            property :name, as: 'name'
            property :type, as: 'type', class: Google::Apis::BigqueryV2::QueryParameterType, decorator: Google::Apis::BigqueryV2::QueryParameterType::Representation
        
          end
        end
      end
      
      class QueryParameterValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :array_values, as: 'arrayValues', class: Google::Apis::BigqueryV2::QueryParameterValue, decorator: Google::Apis::BigqueryV2::QueryParameterValue::Representation
      
          hash :struct_values, as: 'structValues', class: Google::Apis::BigqueryV2::QueryParameterValue, decorator: Google::Apis::BigqueryV2::QueryParameterValue::Representation
      
          property :value, as: 'value'
        end
      end
      
      class QueryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_dataset, as: 'defaultDataset', class: Google::Apis::BigqueryV2::DatasetReference, decorator: Google::Apis::BigqueryV2::DatasetReference::Representation
      
          property :dry_run, as: 'dryRun'
          property :kind, as: 'kind'
          property :max_results, as: 'maxResults'
          property :parameter_mode, as: 'parameterMode'
          property :preserve_nulls, as: 'preserveNulls'
          property :query, as: 'query'
          collection :query_parameters, as: 'queryParameters', class: Google::Apis::BigqueryV2::QueryParameter, decorator: Google::Apis::BigqueryV2::QueryParameter::Representation
      
          property :timeout_ms, as: 'timeoutMs'
          property :use_legacy_sql, as: 'useLegacySql'
          property :use_query_cache, as: 'useQueryCache'
        end
      end
      
      class QueryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cache_hit, as: 'cacheHit'
          collection :errors, as: 'errors', class: Google::Apis::BigqueryV2::ErrorProto, decorator: Google::Apis::BigqueryV2::ErrorProto::Representation
      
          property :job_complete, as: 'jobComplete'
          property :job_reference, as: 'jobReference', class: Google::Apis::BigqueryV2::JobReference, decorator: Google::Apis::BigqueryV2::JobReference::Representation
      
          property :kind, as: 'kind'
          property :num_dml_affected_rows, :numeric_string => true, as: 'numDmlAffectedRows'
          property :page_token, as: 'pageToken'
          collection :rows, as: 'rows', class: Google::Apis::BigqueryV2::TableRow, decorator: Google::Apis::BigqueryV2::TableRow::Representation
      
          property :schema, as: 'schema', class: Google::Apis::BigqueryV2::TableSchema, decorator: Google::Apis::BigqueryV2::TableSchema::Representation
      
          property :total_bytes_processed, :numeric_string => true, as: 'totalBytesProcessed'
          property :total_rows, :numeric_string => true, as: 'totalRows'
        end
      end
      
      class Streamingbuffer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :estimated_bytes, :numeric_string => true, as: 'estimatedBytes'
          property :estimated_rows, :numeric_string => true, as: 'estimatedRows'
          property :oldest_entry_time, :numeric_string => true, as: 'oldestEntryTime'
        end
      end
      
      class Table
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_time, :numeric_string => true, as: 'creationTime'
          property :description, as: 'description'
          property :encryption_configuration, as: 'encryptionConfiguration', class: Google::Apis::BigqueryV2::EncryptionConfiguration, decorator: Google::Apis::BigqueryV2::EncryptionConfiguration::Representation
      
          property :etag, as: 'etag'
          property :expiration_time, :numeric_string => true, as: 'expirationTime'
          property :external_data_configuration, as: 'externalDataConfiguration', class: Google::Apis::BigqueryV2::ExternalDataConfiguration, decorator: Google::Apis::BigqueryV2::ExternalDataConfiguration::Representation
      
          property :friendly_name, as: 'friendlyName'
          property :id, as: 'id'
          property :kind, as: 'kind'
          hash :labels, as: 'labels'
          property :last_modified_time, :numeric_string => true, as: 'lastModifiedTime'
          property :location, as: 'location'
          property :num_bytes, :numeric_string => true, as: 'numBytes'
          property :num_long_term_bytes, :numeric_string => true, as: 'numLongTermBytes'
          property :num_rows, :numeric_string => true, as: 'numRows'
          property :schema, as: 'schema', class: Google::Apis::BigqueryV2::TableSchema, decorator: Google::Apis::BigqueryV2::TableSchema::Representation
      
          property :self_link, as: 'selfLink'
          property :streaming_buffer, as: 'streamingBuffer', class: Google::Apis::BigqueryV2::Streamingbuffer, decorator: Google::Apis::BigqueryV2::Streamingbuffer::Representation
      
          property :table_reference, as: 'tableReference', class: Google::Apis::BigqueryV2::TableReference, decorator: Google::Apis::BigqueryV2::TableReference::Representation
      
          property :time_partitioning, as: 'timePartitioning', class: Google::Apis::BigqueryV2::TimePartitioning, decorator: Google::Apis::BigqueryV2::TimePartitioning::Representation
      
          property :type, as: 'type'
          property :view, as: 'view', class: Google::Apis::BigqueryV2::ViewDefinition, decorator: Google::Apis::BigqueryV2::ViewDefinition::Representation
      
        end
      end
      
      class TableCell
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :v, as: 'v'
        end
      end
      
      class InsertAllTableDataRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ignore_unknown_values, as: 'ignoreUnknownValues'
          property :kind, as: 'kind'
          collection :rows, as: 'rows', class: Google::Apis::BigqueryV2::InsertAllTableDataRequest::Row, decorator: Google::Apis::BigqueryV2::InsertAllTableDataRequest::Row::Representation
      
          property :skip_invalid_rows, as: 'skipInvalidRows'
          property :template_suffix, as: 'templateSuffix'
        end
        
        class Row
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :insert_id, as: 'insertId'
            hash :json, as: 'json'
          end
        end
      end
      
      class InsertAllTableDataResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :insert_errors, as: 'insertErrors', class: Google::Apis::BigqueryV2::InsertAllTableDataResponse::InsertError, decorator: Google::Apis::BigqueryV2::InsertAllTableDataResponse::InsertError::Representation
      
          property :kind, as: 'kind'
        end
        
        class InsertError
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            collection :errors, as: 'errors', class: Google::Apis::BigqueryV2::ErrorProto, decorator: Google::Apis::BigqueryV2::ErrorProto::Representation
        
            property :index, as: 'index'
          end
        end
      end
      
      class TableDataList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :kind, as: 'kind'
          property :page_token, as: 'pageToken'
          collection :rows, as: 'rows', class: Google::Apis::BigqueryV2::TableRow, decorator: Google::Apis::BigqueryV2::TableRow::Representation
      
          property :total_rows, :numeric_string => true, as: 'totalRows'
        end
      end
      
      class TableFieldSchema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          collection :fields, as: 'fields', class: Google::Apis::BigqueryV2::TableFieldSchema, decorator: Google::Apis::BigqueryV2::TableFieldSchema::Representation
      
          property :mode, as: 'mode'
          property :name, as: 'name'
          property :type, as: 'type'
        end
      end
      
      class TableList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :tables, as: 'tables', class: Google::Apis::BigqueryV2::TableList::Table, decorator: Google::Apis::BigqueryV2::TableList::Table::Representation
      
          property :total_items, as: 'totalItems'
        end
        
        class Table
          # @private
          class Representation < Google::Apis::Core::JsonRepresentation
            property :friendly_name, as: 'friendlyName'
            property :id, as: 'id'
            property :kind, as: 'kind'
            hash :labels, as: 'labels'
            property :table_reference, as: 'tableReference', class: Google::Apis::BigqueryV2::TableReference, decorator: Google::Apis::BigqueryV2::TableReference::Representation
        
            property :time_partitioning, as: 'timePartitioning', class: Google::Apis::BigqueryV2::TimePartitioning, decorator: Google::Apis::BigqueryV2::TimePartitioning::Representation
        
            property :type, as: 'type'
            property :view, as: 'view', class: Google::Apis::BigqueryV2::TableList::Table::View, decorator: Google::Apis::BigqueryV2::TableList::Table::View::Representation
        
          end
          
          class View
            # @private
            class Representation < Google::Apis::Core::JsonRepresentation
              property :use_legacy_sql, as: 'useLegacySql'
            end
          end
        end
      end
      
      class TableReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset_id, as: 'datasetId'
          property :project_id, as: 'projectId'
          property :table_id, as: 'tableId'
        end
      end
      
      class TableRow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :f, as: 'f', class: Google::Apis::BigqueryV2::TableCell, decorator: Google::Apis::BigqueryV2::TableCell::Representation
      
        end
      end
      
      class TableSchema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :fields, as: 'fields', class: Google::Apis::BigqueryV2::TableFieldSchema, decorator: Google::Apis::BigqueryV2::TableFieldSchema::Representation
      
        end
      end
      
      class TimePartitioning
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expiration_ms, :numeric_string => true, as: 'expirationMs'
          property :field, as: 'field'
          property :type, as: 'type'
        end
      end
      
      class UserDefinedFunctionResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inline_code, as: 'inlineCode'
          property :resource_uri, as: 'resourceUri'
        end
      end
      
      class ViewDefinition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query, as: 'query'
          property :use_legacy_sql, as: 'useLegacySql'
          collection :user_defined_function_resources, as: 'userDefinedFunctionResources', class: Google::Apis::BigqueryV2::UserDefinedFunctionResource, decorator: Google::Apis::BigqueryV2::UserDefinedFunctionResource::Representation
      
        end
      end
    end
  end
end
