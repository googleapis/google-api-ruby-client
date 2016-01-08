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
      
      # 
      class CsvOptions
        include Google::Apis::Core::Hashable
      
        # [Optional] Indicates if BigQuery should accept rows that are missing trailing
        # optional columns. If true, BigQuery treats missing trailing columns as null
        # values. If false, records with missing trailing columns are treated as bad
        # records, and if there are too many bad records, an invalid error is returned
        # in the job result. The default value is false.
        # Corresponds to the JSON property `allowJaggedRows`
        # @return [Boolean]
        attr_accessor :allow_jagged_rows
        alias_method :allow_jagged_rows?, :allow_jagged_rows
      
        # [Optional] Indicates if BigQuery should allow quoted data sections that
        # contain newline characters in a CSV file. The default value is false.
        # Corresponds to the JSON property `allowQuotedNewlines`
        # @return [Boolean]
        attr_accessor :allow_quoted_newlines
        alias_method :allow_quoted_newlines?, :allow_quoted_newlines
      
        # [Optional] The character encoding of the data. The supported values are UTF-8
        # or ISO-8859-1. The default value is UTF-8. BigQuery decodes the data after the
        # raw, binary data has been split using the values of the quote and
        # fieldDelimiter properties.
        # Corresponds to the JSON property `encoding`
        # @return [String]
        attr_accessor :encoding
      
        # [Optional] The separator for fields in a CSV file. BigQuery converts the
        # string to ISO-8859-1 encoding, and then uses the first byte of the encoded
        # string to split the data in its raw, binary state. BigQuery also supports the
        # escape sequence "\t" to specify a tab separator. The default value is a comma (
        # ',').
        # Corresponds to the JSON property `fieldDelimiter`
        # @return [String]
        attr_accessor :field_delimiter
      
        # [Optional] The value that is used to quote data sections in a CSV file.
        # BigQuery converts the string to ISO-8859-1 encoding, and then uses the first
        # byte of the encoded string to split the data in its raw, binary state. The
        # default value is a double-quote ('"'). If your data does not contain quoted
        # sections, set the property value to an empty string. If your data contains
        # quoted newline characters, you must also set the allowQuotedNewlines property
        # to true.
        # Corresponds to the JSON property `quote`
        # @return [String]
        attr_accessor :quote
      
        # [Optional] The number of rows at the top of a CSV file that BigQuery will skip
        # when reading the data. The default value is 0. This property is useful if you
        # have header rows in the file that should be skipped.
        # Corresponds to the JSON property `skipLeadingRows`
        # @return [Fixnum]
        attr_accessor :skip_leading_rows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_jagged_rows = args[:allow_jagged_rows] unless args[:allow_jagged_rows].nil?
          @allow_quoted_newlines = args[:allow_quoted_newlines] unless args[:allow_quoted_newlines].nil?
          @encoding = args[:encoding] unless args[:encoding].nil?
          @field_delimiter = args[:field_delimiter] unless args[:field_delimiter].nil?
          @quote = args[:quote] unless args[:quote].nil?
          @skip_leading_rows = args[:skip_leading_rows] unless args[:skip_leading_rows].nil?
        end
      end
      
      # 
      class Dataset
        include Google::Apis::Core::Hashable
      
        # [Optional] An array of objects that define dataset access for one or more
        # entities. You can set this property when inserting or updating a dataset in
        # order to control who is allowed to access the data. If unspecified at dataset
        # creation time, BigQuery adds default dataset access for the following entities:
        # access.specialGroup: projectReaders; access.role: READER; access.specialGroup:
        # projectWriters; access.role: WRITER; access.specialGroup: projectOwners;
        # access.role: OWNER; access.userByEmail: [dataset creator email]; access.role:
        # OWNER;
        # Corresponds to the JSON property `access`
        # @return [Array<Google::Apis::BigqueryV2::Dataset::Access>]
        attr_accessor :access
      
        # [Output-only] The time when this dataset was created, in milliseconds since
        # the epoch.
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # [Required] A reference that identifies the dataset.
        # Corresponds to the JSON property `datasetReference`
        # @return [Google::Apis::BigqueryV2::DatasetReference]
        attr_accessor :dataset_reference
      
        # [Experimental] The default lifetime of all tables in the dataset, in
        # milliseconds. The minimum value is 3600000 milliseconds (one hour). Once this
        # property is set, all newly-created tables in the dataset will have an
        # expirationTime property set to the creation time plus the value in this
        # property, and changing the value will only affect new tables, not existing
        # ones. When the expirationTime for a given table is reached, that table will be
        # deleted automatically. If a table's expirationTime is modified or removed
        # before the table expires, or if you provide an explicit expirationTime when
        # creating a table, that value takes precedence over the default expiration time
        # indicated by this property.
        # Corresponds to the JSON property `defaultTableExpirationMs`
        # @return [String]
        attr_accessor :default_table_expiration_ms
      
        # [Optional] A user-friendly description of the dataset.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output-only] A hash of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # [Optional] A descriptive name for the dataset.
        # Corresponds to the JSON property `friendlyName`
        # @return [String]
        attr_accessor :friendly_name
      
        # [Output-only] The fully-qualified unique name of the dataset in the format
        # projectId:datasetId. The dataset name without the project name is given in the
        # datasetId field. When creating a new dataset, leave this field blank, and
        # instead specify the datasetId field.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output-only] The resource type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output-only] The date when this dataset or any of its tables was last
        # modified, in milliseconds since the epoch.
        # Corresponds to the JSON property `lastModifiedTime`
        # @return [String]
        attr_accessor :last_modified_time
      
        # [Experimental] The geographic location where the dataset should reside.
        # Possible values include EU and US. The default value is US.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # [Output-only] A URL that can be used to access the resource again. You can use
        # this URL in Get or Update requests to the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access = args[:access] unless args[:access].nil?
          @creation_time = args[:creation_time] unless args[:creation_time].nil?
          @dataset_reference = args[:dataset_reference] unless args[:dataset_reference].nil?
          @default_table_expiration_ms = args[:default_table_expiration_ms] unless args[:default_table_expiration_ms].nil?
          @description = args[:description] unless args[:description].nil?
          @etag = args[:etag] unless args[:etag].nil?
          @friendly_name = args[:friendly_name] unless args[:friendly_name].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @last_modified_time = args[:last_modified_time] unless args[:last_modified_time].nil?
          @location = args[:location] unless args[:location].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
        end
        
        # 
        class Access
          include Google::Apis::Core::Hashable
        
          # [Pick one] A domain to grant access to. Any users signed in with the domain
          # specified will be granted the specified access. Example: "example.com".
          # Corresponds to the JSON property `domain`
          # @return [String]
          attr_accessor :domain
        
          # [Pick one] An email address of a Google Group to grant access to.
          # Corresponds to the JSON property `groupByEmail`
          # @return [String]
          attr_accessor :group_by_email
        
          # [Required] Describes the rights granted to the user specified by the other
          # member of the access object. The following string values are supported: READER,
          # WRITER, OWNER.
          # Corresponds to the JSON property `role`
          # @return [String]
          attr_accessor :role
        
          # [Pick one] A special group to grant access to. Possible values include:
          # projectOwners: Owners of the enclosing project. projectReaders: Readers of the
          # enclosing project. projectWriters: Writers of the enclosing project.
          # allAuthenticatedUsers: All authenticated BigQuery users.
          # Corresponds to the JSON property `specialGroup`
          # @return [String]
          attr_accessor :special_group
        
          # [Pick one] An email address of a user to grant access to. For example: fred@
          # example.com.
          # Corresponds to the JSON property `userByEmail`
          # @return [String]
          attr_accessor :user_by_email
        
          # [Pick one] A view from a different dataset to grant access to. Queries
          # executed against that view will have read access to tables in this dataset.
          # The role field is not required when this field is set. If that view is updated
          # by any user, access to the view needs to be granted again via an update
          # operation.
          # Corresponds to the JSON property `view`
          # @return [Google::Apis::BigqueryV2::TableReference]
          attr_accessor :view
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @domain = args[:domain] unless args[:domain].nil?
            @group_by_email = args[:group_by_email] unless args[:group_by_email].nil?
            @role = args[:role] unless args[:role].nil?
            @special_group = args[:special_group] unless args[:special_group].nil?
            @user_by_email = args[:user_by_email] unless args[:user_by_email].nil?
            @view = args[:view] unless args[:view].nil?
          end
        end
      end
      
      # 
      class DatasetList
        include Google::Apis::Core::Hashable
      
        # An array of the dataset resources in the project. Each resource contains basic
        # information. For full information about a particular dataset resource, use the
        # Datasets: get method. This property is omitted when there are no datasets in
        # the project.
        # Corresponds to the JSON property `datasets`
        # @return [Array<Google::Apis::BigqueryV2::DatasetList::Dataset>]
        attr_accessor :datasets
      
        # A hash value of the results page. You can use this property to determine if
        # the page has changed since the last request.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The list type. This property always returns the value "bigquery#datasetList".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A token that can be used to request the next results page. This property is
        # omitted on the final results page.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @datasets = args[:datasets] unless args[:datasets].nil?
          @etag = args[:etag] unless args[:etag].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
        
        # 
        class Dataset
          include Google::Apis::Core::Hashable
        
          # The dataset reference. Use this property to access specific parts of the
          # dataset's ID, such as project ID or dataset ID.
          # Corresponds to the JSON property `datasetReference`
          # @return [Google::Apis::BigqueryV2::DatasetReference]
          attr_accessor :dataset_reference
        
          # A descriptive name for the dataset, if one exists.
          # Corresponds to the JSON property `friendlyName`
          # @return [String]
          attr_accessor :friendly_name
        
          # The fully-qualified, unique, opaque ID of the dataset.
          # Corresponds to the JSON property `id`
          # @return [String]
          attr_accessor :id
        
          # The resource type. This property always returns the value "bigquery#dataset".
          # Corresponds to the JSON property `kind`
          # @return [String]
          attr_accessor :kind
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @dataset_reference = args[:dataset_reference] unless args[:dataset_reference].nil?
            @friendly_name = args[:friendly_name] unless args[:friendly_name].nil?
            @id = args[:id] unless args[:id].nil?
            @kind = args[:kind] unless args[:kind].nil?
          end
        end
      end
      
      # 
      class DatasetReference
        include Google::Apis::Core::Hashable
      
        # [Required] A unique ID for this dataset, without the project name. The ID must
        # contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The
        # maximum length is 1,024 characters.
        # Corresponds to the JSON property `datasetId`
        # @return [String]
        attr_accessor :dataset_id
      
        # [Optional] The ID of the project containing this dataset.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset_id = args[:dataset_id] unless args[:dataset_id].nil?
          @project_id = args[:project_id] unless args[:project_id].nil?
        end
      end
      
      # 
      class ErrorProto
        include Google::Apis::Core::Hashable
      
        # Debugging information. This property is internal to Google and should not be
        # used.
        # Corresponds to the JSON property `debugInfo`
        # @return [String]
        attr_accessor :debug_info
      
        # Specifies where the error occurred, if present.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # A human-readable description of the error.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # A short error code that summarizes the error.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @debug_info = args[:debug_info] unless args[:debug_info].nil?
          @location = args[:location] unless args[:location].nil?
          @message = args[:message] unless args[:message].nil?
          @reason = args[:reason] unless args[:reason].nil?
        end
      end
      
      # 
      class ExplainQueryStage
        include Google::Apis::Core::Hashable
      
        # Relative amount of time the average shard spent on CPU-bound tasks.
        # Corresponds to the JSON property `computeRatioAvg`
        # @return [Float]
        attr_accessor :compute_ratio_avg
      
        # Relative amount of time the slowest shard spent on CPU-bound tasks.
        # Corresponds to the JSON property `computeRatioMax`
        # @return [Float]
        attr_accessor :compute_ratio_max
      
        # Unique ID for stage within plan.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Human-readable name for stage.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Relative amount of time the average shard spent reading input.
        # Corresponds to the JSON property `readRatioAvg`
        # @return [Float]
        attr_accessor :read_ratio_avg
      
        # Relative amount of time the slowest shard spent reading input.
        # Corresponds to the JSON property `readRatioMax`
        # @return [Float]
        attr_accessor :read_ratio_max
      
        # Number of records read into the stage.
        # Corresponds to the JSON property `recordsRead`
        # @return [String]
        attr_accessor :records_read
      
        # Number of records written by the stage.
        # Corresponds to the JSON property `recordsWritten`
        # @return [String]
        attr_accessor :records_written
      
        # List of operations within the stage in dependency order (approximately
        # chronological).
        # Corresponds to the JSON property `steps`
        # @return [Array<Google::Apis::BigqueryV2::ExplainQueryStep>]
        attr_accessor :steps
      
        # Relative amount of time the average shard spent waiting to be scheduled.
        # Corresponds to the JSON property `waitRatioAvg`
        # @return [Float]
        attr_accessor :wait_ratio_avg
      
        # Relative amount of time the slowest shard spent waiting to be scheduled.
        # Corresponds to the JSON property `waitRatioMax`
        # @return [Float]
        attr_accessor :wait_ratio_max
      
        # Relative amount of time the average shard spent on writing output.
        # Corresponds to the JSON property `writeRatioAvg`
        # @return [Float]
        attr_accessor :write_ratio_avg
      
        # Relative amount of time the slowest shard spent on writing output.
        # Corresponds to the JSON property `writeRatioMax`
        # @return [Float]
        attr_accessor :write_ratio_max
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compute_ratio_avg = args[:compute_ratio_avg] unless args[:compute_ratio_avg].nil?
          @compute_ratio_max = args[:compute_ratio_max] unless args[:compute_ratio_max].nil?
          @id = args[:id] unless args[:id].nil?
          @name = args[:name] unless args[:name].nil?
          @read_ratio_avg = args[:read_ratio_avg] unless args[:read_ratio_avg].nil?
          @read_ratio_max = args[:read_ratio_max] unless args[:read_ratio_max].nil?
          @records_read = args[:records_read] unless args[:records_read].nil?
          @records_written = args[:records_written] unless args[:records_written].nil?
          @steps = args[:steps] unless args[:steps].nil?
          @wait_ratio_avg = args[:wait_ratio_avg] unless args[:wait_ratio_avg].nil?
          @wait_ratio_max = args[:wait_ratio_max] unless args[:wait_ratio_max].nil?
          @write_ratio_avg = args[:write_ratio_avg] unless args[:write_ratio_avg].nil?
          @write_ratio_max = args[:write_ratio_max] unless args[:write_ratio_max].nil?
        end
      end
      
      # 
      class ExplainQueryStep
        include Google::Apis::Core::Hashable
      
        # Machine-readable operation type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Human-readable stage descriptions.
        # Corresponds to the JSON property `substeps`
        # @return [Array<String>]
        attr_accessor :substeps
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @substeps = args[:substeps] unless args[:substeps].nil?
        end
      end
      
      # 
      class ExternalDataConfiguration
        include Google::Apis::Core::Hashable
      
        # [Optional] The compression type of the data source. Possible values include
        # GZIP and NONE. The default value is NONE. This setting is ignored for Google
        # Cloud Datastore backups.
        # Corresponds to the JSON property `compression`
        # @return [String]
        attr_accessor :compression
      
        # Additional properties to set if sourceFormat is set to CSV.
        # Corresponds to the JSON property `csvOptions`
        # @return [Google::Apis::BigqueryV2::CsvOptions]
        attr_accessor :csv_options
      
        # [Optional] Indicates if BigQuery should allow extra values that are not
        # represented in the table schema. If true, the extra values are ignored. If
        # false, records with extra columns are treated as bad records, and if there are
        # too many bad records, an invalid error is returned in the job result. The
        # default value is false. The sourceFormat property determines what BigQuery
        # treats as an extra value: CSV: Trailing columns JSON: Named values that don't
        # match any column names Google Cloud Datastore backups: This setting is ignored.
        # Corresponds to the JSON property `ignoreUnknownValues`
        # @return [Boolean]
        attr_accessor :ignore_unknown_values
        alias_method :ignore_unknown_values?, :ignore_unknown_values
      
        # [Optional] The maximum number of bad records that BigQuery can ignore when
        # reading data. If the number of bad records exceeds this value, an invalid
        # error is returned in the job result. The default value is 0, which requires
        # that all records are valid. This setting is ignored for Google Cloud Datastore
        # backups.
        # Corresponds to the JSON property `maxBadRecords`
        # @return [Fixnum]
        attr_accessor :max_bad_records
      
        # [Optional] The schema for the data. Schema is required for CSV and JSON
        # formats. Schema is disallowed for Google Cloud Datastore backups.
        # Corresponds to the JSON property `schema`
        # @return [Google::Apis::BigqueryV2::TableSchema]
        attr_accessor :schema
      
        # [Required] The data format. For CSV files, specify "CSV". For newline-
        # delimited JSON, specify "NEWLINE_DELIMITED_JSON". For Google Cloud Datastore
        # backups, specify "DATASTORE_BACKUP".
        # Corresponds to the JSON property `sourceFormat`
        # @return [String]
        attr_accessor :source_format
      
        # [Required] The fully-qualified URIs that point to your data in Google Cloud
        # Storage. Each URI can contain one '*' wildcard character and it must come
        # after the 'bucket' name. Size limits related to load jobs apply to external
        # data sources, plus an additional limit of 10 GB maximum size across all URIs.
        # For Google Cloud Datastore backups, exactly one URI can be specified, and it
        # must end with '.backup_info'. Also, the '*' wildcard character is not allowed.
        # Corresponds to the JSON property `sourceUris`
        # @return [Array<String>]
        attr_accessor :source_uris
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compression = args[:compression] unless args[:compression].nil?
          @csv_options = args[:csv_options] unless args[:csv_options].nil?
          @ignore_unknown_values = args[:ignore_unknown_values] unless args[:ignore_unknown_values].nil?
          @max_bad_records = args[:max_bad_records] unless args[:max_bad_records].nil?
          @schema = args[:schema] unless args[:schema].nil?
          @source_format = args[:source_format] unless args[:source_format].nil?
          @source_uris = args[:source_uris] unless args[:source_uris].nil?
        end
      end
      
      # 
      class GetQueryResultsResponse
        include Google::Apis::Core::Hashable
      
        # Whether the query result was fetched from the query cache.
        # Corresponds to the JSON property `cacheHit`
        # @return [Boolean]
        attr_accessor :cache_hit
        alias_method :cache_hit?, :cache_hit
      
        # [Output-only] All errors and warnings encountered during the running of the
        # job. Errors here do not necessarily mean that the job has completed or was
        # unsuccessful.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::BigqueryV2::ErrorProto>]
        attr_accessor :errors
      
        # A hash of this response.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Whether the query has completed or not. If rows or totalRows are present, this
        # will always be true. If this is false, totalRows will not be available.
        # Corresponds to the JSON property `jobComplete`
        # @return [Boolean]
        attr_accessor :job_complete
        alias_method :job_complete?, :job_complete
      
        # Reference to the BigQuery Job that was created to run the query. This field
        # will be present even if the original request timed out, in which case
        # GetQueryResults can be used to read the results once the query has completed.
        # Since this API only returns the first page of results, subsequent pages can be
        # fetched via the same mechanism (GetQueryResults).
        # Corresponds to the JSON property `jobReference`
        # @return [Google::Apis::BigqueryV2::JobReference]
        attr_accessor :job_reference
      
        # The resource type of the response.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A token used for paging results.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # An object with as many results as can be contained within the maximum
        # permitted reply size. To get any additional rows, you can call GetQueryResults
        # and specify the jobReference returned above. Present only when the query
        # completes successfully.
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::BigqueryV2::TableRow>]
        attr_accessor :rows
      
        # The schema of the results. Present only when the query completes successfully.
        # Corresponds to the JSON property `schema`
        # @return [Google::Apis::BigqueryV2::TableSchema]
        attr_accessor :schema
      
        # The total number of bytes processed for this query.
        # Corresponds to the JSON property `totalBytesProcessed`
        # @return [String]
        attr_accessor :total_bytes_processed
      
        # The total number of rows in the complete query result set, which can be more
        # than the number of rows in this single page of results. Present only when the
        # query completes successfully.
        # Corresponds to the JSON property `totalRows`
        # @return [String]
        attr_accessor :total_rows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cache_hit = args[:cache_hit] unless args[:cache_hit].nil?
          @errors = args[:errors] unless args[:errors].nil?
          @etag = args[:etag] unless args[:etag].nil?
          @job_complete = args[:job_complete] unless args[:job_complete].nil?
          @job_reference = args[:job_reference] unless args[:job_reference].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @page_token = args[:page_token] unless args[:page_token].nil?
          @rows = args[:rows] unless args[:rows].nil?
          @schema = args[:schema] unless args[:schema].nil?
          @total_bytes_processed = args[:total_bytes_processed] unless args[:total_bytes_processed].nil?
          @total_rows = args[:total_rows] unless args[:total_rows].nil?
        end
      end
      
      # 
      class Job
        include Google::Apis::Core::Hashable
      
        # [Required] Describes the job configuration.
        # Corresponds to the JSON property `configuration`
        # @return [Google::Apis::BigqueryV2::JobConfiguration]
        attr_accessor :configuration
      
        # [Output-only] A hash of this resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # [Output-only] Opaque ID field of the job
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Optional] Reference describing the unique-per-user name of the job.
        # Corresponds to the JSON property `jobReference`
        # @return [Google::Apis::BigqueryV2::JobReference]
        attr_accessor :job_reference
      
        # [Output-only] The type of the resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output-only] A URL that can be used to access this resource again.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output-only] Information about the job, including starting time and ending
        # time of the job.
        # Corresponds to the JSON property `statistics`
        # @return [Google::Apis::BigqueryV2::JobStatistics]
        attr_accessor :statistics
      
        # [Output-only] The status of this job. Examine this value when polling an
        # asynchronous job to see if the job is complete.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::BigqueryV2::JobStatus]
        attr_accessor :status
      
        # [Output-only] Email address of the user who ran the job.
        # Corresponds to the JSON property `user_email`
        # @return [String]
        attr_accessor :user_email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @configuration = args[:configuration] unless args[:configuration].nil?
          @etag = args[:etag] unless args[:etag].nil?
          @id = args[:id] unless args[:id].nil?
          @job_reference = args[:job_reference] unless args[:job_reference].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @statistics = args[:statistics] unless args[:statistics].nil?
          @status = args[:status] unless args[:status].nil?
          @user_email = args[:user_email] unless args[:user_email].nil?
        end
      end
      
      # 
      class CancelJobResponse
        include Google::Apis::Core::Hashable
      
        # The final state of the job.
        # Corresponds to the JSON property `job`
        # @return [Google::Apis::BigqueryV2::Job]
        attr_accessor :job
      
        # The resource type of the response.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @job = args[:job] unless args[:job].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # 
      class JobConfiguration
        include Google::Apis::Core::Hashable
      
        # [Pick one] Copies a table.
        # Corresponds to the JSON property `copy`
        # @return [Google::Apis::BigqueryV2::JobConfigurationTableCopy]
        attr_accessor :copy
      
        # [Optional] If set, don't actually run this job. A valid query will return a
        # mostly empty response with some processing statistics, while an invalid query
        # will return the same error it would if it wasn't a dry run. Behavior of non-
        # query jobs is undefined.
        # Corresponds to the JSON property `dryRun`
        # @return [Boolean]
        attr_accessor :dry_run
        alias_method :dry_run?, :dry_run
      
        # [Pick one] Configures an extract job.
        # Corresponds to the JSON property `extract`
        # @return [Google::Apis::BigqueryV2::JobConfigurationExtract]
        attr_accessor :extract
      
        # [Pick one] Configures a load job.
        # Corresponds to the JSON property `load`
        # @return [Google::Apis::BigqueryV2::JobConfigurationLoad]
        attr_accessor :load
      
        # [Pick one] Configures a query job.
        # Corresponds to the JSON property `query`
        # @return [Google::Apis::BigqueryV2::JobConfigurationQuery]
        attr_accessor :query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @copy = args[:copy] unless args[:copy].nil?
          @dry_run = args[:dry_run] unless args[:dry_run].nil?
          @extract = args[:extract] unless args[:extract].nil?
          @load = args[:load] unless args[:load].nil?
          @query = args[:query] unless args[:query].nil?
        end
      end
      
      # 
      class JobConfigurationExtract
        include Google::Apis::Core::Hashable
      
        # [Optional] The compression type to use for exported files. Possible values
        # include GZIP and NONE. The default value is NONE.
        # Corresponds to the JSON property `compression`
        # @return [String]
        attr_accessor :compression
      
        # [Optional] The exported file format. Possible values include CSV,
        # NEWLINE_DELIMITED_JSON and AVRO. The default value is CSV. Tables with nested
        # or repeated fields cannot be exported as CSV.
        # Corresponds to the JSON property `destinationFormat`
        # @return [String]
        attr_accessor :destination_format
      
        # [Pick one] DEPRECATED: Use destinationUris instead, passing only one URI as
        # necessary. The fully-qualified Google Cloud Storage URI where the extracted
        # table should be written.
        # Corresponds to the JSON property `destinationUri`
        # @return [String]
        attr_accessor :destination_uri
      
        # [Pick one] A list of fully-qualified Google Cloud Storage URIs where the
        # extracted table should be written.
        # Corresponds to the JSON property `destinationUris`
        # @return [Array<String>]
        attr_accessor :destination_uris
      
        # [Optional] Delimiter to use between fields in the exported data. Default is ','
        # Corresponds to the JSON property `fieldDelimiter`
        # @return [String]
        attr_accessor :field_delimiter
      
        # [Optional] Whether to print out a header row in the results. Default is true.
        # Corresponds to the JSON property `printHeader`
        # @return [Boolean]
        attr_accessor :print_header
        alias_method :print_header?, :print_header
      
        # [Required] A reference to the table being exported.
        # Corresponds to the JSON property `sourceTable`
        # @return [Google::Apis::BigqueryV2::TableReference]
        attr_accessor :source_table
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compression = args[:compression] unless args[:compression].nil?
          @destination_format = args[:destination_format] unless args[:destination_format].nil?
          @destination_uri = args[:destination_uri] unless args[:destination_uri].nil?
          @destination_uris = args[:destination_uris] unless args[:destination_uris].nil?
          @field_delimiter = args[:field_delimiter] unless args[:field_delimiter].nil?
          @print_header = args[:print_header] unless args[:print_header].nil?
          @source_table = args[:source_table] unless args[:source_table].nil?
        end
      end
      
      # 
      class JobConfigurationLoad
        include Google::Apis::Core::Hashable
      
        # [Optional] Accept rows that are missing trailing optional columns. The missing
        # values are treated as nulls. If false, records with missing trailing columns
        # are treated as bad records, and if there are too many bad records, an invalid
        # error is returned in the job result. The default value is false. Only
        # applicable to CSV, ignored for other formats.
        # Corresponds to the JSON property `allowJaggedRows`
        # @return [Boolean]
        attr_accessor :allow_jagged_rows
        alias_method :allow_jagged_rows?, :allow_jagged_rows
      
        # Indicates if BigQuery should allow quoted data sections that contain newline
        # characters in a CSV file. The default value is false.
        # Corresponds to the JSON property `allowQuotedNewlines`
        # @return [Boolean]
        attr_accessor :allow_quoted_newlines
        alias_method :allow_quoted_newlines?, :allow_quoted_newlines
      
        # [Optional] Specifies whether the job is allowed to create new tables. The
        # following values are supported: CREATE_IF_NEEDED: If the table does not exist,
        # BigQuery creates the table. CREATE_NEVER: The table must already exist. If it
        # does not, a 'notFound' error is returned in the job result. The default value
        # is CREATE_IF_NEEDED. Creation, truncation and append actions occur as one
        # atomic update upon job completion.
        # Corresponds to the JSON property `createDisposition`
        # @return [String]
        attr_accessor :create_disposition
      
        # [Required] The destination table to load the data into.
        # Corresponds to the JSON property `destinationTable`
        # @return [Google::Apis::BigqueryV2::TableReference]
        attr_accessor :destination_table
      
        # [Optional] The character encoding of the data. The supported values are UTF-8
        # or ISO-8859-1. The default value is UTF-8. BigQuery decodes the data after the
        # raw, binary data has been split using the values of the quote and
        # fieldDelimiter properties.
        # Corresponds to the JSON property `encoding`
        # @return [String]
        attr_accessor :encoding
      
        # [Optional] The separator for fields in a CSV file. The separator can be any
        # ISO-8859-1 single-byte character. To use a character in the range 128-255, you
        # must encode the character as UTF8. BigQuery converts the string to ISO-8859-1
        # encoding, and then uses the first byte of the encoded string to split the data
        # in its raw, binary state. BigQuery also supports the escape sequence "\t" to
        # specify a tab separator. The default value is a comma (',').
        # Corresponds to the JSON property `fieldDelimiter`
        # @return [String]
        attr_accessor :field_delimiter
      
        # [Optional] Indicates if BigQuery should allow extra values that are not
        # represented in the table schema. If true, the extra values are ignored. If
        # false, records with extra columns are treated as bad records, and if there are
        # too many bad records, an invalid error is returned in the job result. The
        # default value is false. The sourceFormat property determines what BigQuery
        # treats as an extra value: CSV: Trailing columns JSON: Named values that don't
        # match any column names
        # Corresponds to the JSON property `ignoreUnknownValues`
        # @return [Boolean]
        attr_accessor :ignore_unknown_values
        alias_method :ignore_unknown_values?, :ignore_unknown_values
      
        # [Optional] The maximum number of bad records that BigQuery can ignore when
        # running the job. If the number of bad records exceeds this value, an invalid
        # error is returned in the job result. The default value is 0, which requires
        # that all records are valid.
        # Corresponds to the JSON property `maxBadRecords`
        # @return [Fixnum]
        attr_accessor :max_bad_records
      
        # [Experimental] If sourceFormat is set to "DATASTORE_BACKUP", indicates which
        # entity properties to load into BigQuery from a Cloud Datastore backup.
        # Property names are case sensitive and must be top-level properties. If no
        # properties are specified, BigQuery loads all properties. If any named property
        # isn't found in the Cloud Datastore backup, an invalid error is returned in the
        # job result.
        # Corresponds to the JSON property `projectionFields`
        # @return [Array<String>]
        attr_accessor :projection_fields
      
        # [Optional] The value that is used to quote data sections in a CSV file.
        # BigQuery converts the string to ISO-8859-1 encoding, and then uses the first
        # byte of the encoded string to split the data in its raw, binary state. The
        # default value is a double-quote ('"'). If your data does not contain quoted
        # sections, set the property value to an empty string. If your data contains
        # quoted newline characters, you must also set the allowQuotedNewlines property
        # to true.
        # Corresponds to the JSON property `quote`
        # @return [String]
        attr_accessor :quote
      
        # [Optional] The schema for the destination table. The schema can be omitted if
        # the destination table already exists, or if you're loading data from Google
        # Cloud Datastore.
        # Corresponds to the JSON property `schema`
        # @return [Google::Apis::BigqueryV2::TableSchema]
        attr_accessor :schema
      
        # [Deprecated] The inline schema. For CSV schemas, specify as "Field1:Type1[,
        # Field2:Type2]*". For example, "foo:STRING, bar:INTEGER, baz:FLOAT".
        # Corresponds to the JSON property `schemaInline`
        # @return [String]
        attr_accessor :schema_inline
      
        # [Deprecated] The format of the schemaInline property.
        # Corresponds to the JSON property `schemaInlineFormat`
        # @return [String]
        attr_accessor :schema_inline_format
      
        # [Optional] The number of rows at the top of a CSV file that BigQuery will skip
        # when loading the data. The default value is 0. This property is useful if you
        # have header rows in the file that should be skipped.
        # Corresponds to the JSON property `skipLeadingRows`
        # @return [Fixnum]
        attr_accessor :skip_leading_rows
      
        # [Optional] The format of the data files. For CSV files, specify "CSV". For
        # datastore backups, specify "DATASTORE_BACKUP". For newline-delimited JSON,
        # specify "NEWLINE_DELIMITED_JSON". The default value is CSV.
        # Corresponds to the JSON property `sourceFormat`
        # @return [String]
        attr_accessor :source_format
      
        # [Required] The fully-qualified URIs that point to your data in Google Cloud
        # Storage. Each URI can contain one '*' wildcard character and it must come
        # after the 'bucket' name.
        # Corresponds to the JSON property `sourceUris`
        # @return [Array<String>]
        attr_accessor :source_uris
      
        # [Optional] Specifies the action that occurs if the destination table already
        # exists. The following values are supported: WRITE_TRUNCATE: If the table
        # already exists, BigQuery overwrites the table data. WRITE_APPEND: If the table
        # already exists, BigQuery appends the data to the table. WRITE_EMPTY: If the
        # table already exists and contains data, a 'duplicate' error is returned in the
        # job result. The default value is WRITE_APPEND. Each action is atomic and only
        # occurs if BigQuery is able to complete the job successfully. Creation,
        # truncation and append actions occur as one atomic update upon job completion.
        # Corresponds to the JSON property `writeDisposition`
        # @return [String]
        attr_accessor :write_disposition
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_jagged_rows = args[:allow_jagged_rows] unless args[:allow_jagged_rows].nil?
          @allow_quoted_newlines = args[:allow_quoted_newlines] unless args[:allow_quoted_newlines].nil?
          @create_disposition = args[:create_disposition] unless args[:create_disposition].nil?
          @destination_table = args[:destination_table] unless args[:destination_table].nil?
          @encoding = args[:encoding] unless args[:encoding].nil?
          @field_delimiter = args[:field_delimiter] unless args[:field_delimiter].nil?
          @ignore_unknown_values = args[:ignore_unknown_values] unless args[:ignore_unknown_values].nil?
          @max_bad_records = args[:max_bad_records] unless args[:max_bad_records].nil?
          @projection_fields = args[:projection_fields] unless args[:projection_fields].nil?
          @quote = args[:quote] unless args[:quote].nil?
          @schema = args[:schema] unless args[:schema].nil?
          @schema_inline = args[:schema_inline] unless args[:schema_inline].nil?
          @schema_inline_format = args[:schema_inline_format] unless args[:schema_inline_format].nil?
          @skip_leading_rows = args[:skip_leading_rows] unless args[:skip_leading_rows].nil?
          @source_format = args[:source_format] unless args[:source_format].nil?
          @source_uris = args[:source_uris] unless args[:source_uris].nil?
          @write_disposition = args[:write_disposition] unless args[:write_disposition].nil?
        end
      end
      
      # 
      class JobConfigurationQuery
        include Google::Apis::Core::Hashable
      
        # If true, allows the query to produce arbitrarily large result tables at a
        # slight cost in performance. Requires destinationTable to be set.
        # Corresponds to the JSON property `allowLargeResults`
        # @return [Boolean]
        attr_accessor :allow_large_results
        alias_method :allow_large_results?, :allow_large_results
      
        # [Optional] Specifies whether the job is allowed to create new tables. The
        # following values are supported: CREATE_IF_NEEDED: If the table does not exist,
        # BigQuery creates the table. CREATE_NEVER: The table must already exist. If it
        # does not, a 'notFound' error is returned in the job result. The default value
        # is CREATE_IF_NEEDED. Creation, truncation and append actions occur as one
        # atomic update upon job completion.
        # Corresponds to the JSON property `createDisposition`
        # @return [String]
        attr_accessor :create_disposition
      
        # [Optional] Specifies the default dataset to use for unqualified table names in
        # the query.
        # Corresponds to the JSON property `defaultDataset`
        # @return [Google::Apis::BigqueryV2::DatasetReference]
        attr_accessor :default_dataset
      
        # [Optional] Describes the table where the query results should be stored. If
        # not present, a new table will be created to store the results.
        # Corresponds to the JSON property `destinationTable`
        # @return [Google::Apis::BigqueryV2::TableReference]
        attr_accessor :destination_table
      
        # [Optional] Flattens all nested and repeated fields in the query results. The
        # default value is true. allowLargeResults must be true if this is set to false.
        # Corresponds to the JSON property `flattenResults`
        # @return [Boolean]
        attr_accessor :flatten_results
        alias_method :flatten_results?, :flatten_results
      
        # [Optional] Limits the billing tier for this job. Queries that have resource
        # usage beyond this tier will fail (without incurring a charge). If unspecified,
        # this will be set to your project default.
        # Corresponds to the JSON property `maximumBillingTier`
        # @return [Fixnum]
        attr_accessor :maximum_billing_tier
      
        # [Deprecated] This property is deprecated.
        # Corresponds to the JSON property `preserveNulls`
        # @return [Boolean]
        attr_accessor :preserve_nulls
        alias_method :preserve_nulls?, :preserve_nulls
      
        # [Optional] Specifies a priority for the query. Possible values include
        # INTERACTIVE and BATCH. The default value is INTERACTIVE.
        # Corresponds to the JSON property `priority`
        # @return [String]
        attr_accessor :priority
      
        # [Required] BigQuery SQL query to execute.
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        # [Experimental] If querying an external data source outside of BigQuery,
        # describes the data format, location and other properties of the data source.
        # By defining these properties, the data source can then be queried as if it
        # were a standard BigQuery table.
        # Corresponds to the JSON property `tableDefinitions`
        # @return [Hash<String,Google::Apis::BigqueryV2::ExternalDataConfiguration>]
        attr_accessor :table_definitions
      
        # [Optional] Whether to look for the result in the query cache. The query cache
        # is a best-effort cache that will be flushed whenever tables in the query are
        # modified. Moreover, the query cache is only available when a query does not
        # have a destination table specified. The default value is true.
        # Corresponds to the JSON property `useQueryCache`
        # @return [Boolean]
        attr_accessor :use_query_cache
        alias_method :use_query_cache?, :use_query_cache
      
        # [Experimental] Describes user-defined function resources used in the query.
        # Corresponds to the JSON property `userDefinedFunctionResources`
        # @return [Array<Google::Apis::BigqueryV2::UserDefinedFunctionResource>]
        attr_accessor :user_defined_function_resources
      
        # [Optional] Specifies the action that occurs if the destination table already
        # exists. The following values are supported: WRITE_TRUNCATE: If the table
        # already exists, BigQuery overwrites the table data. WRITE_APPEND: If the table
        # already exists, BigQuery appends the data to the table. WRITE_EMPTY: If the
        # table already exists and contains data, a 'duplicate' error is returned in the
        # job result. The default value is WRITE_EMPTY. Each action is atomic and only
        # occurs if BigQuery is able to complete the job successfully. Creation,
        # truncation and append actions occur as one atomic update upon job completion.
        # Corresponds to the JSON property `writeDisposition`
        # @return [String]
        attr_accessor :write_disposition
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_large_results = args[:allow_large_results] unless args[:allow_large_results].nil?
          @create_disposition = args[:create_disposition] unless args[:create_disposition].nil?
          @default_dataset = args[:default_dataset] unless args[:default_dataset].nil?
          @destination_table = args[:destination_table] unless args[:destination_table].nil?
          @flatten_results = args[:flatten_results] unless args[:flatten_results].nil?
          @maximum_billing_tier = args[:maximum_billing_tier] unless args[:maximum_billing_tier].nil?
          @preserve_nulls = args[:preserve_nulls] unless args[:preserve_nulls].nil?
          @priority = args[:priority] unless args[:priority].nil?
          @query = args[:query] unless args[:query].nil?
          @table_definitions = args[:table_definitions] unless args[:table_definitions].nil?
          @use_query_cache = args[:use_query_cache] unless args[:use_query_cache].nil?
          @user_defined_function_resources = args[:user_defined_function_resources] unless args[:user_defined_function_resources].nil?
          @write_disposition = args[:write_disposition] unless args[:write_disposition].nil?
        end
      end
      
      # 
      class JobConfigurationTableCopy
        include Google::Apis::Core::Hashable
      
        # [Optional] Specifies whether the job is allowed to create new tables. The
        # following values are supported: CREATE_IF_NEEDED: If the table does not exist,
        # BigQuery creates the table. CREATE_NEVER: The table must already exist. If it
        # does not, a 'notFound' error is returned in the job result. The default value
        # is CREATE_IF_NEEDED. Creation, truncation and append actions occur as one
        # atomic update upon job completion.
        # Corresponds to the JSON property `createDisposition`
        # @return [String]
        attr_accessor :create_disposition
      
        # [Required] The destination table
        # Corresponds to the JSON property `destinationTable`
        # @return [Google::Apis::BigqueryV2::TableReference]
        attr_accessor :destination_table
      
        # [Pick one] Source table to copy.
        # Corresponds to the JSON property `sourceTable`
        # @return [Google::Apis::BigqueryV2::TableReference]
        attr_accessor :source_table
      
        # [Pick one] Source tables to copy.
        # Corresponds to the JSON property `sourceTables`
        # @return [Array<Google::Apis::BigqueryV2::TableReference>]
        attr_accessor :source_tables
      
        # [Optional] Specifies the action that occurs if the destination table already
        # exists. The following values are supported: WRITE_TRUNCATE: If the table
        # already exists, BigQuery overwrites the table data. WRITE_APPEND: If the table
        # already exists, BigQuery appends the data to the table. WRITE_EMPTY: If the
        # table already exists and contains data, a 'duplicate' error is returned in the
        # job result. The default value is WRITE_EMPTY. Each action is atomic and only
        # occurs if BigQuery is able to complete the job successfully. Creation,
        # truncation and append actions occur as one atomic update upon job completion.
        # Corresponds to the JSON property `writeDisposition`
        # @return [String]
        attr_accessor :write_disposition
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_disposition = args[:create_disposition] unless args[:create_disposition].nil?
          @destination_table = args[:destination_table] unless args[:destination_table].nil?
          @source_table = args[:source_table] unless args[:source_table].nil?
          @source_tables = args[:source_tables] unless args[:source_tables].nil?
          @write_disposition = args[:write_disposition] unless args[:write_disposition].nil?
        end
      end
      
      # 
      class JobList
        include Google::Apis::Core::Hashable
      
        # A hash of this page of results.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # List of jobs that were requested.
        # Corresponds to the JSON property `jobs`
        # @return [Array<Google::Apis::BigqueryV2::JobList::Job>]
        attr_accessor :jobs
      
        # The resource type of the response.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A token to request the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] unless args[:etag].nil?
          @jobs = args[:jobs] unless args[:jobs].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
        
        # 
        class Job
          include Google::Apis::Core::Hashable
        
          # [Full-projection-only] Specifies the job configuration.
          # Corresponds to the JSON property `configuration`
          # @return [Google::Apis::BigqueryV2::JobConfiguration]
          attr_accessor :configuration
        
          # A result object that will be present only if the job has failed.
          # Corresponds to the JSON property `errorResult`
          # @return [Google::Apis::BigqueryV2::ErrorProto]
          attr_accessor :error_result
        
          # Unique opaque ID of the job.
          # Corresponds to the JSON property `id`
          # @return [String]
          attr_accessor :id
        
          # Job reference uniquely identifying the job.
          # Corresponds to the JSON property `jobReference`
          # @return [Google::Apis::BigqueryV2::JobReference]
          attr_accessor :job_reference
        
          # The resource type.
          # Corresponds to the JSON property `kind`
          # @return [String]
          attr_accessor :kind
        
          # Running state of the job. When the state is DONE, errorResult can be checked
          # to determine whether the job succeeded or failed.
          # Corresponds to the JSON property `state`
          # @return [String]
          attr_accessor :state
        
          # [Output-only] Information about the job, including starting time and ending
          # time of the job.
          # Corresponds to the JSON property `statistics`
          # @return [Google::Apis::BigqueryV2::JobStatistics]
          attr_accessor :statistics
        
          # [Full-projection-only] Describes the state of the job.
          # Corresponds to the JSON property `status`
          # @return [Google::Apis::BigqueryV2::JobStatus]
          attr_accessor :status
        
          # [Full-projection-only] Email address of the user who ran the job.
          # Corresponds to the JSON property `user_email`
          # @return [String]
          attr_accessor :user_email
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @configuration = args[:configuration] unless args[:configuration].nil?
            @error_result = args[:error_result] unless args[:error_result].nil?
            @id = args[:id] unless args[:id].nil?
            @job_reference = args[:job_reference] unless args[:job_reference].nil?
            @kind = args[:kind] unless args[:kind].nil?
            @state = args[:state] unless args[:state].nil?
            @statistics = args[:statistics] unless args[:statistics].nil?
            @status = args[:status] unless args[:status].nil?
            @user_email = args[:user_email] unless args[:user_email].nil?
          end
        end
      end
      
      # 
      class JobReference
        include Google::Apis::Core::Hashable
      
        # [Required] The ID of the job. The ID must contain only letters (a-z, A-Z),
        # numbers (0-9), underscores (_), or dashes (-). The maximum length is 1,024
        # characters.
        # Corresponds to the JSON property `jobId`
        # @return [String]
        attr_accessor :job_id
      
        # [Required] The ID of the project containing this job.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @job_id = args[:job_id] unless args[:job_id].nil?
          @project_id = args[:project_id] unless args[:project_id].nil?
        end
      end
      
      # 
      class JobStatistics
        include Google::Apis::Core::Hashable
      
        # [Output-only] Creation time of this job, in milliseconds since the epoch. This
        # field will be present on all jobs.
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # [Output-only] End time of this job, in milliseconds since the epoch. This
        # field will be present whenever a job is in the DONE state.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # [Output-only] Statistics for an extract job.
        # Corresponds to the JSON property `extract`
        # @return [Google::Apis::BigqueryV2::JobStatistics4]
        attr_accessor :extract
      
        # [Output-only] Statistics for a load job.
        # Corresponds to the JSON property `load`
        # @return [Google::Apis::BigqueryV2::JobStatistics3]
        attr_accessor :load
      
        # [Output-only] Statistics for a query job.
        # Corresponds to the JSON property `query`
        # @return [Google::Apis::BigqueryV2::JobStatistics2]
        attr_accessor :query
      
        # [Output-only] Start time of this job, in milliseconds since the epoch. This
        # field will be present when the job transitions from the PENDING state to
        # either RUNNING or DONE.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # [Output-only] [Deprecated] Use the bytes processed in the query statistics
        # instead.
        # Corresponds to the JSON property `totalBytesProcessed`
        # @return [String]
        attr_accessor :total_bytes_processed
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_time = args[:creation_time] unless args[:creation_time].nil?
          @end_time = args[:end_time] unless args[:end_time].nil?
          @extract = args[:extract] unless args[:extract].nil?
          @load = args[:load] unless args[:load].nil?
          @query = args[:query] unless args[:query].nil?
          @start_time = args[:start_time] unless args[:start_time].nil?
          @total_bytes_processed = args[:total_bytes_processed] unless args[:total_bytes_processed].nil?
        end
      end
      
      # 
      class JobStatistics2
        include Google::Apis::Core::Hashable
      
        # [Output-only] Billing tier for the job.
        # Corresponds to the JSON property `billingTier`
        # @return [Fixnum]
        attr_accessor :billing_tier
      
        # [Output-only] Whether the query result was fetched from the query cache.
        # Corresponds to the JSON property `cacheHit`
        # @return [Boolean]
        attr_accessor :cache_hit
        alias_method :cache_hit?, :cache_hit
      
        # [Output-only, Experimental] Describes execution plan for the query as a list
        # of stages.
        # Corresponds to the JSON property `queryPlan`
        # @return [Array<Google::Apis::BigqueryV2::ExplainQueryStage>]
        attr_accessor :query_plan
      
        # [Output-only] Total bytes billed for the job.
        # Corresponds to the JSON property `totalBytesBilled`
        # @return [String]
        attr_accessor :total_bytes_billed
      
        # [Output-only] Total bytes processed for the job.
        # Corresponds to the JSON property `totalBytesProcessed`
        # @return [String]
        attr_accessor :total_bytes_processed
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @billing_tier = args[:billing_tier] unless args[:billing_tier].nil?
          @cache_hit = args[:cache_hit] unless args[:cache_hit].nil?
          @query_plan = args[:query_plan] unless args[:query_plan].nil?
          @total_bytes_billed = args[:total_bytes_billed] unless args[:total_bytes_billed].nil?
          @total_bytes_processed = args[:total_bytes_processed] unless args[:total_bytes_processed].nil?
        end
      end
      
      # 
      class JobStatistics3
        include Google::Apis::Core::Hashable
      
        # [Output-only] Number of bytes of source data in a load job.
        # Corresponds to the JSON property `inputFileBytes`
        # @return [String]
        attr_accessor :input_file_bytes
      
        # [Output-only] Number of source files in a load job.
        # Corresponds to the JSON property `inputFiles`
        # @return [String]
        attr_accessor :input_files
      
        # [Output-only] Size of the loaded data in bytes. Note that while a load job is
        # in the running state, this value may change.
        # Corresponds to the JSON property `outputBytes`
        # @return [String]
        attr_accessor :output_bytes
      
        # [Output-only] Number of rows imported in a load job. Note that while an import
        # job is in the running state, this value may change.
        # Corresponds to the JSON property `outputRows`
        # @return [String]
        attr_accessor :output_rows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @input_file_bytes = args[:input_file_bytes] unless args[:input_file_bytes].nil?
          @input_files = args[:input_files] unless args[:input_files].nil?
          @output_bytes = args[:output_bytes] unless args[:output_bytes].nil?
          @output_rows = args[:output_rows] unless args[:output_rows].nil?
        end
      end
      
      # 
      class JobStatistics4
        include Google::Apis::Core::Hashable
      
        # [Output-only] Number of files per destination URI or URI pattern specified in
        # the extract configuration. These values will be in the same order as the URIs
        # specified in the 'destinationUris' field.
        # Corresponds to the JSON property `destinationUriFileCounts`
        # @return [Array<String>]
        attr_accessor :destination_uri_file_counts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination_uri_file_counts = args[:destination_uri_file_counts] unless args[:destination_uri_file_counts].nil?
        end
      end
      
      # 
      class JobStatus
        include Google::Apis::Core::Hashable
      
        # [Output-only] Final error result of the job. If present, indicates that the
        # job has completed and was unsuccessful.
        # Corresponds to the JSON property `errorResult`
        # @return [Google::Apis::BigqueryV2::ErrorProto]
        attr_accessor :error_result
      
        # [Output-only] All errors encountered during the running of the job. Errors
        # here do not necessarily mean that the job has completed or was unsuccessful.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::BigqueryV2::ErrorProto>]
        attr_accessor :errors
      
        # [Output-only] Running state of the job.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_result = args[:error_result] unless args[:error_result].nil?
          @errors = args[:errors] unless args[:errors].nil?
          @state = args[:state] unless args[:state].nil?
        end
      end
      
      # 
      class ProjectList
        include Google::Apis::Core::Hashable
      
        # A hash of the page of results
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The type of list.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A token to request the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Projects to which you have at least READ access.
        # Corresponds to the JSON property `projects`
        # @return [Array<Google::Apis::BigqueryV2::ProjectList::Project>]
        attr_accessor :projects
      
        # The total number of projects in the list.
        # Corresponds to the JSON property `totalItems`
        # @return [Fixnum]
        attr_accessor :total_items
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] unless args[:etag].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @projects = args[:projects] unless args[:projects].nil?
          @total_items = args[:total_items] unless args[:total_items].nil?
        end
        
        # 
        class Project
          include Google::Apis::Core::Hashable
        
          # A descriptive name for this project.
          # Corresponds to the JSON property `friendlyName`
          # @return [String]
          attr_accessor :friendly_name
        
          # An opaque ID of this project.
          # Corresponds to the JSON property `id`
          # @return [String]
          attr_accessor :id
        
          # The resource type.
          # Corresponds to the JSON property `kind`
          # @return [String]
          attr_accessor :kind
        
          # The numeric ID of this project.
          # Corresponds to the JSON property `numericId`
          # @return [String]
          attr_accessor :numeric_id
        
          # A unique reference to this project.
          # Corresponds to the JSON property `projectReference`
          # @return [Google::Apis::BigqueryV2::ProjectReference]
          attr_accessor :project_reference
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @friendly_name = args[:friendly_name] unless args[:friendly_name].nil?
            @id = args[:id] unless args[:id].nil?
            @kind = args[:kind] unless args[:kind].nil?
            @numeric_id = args[:numeric_id] unless args[:numeric_id].nil?
            @project_reference = args[:project_reference] unless args[:project_reference].nil?
          end
        end
      end
      
      # 
      class ProjectReference
        include Google::Apis::Core::Hashable
      
        # [Required] ID of the project. Can be either the numeric ID or the assigned ID
        # of the project.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @project_id = args[:project_id] unless args[:project_id].nil?
        end
      end
      
      # 
      class QueryRequest
        include Google::Apis::Core::Hashable
      
        # [Optional] Specifies the default datasetId and projectId to assume for any
        # unqualified table names in the query. If not set, all table names in the query
        # string must be qualified in the format 'datasetId.tableId'.
        # Corresponds to the JSON property `defaultDataset`
        # @return [Google::Apis::BigqueryV2::DatasetReference]
        attr_accessor :default_dataset
      
        # [Optional] If set to true, BigQuery doesn't run the job. Instead, if the query
        # is valid, BigQuery returns statistics about the job such as how many bytes
        # would be processed. If the query is invalid, an error returns. The default
        # value is false.
        # Corresponds to the JSON property `dryRun`
        # @return [Boolean]
        attr_accessor :dry_run
        alias_method :dry_run?, :dry_run
      
        # The resource type of the request.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Optional] The maximum number of rows of data to return per page of results.
        # Setting this flag to a small value such as 1000 and then paging through
        # results might improve reliability when the query result set is large. In
        # addition to this limit, responses are also limited to 10 MB. By default, there
        # is no maximum row count, and only the byte limit applies.
        # Corresponds to the JSON property `maxResults`
        # @return [Fixnum]
        attr_accessor :max_results
      
        # [Deprecated] This property is deprecated.
        # Corresponds to the JSON property `preserveNulls`
        # @return [Boolean]
        attr_accessor :preserve_nulls
        alias_method :preserve_nulls?, :preserve_nulls
      
        # [Required] A query string, following the BigQuery query syntax, of the query
        # to execute. Example: "SELECT count(f1) FROM [myProjectId:myDatasetId.myTableId]
        # ".
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        # [Optional] How long to wait for the query to complete, in milliseconds, before
        # the request times out and returns. Note that this is only a timeout for the
        # request, not the query. If the query takes longer to run than the timeout
        # value, the call returns without any results and with the 'jobComplete' flag
        # set to false. You can call GetQueryResults() to wait for the query to complete
        # and read the results. The default value is 10000 milliseconds (10 seconds).
        # Corresponds to the JSON property `timeoutMs`
        # @return [Fixnum]
        attr_accessor :timeout_ms
      
        # [Optional] Whether to look for the result in the query cache. The query cache
        # is a best-effort cache that will be flushed whenever tables in the query are
        # modified. The default value is true.
        # Corresponds to the JSON property `useQueryCache`
        # @return [Boolean]
        attr_accessor :use_query_cache
        alias_method :use_query_cache?, :use_query_cache
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_dataset = args[:default_dataset] unless args[:default_dataset].nil?
          @dry_run = args[:dry_run] unless args[:dry_run].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @max_results = args[:max_results] unless args[:max_results].nil?
          @preserve_nulls = args[:preserve_nulls] unless args[:preserve_nulls].nil?
          @query = args[:query] unless args[:query].nil?
          @timeout_ms = args[:timeout_ms] unless args[:timeout_ms].nil?
          @use_query_cache = args[:use_query_cache] unless args[:use_query_cache].nil?
        end
      end
      
      # 
      class QueryResponse
        include Google::Apis::Core::Hashable
      
        # Whether the query result was fetched from the query cache.
        # Corresponds to the JSON property `cacheHit`
        # @return [Boolean]
        attr_accessor :cache_hit
        alias_method :cache_hit?, :cache_hit
      
        # [Output-only] All errors and warnings encountered during the running of the
        # job. Errors here do not necessarily mean that the job has completed or was
        # unsuccessful.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::BigqueryV2::ErrorProto>]
        attr_accessor :errors
      
        # Whether the query has completed or not. If rows or totalRows are present, this
        # will always be true. If this is false, totalRows will not be available.
        # Corresponds to the JSON property `jobComplete`
        # @return [Boolean]
        attr_accessor :job_complete
        alias_method :job_complete?, :job_complete
      
        # Reference to the Job that was created to run the query. This field will be
        # present even if the original request timed out, in which case GetQueryResults
        # can be used to read the results once the query has completed. Since this API
        # only returns the first page of results, subsequent pages can be fetched via
        # the same mechanism (GetQueryResults).
        # Corresponds to the JSON property `jobReference`
        # @return [Google::Apis::BigqueryV2::JobReference]
        attr_accessor :job_reference
      
        # The resource type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A token used for paging results.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # An object with as many results as can be contained within the maximum
        # permitted reply size. To get any additional rows, you can call GetQueryResults
        # and specify the jobReference returned above.
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::BigqueryV2::TableRow>]
        attr_accessor :rows
      
        # The schema of the results. Present only when the query completes successfully.
        # Corresponds to the JSON property `schema`
        # @return [Google::Apis::BigqueryV2::TableSchema]
        attr_accessor :schema
      
        # The total number of bytes processed for this query. If this query was a dry
        # run, this is the number of bytes that would be processed if the query were run.
        # Corresponds to the JSON property `totalBytesProcessed`
        # @return [String]
        attr_accessor :total_bytes_processed
      
        # The total number of rows in the complete query result set, which can be more
        # than the number of rows in this single page of results.
        # Corresponds to the JSON property `totalRows`
        # @return [String]
        attr_accessor :total_rows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cache_hit = args[:cache_hit] unless args[:cache_hit].nil?
          @errors = args[:errors] unless args[:errors].nil?
          @job_complete = args[:job_complete] unless args[:job_complete].nil?
          @job_reference = args[:job_reference] unless args[:job_reference].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @page_token = args[:page_token] unless args[:page_token].nil?
          @rows = args[:rows] unless args[:rows].nil?
          @schema = args[:schema] unless args[:schema].nil?
          @total_bytes_processed = args[:total_bytes_processed] unless args[:total_bytes_processed].nil?
          @total_rows = args[:total_rows] unless args[:total_rows].nil?
        end
      end
      
      # 
      class Streamingbuffer
        include Google::Apis::Core::Hashable
      
        # [Output-only] A lower-bound estimate of the number of bytes currently in the
        # streaming buffer.
        # Corresponds to the JSON property `estimatedBytes`
        # @return [String]
        attr_accessor :estimated_bytes
      
        # [Output-only] A lower-bound estimate of the number of rows currently in the
        # streaming buffer.
        # Corresponds to the JSON property `estimatedRows`
        # @return [String]
        attr_accessor :estimated_rows
      
        # [Output-only] Contains the timestamp of the oldest entry in the streaming
        # buffer, in milliseconds since the epoch, if the streaming buffer is available.
        # Corresponds to the JSON property `oldestEntryTime`
        # @return [String]
        attr_accessor :oldest_entry_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @estimated_bytes = args[:estimated_bytes] unless args[:estimated_bytes].nil?
          @estimated_rows = args[:estimated_rows] unless args[:estimated_rows].nil?
          @oldest_entry_time = args[:oldest_entry_time] unless args[:oldest_entry_time].nil?
        end
      end
      
      # 
      class Table
        include Google::Apis::Core::Hashable
      
        # [Output-only] The time when this table was created, in milliseconds since the
        # epoch.
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # [Optional] A user-friendly description of this table.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output-only] A hash of this resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # [Optional] The time when this table expires, in milliseconds since the epoch.
        # If not present, the table will persist indefinitely. Expired tables will be
        # deleted and their storage reclaimed.
        # Corresponds to the JSON property `expirationTime`
        # @return [String]
        attr_accessor :expiration_time
      
        # [Experimental] Describes the data format, location, and other properties of a
        # table stored outside of BigQuery. By defining these properties, the data
        # source can then be queried as if it were a standard BigQuery table.
        # Corresponds to the JSON property `externalDataConfiguration`
        # @return [Google::Apis::BigqueryV2::ExternalDataConfiguration]
        attr_accessor :external_data_configuration
      
        # [Optional] A descriptive name for this table.
        # Corresponds to the JSON property `friendlyName`
        # @return [String]
        attr_accessor :friendly_name
      
        # [Output-only] An opaque ID uniquely identifying the table.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output-only] The type of the resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output-only] The time when this table was last modified, in milliseconds
        # since the epoch.
        # Corresponds to the JSON property `lastModifiedTime`
        # @return [String]
        attr_accessor :last_modified_time
      
        # [Output-only] The geographic location where the table resides. This value is
        # inherited from the dataset.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # [Output-only] The size of this table in bytes, excluding any data in the
        # streaming buffer.
        # Corresponds to the JSON property `numBytes`
        # @return [String]
        attr_accessor :num_bytes
      
        # [Output-only] The number of rows of data in this table, excluding any data in
        # the streaming buffer.
        # Corresponds to the JSON property `numRows`
        # @return [String]
        attr_accessor :num_rows
      
        # [Optional] Describes the schema of this table.
        # Corresponds to the JSON property `schema`
        # @return [Google::Apis::BigqueryV2::TableSchema]
        attr_accessor :schema
      
        # [Output-only] A URL that can be used to access this resource again.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output-only] Contains information regarding this table's streaming buffer, if
        # one is present. This field will be absent if the table is not being streamed
        # to or if there is no data in the streaming buffer.
        # Corresponds to the JSON property `streamingBuffer`
        # @return [Google::Apis::BigqueryV2::Streamingbuffer]
        attr_accessor :streaming_buffer
      
        # [Required] Reference describing the ID of this table.
        # Corresponds to the JSON property `tableReference`
        # @return [Google::Apis::BigqueryV2::TableReference]
        attr_accessor :table_reference
      
        # [Output-only] Describes the table type. The following values are supported:
        # TABLE: A normal BigQuery table. VIEW: A virtual table defined by a SQL query.
        # EXTERNAL: A table that references data stored in an external storage system,
        # such as Google Cloud Storage. The default value is TABLE.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # [Optional] The view definition.
        # Corresponds to the JSON property `view`
        # @return [Google::Apis::BigqueryV2::ViewDefinition]
        attr_accessor :view
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_time = args[:creation_time] unless args[:creation_time].nil?
          @description = args[:description] unless args[:description].nil?
          @etag = args[:etag] unless args[:etag].nil?
          @expiration_time = args[:expiration_time] unless args[:expiration_time].nil?
          @external_data_configuration = args[:external_data_configuration] unless args[:external_data_configuration].nil?
          @friendly_name = args[:friendly_name] unless args[:friendly_name].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @last_modified_time = args[:last_modified_time] unless args[:last_modified_time].nil?
          @location = args[:location] unless args[:location].nil?
          @num_bytes = args[:num_bytes] unless args[:num_bytes].nil?
          @num_rows = args[:num_rows] unless args[:num_rows].nil?
          @schema = args[:schema] unless args[:schema].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @streaming_buffer = args[:streaming_buffer] unless args[:streaming_buffer].nil?
          @table_reference = args[:table_reference] unless args[:table_reference].nil?
          @type = args[:type] unless args[:type].nil?
          @view = args[:view] unless args[:view].nil?
        end
      end
      
      # 
      class TableCell
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `v`
        # @return [Object]
        attr_accessor :v
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @v = args[:v] unless args[:v].nil?
        end
      end
      
      # 
      class InsertAllTableDataRequest
        include Google::Apis::Core::Hashable
      
        # [Optional] Accept rows that contain values that do not match the schema. The
        # unknown values are ignored. Default is false, which treats unknown values as
        # errors.
        # Corresponds to the JSON property `ignoreUnknownValues`
        # @return [Boolean]
        attr_accessor :ignore_unknown_values
        alias_method :ignore_unknown_values?, :ignore_unknown_values
      
        # The resource type of the response.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The rows to insert.
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::BigqueryV2::InsertAllTableDataRequest::Row>]
        attr_accessor :rows
      
        # [Optional] Insert all valid rows of a request, even if invalid rows exist. The
        # default value is false, which causes the entire request to fail if any invalid
        # rows exist.
        # Corresponds to the JSON property `skipInvalidRows`
        # @return [Boolean]
        attr_accessor :skip_invalid_rows
        alias_method :skip_invalid_rows?, :skip_invalid_rows
      
        # [Optional] If specified, treats the destination table as a base template, and
        # inserts the rows into an instance table named "`destination``templateSuffix`".
        # BigQuery will manage creation of the instance table, using the schema of the
        # base template table. See https://cloud.google.com/bigquery/streaming-data-into-
        # bigquery#template-tables for considerations when working with templates tables.
        # Corresponds to the JSON property `templateSuffix`
        # @return [String]
        attr_accessor :template_suffix
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ignore_unknown_values = args[:ignore_unknown_values] unless args[:ignore_unknown_values].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @rows = args[:rows] unless args[:rows].nil?
          @skip_invalid_rows = args[:skip_invalid_rows] unless args[:skip_invalid_rows].nil?
          @template_suffix = args[:template_suffix] unless args[:template_suffix].nil?
        end
        
        # 
        class Row
          include Google::Apis::Core::Hashable
        
          # [Optional] A unique ID for each row. BigQuery uses this property to detect
          # duplicate insertion requests on a best-effort basis.
          # Corresponds to the JSON property `insertId`
          # @return [String]
          attr_accessor :insert_id
        
          # Represents a single JSON object.
          # Corresponds to the JSON property `json`
          # @return [Hash<String,Object>]
          attr_accessor :json
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @insert_id = args[:insert_id] unless args[:insert_id].nil?
            @json = args[:json] unless args[:json].nil?
          end
        end
      end
      
      # 
      class InsertAllTableDataResponse
        include Google::Apis::Core::Hashable
      
        # An array of errors for rows that were not inserted.
        # Corresponds to the JSON property `insertErrors`
        # @return [Array<Google::Apis::BigqueryV2::InsertAllTableDataResponse::InsertError>]
        attr_accessor :insert_errors
      
        # The resource type of the response.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @insert_errors = args[:insert_errors] unless args[:insert_errors].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
        
        # 
        class InsertError
          include Google::Apis::Core::Hashable
        
          # Error information for the row indicated by the index property.
          # Corresponds to the JSON property `errors`
          # @return [Array<Google::Apis::BigqueryV2::ErrorProto>]
          attr_accessor :errors
        
          # The index of the row that error applies to.
          # Corresponds to the JSON property `index`
          # @return [Fixnum]
          attr_accessor :index
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @errors = args[:errors] unless args[:errors].nil?
            @index = args[:index] unless args[:index].nil?
          end
        end
      end
      
      # 
      class TableDataList
        include Google::Apis::Core::Hashable
      
        # A hash of this page of results.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The resource type of the response.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A token used for paging results. Providing this token instead of the
        # startIndex parameter can help you retrieve stable results when an underlying
        # table is changing.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Rows of results.
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::BigqueryV2::TableRow>]
        attr_accessor :rows
      
        # The total number of rows in the complete table.
        # Corresponds to the JSON property `totalRows`
        # @return [String]
        attr_accessor :total_rows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] unless args[:etag].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @page_token = args[:page_token] unless args[:page_token].nil?
          @rows = args[:rows] unless args[:rows].nil?
          @total_rows = args[:total_rows] unless args[:total_rows].nil?
        end
      end
      
      # 
      class TableFieldSchema
        include Google::Apis::Core::Hashable
      
        # [Optional] The field description. The maximum length is 16K characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Optional] Describes the nested schema fields if the type property is set to
        # RECORD.
        # Corresponds to the JSON property `fields`
        # @return [Array<Google::Apis::BigqueryV2::TableFieldSchema>]
        attr_accessor :fields
      
        # [Optional] The field mode. Possible values include NULLABLE, REQUIRED and
        # REPEATED. The default value is NULLABLE.
        # Corresponds to the JSON property `mode`
        # @return [String]
        attr_accessor :mode
      
        # [Required] The field name. The name must contain only letters (a-z, A-Z),
        # numbers (0-9), or underscores (_), and must start with a letter or underscore.
        # The maximum length is 128 characters.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Required] The field data type. Possible values include STRING, INTEGER, FLOAT,
        # BOOLEAN, TIMESTAMP or RECORD (where RECORD indicates that the field contains
        # a nested schema).
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] unless args[:description].nil?
          @fields = args[:fields] unless args[:fields].nil?
          @mode = args[:mode] unless args[:mode].nil?
          @name = args[:name] unless args[:name].nil?
          @type = args[:type] unless args[:type].nil?
        end
      end
      
      # 
      class TableList
        include Google::Apis::Core::Hashable
      
        # A hash of this page of results.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The type of list.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A token to request the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Tables in the requested dataset.
        # Corresponds to the JSON property `tables`
        # @return [Array<Google::Apis::BigqueryV2::TableList::Table>]
        attr_accessor :tables
      
        # The total number of tables in the dataset.
        # Corresponds to the JSON property `totalItems`
        # @return [Fixnum]
        attr_accessor :total_items
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] unless args[:etag].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @tables = args[:tables] unless args[:tables].nil?
          @total_items = args[:total_items] unless args[:total_items].nil?
        end
        
        # 
        class Table
          include Google::Apis::Core::Hashable
        
          # The user-friendly name for this table.
          # Corresponds to the JSON property `friendlyName`
          # @return [String]
          attr_accessor :friendly_name
        
          # An opaque ID of the table
          # Corresponds to the JSON property `id`
          # @return [String]
          attr_accessor :id
        
          # The resource type.
          # Corresponds to the JSON property `kind`
          # @return [String]
          attr_accessor :kind
        
          # A reference uniquely identifying the table.
          # Corresponds to the JSON property `tableReference`
          # @return [Google::Apis::BigqueryV2::TableReference]
          attr_accessor :table_reference
        
          # The type of table. Possible values are: TABLE, VIEW.
          # Corresponds to the JSON property `type`
          # @return [String]
          attr_accessor :type
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @friendly_name = args[:friendly_name] unless args[:friendly_name].nil?
            @id = args[:id] unless args[:id].nil?
            @kind = args[:kind] unless args[:kind].nil?
            @table_reference = args[:table_reference] unless args[:table_reference].nil?
            @type = args[:type] unless args[:type].nil?
          end
        end
      end
      
      # 
      class TableReference
        include Google::Apis::Core::Hashable
      
        # [Required] The ID of the dataset containing this table.
        # Corresponds to the JSON property `datasetId`
        # @return [String]
        attr_accessor :dataset_id
      
        # [Required] The ID of the project containing this table.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # [Required] The ID of the table. The ID must contain only letters (a-z, A-Z),
        # numbers (0-9), or underscores (_). The maximum length is 1,024 characters.
        # Corresponds to the JSON property `tableId`
        # @return [String]
        attr_accessor :table_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset_id = args[:dataset_id] unless args[:dataset_id].nil?
          @project_id = args[:project_id] unless args[:project_id].nil?
          @table_id = args[:table_id] unless args[:table_id].nil?
        end
      end
      
      # 
      class TableRow
        include Google::Apis::Core::Hashable
      
        # Represents a single row in the result set, consisting of one or more fields.
        # Corresponds to the JSON property `f`
        # @return [Array<Google::Apis::BigqueryV2::TableCell>]
        attr_accessor :f
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @f = args[:f] unless args[:f].nil?
        end
      end
      
      # 
      class TableSchema
        include Google::Apis::Core::Hashable
      
        # Describes the fields in a table.
        # Corresponds to the JSON property `fields`
        # @return [Array<Google::Apis::BigqueryV2::TableFieldSchema>]
        attr_accessor :fields
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fields = args[:fields] unless args[:fields].nil?
        end
      end
      
      # 
      class UserDefinedFunctionResource
        include Google::Apis::Core::Hashable
      
        # [Pick one] An inline resource that contains code for a user-defined function (
        # UDF). Providing a inline code resource is equivalent to providing a URI for a
        # file containing the same code.
        # Corresponds to the JSON property `inlineCode`
        # @return [String]
        attr_accessor :inline_code
      
        # [Pick one] A code resource to load from a Google Cloud Storage URI (gs://
        # bucket/path).
        # Corresponds to the JSON property `resourceUri`
        # @return [String]
        attr_accessor :resource_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inline_code = args[:inline_code] unless args[:inline_code].nil?
          @resource_uri = args[:resource_uri] unless args[:resource_uri].nil?
        end
      end
      
      # 
      class ViewDefinition
        include Google::Apis::Core::Hashable
      
        # [Required] A query that BigQuery executes when the view is referenced.
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        # [Experimental] Describes user-defined function resources used in the query.
        # Corresponds to the JSON property `userDefinedFunctionResources`
        # @return [Array<Google::Apis::BigqueryV2::UserDefinedFunctionResource>]
        attr_accessor :user_defined_function_resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @query = args[:query] unless args[:query].nil?
          @user_defined_function_resources = args[:user_defined_function_resources] unless args[:user_defined_function_resources].nil?
        end
      end
    end
  end
end
