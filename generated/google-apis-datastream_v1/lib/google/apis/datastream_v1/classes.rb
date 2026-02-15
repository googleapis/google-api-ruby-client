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
    module DatastreamV1
      
      # AppendOnly mode defines that all changes to a table will be written to the
      # destination table.
      class AppendOnly
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # AVRO file format configuration.
      class AvroFileFormat
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Backfill strategy to automatically backfill the Stream's objects. Specific
      # objects can be excluded.
      class BackfillAllStrategy
        include Google::Apis::Core::Hashable
      
        # MongoDB Cluster structure.
        # Corresponds to the JSON property `mongodbExcludedObjects`
        # @return [Google::Apis::DatastreamV1::MongodbCluster]
        attr_accessor :mongodb_excluded_objects
      
        # MySQL database structure
        # Corresponds to the JSON property `mysqlExcludedObjects`
        # @return [Google::Apis::DatastreamV1::MysqlRdbms]
        attr_accessor :mysql_excluded_objects
      
        # Oracle database structure.
        # Corresponds to the JSON property `oracleExcludedObjects`
        # @return [Google::Apis::DatastreamV1::OracleRdbms]
        attr_accessor :oracle_excluded_objects
      
        # PostgreSQL database structure.
        # Corresponds to the JSON property `postgresqlExcludedObjects`
        # @return [Google::Apis::DatastreamV1::PostgresqlRdbms]
        attr_accessor :postgresql_excluded_objects
      
        # Salesforce organization structure.
        # Corresponds to the JSON property `salesforceExcludedObjects`
        # @return [Google::Apis::DatastreamV1::SalesforceOrg]
        attr_accessor :salesforce_excluded_objects
      
        # Spanner database structure.
        # Corresponds to the JSON property `spannerExcludedObjects`
        # @return [Google::Apis::DatastreamV1::SpannerDatabase]
        attr_accessor :spanner_excluded_objects
      
        # SQLServer database structure.
        # Corresponds to the JSON property `sqlServerExcludedObjects`
        # @return [Google::Apis::DatastreamV1::SqlServerRdbms]
        attr_accessor :sql_server_excluded_objects
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mongodb_excluded_objects = args[:mongodb_excluded_objects] if args.key?(:mongodb_excluded_objects)
          @mysql_excluded_objects = args[:mysql_excluded_objects] if args.key?(:mysql_excluded_objects)
          @oracle_excluded_objects = args[:oracle_excluded_objects] if args.key?(:oracle_excluded_objects)
          @postgresql_excluded_objects = args[:postgresql_excluded_objects] if args.key?(:postgresql_excluded_objects)
          @salesforce_excluded_objects = args[:salesforce_excluded_objects] if args.key?(:salesforce_excluded_objects)
          @spanner_excluded_objects = args[:spanner_excluded_objects] if args.key?(:spanner_excluded_objects)
          @sql_server_excluded_objects = args[:sql_server_excluded_objects] if args.key?(:sql_server_excluded_objects)
        end
      end
      
      # Represents a backfill job on a specific stream object.
      class BackfillJob
        include Google::Apis::Core::Hashable
      
        # Output only. Errors which caused the backfill job to fail.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::DatastreamV1::Error>]
        attr_accessor :errors
      
        # Output only. Backfill job's end time.
        # Corresponds to the JSON property `lastEndTime`
        # @return [String]
        attr_accessor :last_end_time
      
        # Output only. Backfill job's start time.
        # Corresponds to the JSON property `lastStartTime`
        # @return [String]
        attr_accessor :last_start_time
      
        # Output only. Backfill job state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Backfill job's triggering reason.
        # Corresponds to the JSON property `trigger`
        # @return [String]
        attr_accessor :trigger
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @errors = args[:errors] if args.key?(:errors)
          @last_end_time = args[:last_end_time] if args.key?(:last_end_time)
          @last_start_time = args[:last_start_time] if args.key?(:last_start_time)
          @state = args[:state] if args.key?(:state)
          @trigger = args[:trigger] if args.key?(:trigger)
        end
      end
      
      # Backfill strategy to disable automatic backfill for the Stream's objects.
      class BackfillNoneStrategy
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Describes violations in a client request. This error type focuses on the
      # syntactic aspects of the request.
      class BadRequest
        include Google::Apis::Core::Hashable
      
        # Describes all violations in a client request.
        # Corresponds to the JSON property `fieldViolations`
        # @return [Array<Google::Apis::DatastreamV1::FieldViolation>]
        attr_accessor :field_violations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field_violations = args[:field_violations] if args.key?(:field_violations)
        end
      end
      
      # Message to represent the option where Datastream will enforce encryption
      # without authenticating server identity. Server certificates will be trusted by
      # default.
      class BasicEncryption
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # BigQuery clustering configuration.
      class BigQueryClustering
        include Google::Apis::Core::Hashable
      
        # Required. Column names to set as clustering columns.
        # Corresponds to the JSON property `columns`
        # @return [Array<String>]
        attr_accessor :columns
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @columns = args[:columns] if args.key?(:columns)
        end
      end
      
      # BigQuery destination configuration
      class BigQueryDestinationConfig
        include Google::Apis::Core::Hashable
      
        # AppendOnly mode defines that all changes to a table will be written to the
        # destination table.
        # Corresponds to the JSON property `appendOnly`
        # @return [Google::Apis::DatastreamV1::AppendOnly]
        attr_accessor :append_only
      
        # The configuration for BLMT.
        # Corresponds to the JSON property `blmtConfig`
        # @return [Google::Apis::DatastreamV1::BlmtConfig]
        attr_accessor :blmt_config
      
        # The guaranteed data freshness (in seconds) when querying tables created by the
        # stream. Editing this field will only affect new tables created in the future,
        # but existing tables will not be impacted. Lower values mean that queries will
        # return fresher data, but may result in higher cost.
        # Corresponds to the JSON property `dataFreshness`
        # @return [String]
        attr_accessor :data_freshness
      
        # Merge mode defines that all changes to a table will be merged at the
        # destination table.
        # Corresponds to the JSON property `merge`
        # @return [Google::Apis::DatastreamV1::Merge]
        attr_accessor :merge
      
        # A single target dataset to which all data will be streamed.
        # Corresponds to the JSON property `singleTargetDataset`
        # @return [Google::Apis::DatastreamV1::SingleTargetDataset]
        attr_accessor :single_target_dataset
      
        # Destination datasets are created so that hierarchy of the destination data
        # objects matches the source hierarchy.
        # Corresponds to the JSON property `sourceHierarchyDatasets`
        # @return [Google::Apis::DatastreamV1::SourceHierarchyDatasets]
        attr_accessor :source_hierarchy_datasets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @append_only = args[:append_only] if args.key?(:append_only)
          @blmt_config = args[:blmt_config] if args.key?(:blmt_config)
          @data_freshness = args[:data_freshness] if args.key?(:data_freshness)
          @merge = args[:merge] if args.key?(:merge)
          @single_target_dataset = args[:single_target_dataset] if args.key?(:single_target_dataset)
          @source_hierarchy_datasets = args[:source_hierarchy_datasets] if args.key?(:source_hierarchy_datasets)
        end
      end
      
      # BigQuery partitioning configuration.
      class BigQueryPartitioning
        include Google::Apis::Core::Hashable
      
        # Ingestion time partitioning. see https://cloud.google.com/bigquery/docs/
        # partitioned-tables#ingestion_time
        # Corresponds to the JSON property `ingestionTimePartition`
        # @return [Google::Apis::DatastreamV1::IngestionTimePartition]
        attr_accessor :ingestion_time_partition
      
        # Integer range partitioning. see https://cloud.google.com/bigquery/docs/
        # partitioned-tables#integer_range
        # Corresponds to the JSON property `integerRangePartition`
        # @return [Google::Apis::DatastreamV1::IntegerRangePartition]
        attr_accessor :integer_range_partition
      
        # Optional. If true, queries over the table require a partition filter.
        # Corresponds to the JSON property `requirePartitionFilter`
        # @return [Boolean]
        attr_accessor :require_partition_filter
        alias_method :require_partition_filter?, :require_partition_filter
      
        # Time unit column partitioning. see https://cloud.google.com/bigquery/docs/
        # partitioned-tables#date_timestamp_partitioned_tables
        # Corresponds to the JSON property `timeUnitPartition`
        # @return [Google::Apis::DatastreamV1::TimeUnitPartition]
        attr_accessor :time_unit_partition
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ingestion_time_partition = args[:ingestion_time_partition] if args.key?(:ingestion_time_partition)
          @integer_range_partition = args[:integer_range_partition] if args.key?(:integer_range_partition)
          @require_partition_filter = args[:require_partition_filter] if args.key?(:require_partition_filter)
          @time_unit_partition = args[:time_unit_partition] if args.key?(:time_unit_partition)
        end
      end
      
      # Profile for connecting to a BigQuery destination.
      class BigQueryProfile
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Configuration to use Binary Log Parser CDC technique.
      class BinaryLogParser
        include Google::Apis::Core::Hashable
      
        # Configuration to specify the Oracle directories to access the log files.
        # Corresponds to the JSON property `logFileDirectories`
        # @return [Google::Apis::DatastreamV1::LogFileDirectories]
        attr_accessor :log_file_directories
      
        # Configuration to use Oracle ASM to access the log files.
        # Corresponds to the JSON property `oracleAsmLogFileAccess`
        # @return [Google::Apis::DatastreamV1::OracleAsmLogFileAccess]
        attr_accessor :oracle_asm_log_file_access
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @log_file_directories = args[:log_file_directories] if args.key?(:log_file_directories)
          @oracle_asm_log_file_access = args[:oracle_asm_log_file_access] if args.key?(:oracle_asm_log_file_access)
        end
      end
      
      # Use Binary log position based replication.
      class BinaryLogPosition
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The configuration for BLMT.
      class BlmtConfig
        include Google::Apis::Core::Hashable
      
        # Required. The Cloud Storage bucket name.
        # Corresponds to the JSON property `bucket`
        # @return [String]
        attr_accessor :bucket
      
        # Required. The bigquery connection. Format: ``project`.`location`.`name``
        # Corresponds to the JSON property `connectionName`
        # @return [String]
        attr_accessor :connection_name
      
        # Required. The file format.
        # Corresponds to the JSON property `fileFormat`
        # @return [String]
        attr_accessor :file_format
      
        # The root path inside the Cloud Storage bucket.
        # Corresponds to the JSON property `rootPath`
        # @return [String]
        attr_accessor :root_path
      
        # Required. The table format.
        # Corresponds to the JSON property `tableFormat`
        # @return [String]
        attr_accessor :table_format
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket = args[:bucket] if args.key?(:bucket)
          @connection_name = args[:connection_name] if args.key?(:connection_name)
          @file_format = args[:file_format] if args.key?(:file_format)
          @root_path = args[:root_path] if args.key?(:root_path)
          @table_format = args[:table_format] if args.key?(:table_format)
        end
      end
      
      # The request message for Operations.CancelOperation.
      class CancelOperationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The strategy that the stream uses for CDC replication.
      class CdcStrategy
        include Google::Apis::Core::Hashable
      
        # CDC strategy to start replicating from the most recent position in the source.
        # Corresponds to the JSON property `mostRecentStartPosition`
        # @return [Google::Apis::DatastreamV1::MostRecentStartPosition]
        attr_accessor :most_recent_start_position
      
        # CDC strategy to resume replication from the next available position in the
        # source.
        # Corresponds to the JSON property `nextAvailableStartPosition`
        # @return [Google::Apis::DatastreamV1::NextAvailableStartPosition]
        attr_accessor :next_available_start_position
      
        # CDC strategy to start replicating from a specific position in the source.
        # Corresponds to the JSON property `specificStartPosition`
        # @return [Google::Apis::DatastreamV1::SpecificStartPosition]
        attr_accessor :specific_start_position
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @most_recent_start_position = args[:most_recent_start_position] if args.key?(:most_recent_start_position)
          @next_available_start_position = args[:next_available_start_position] if args.key?(:next_available_start_position)
          @specific_start_position = args[:specific_start_position] if args.key?(:specific_start_position)
        end
      end
      
      # A set of reusable connection configurations to be used as a source or
      # destination for a stream.
      class ConnectionProfile
        include Google::Apis::Core::Hashable
      
        # Profile for connecting to a BigQuery destination.
        # Corresponds to the JSON property `bigqueryProfile`
        # @return [Google::Apis::DatastreamV1::BigQueryProfile]
        attr_accessor :bigquery_profile
      
        # Output only. The create time of the resource.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. Display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Forward SSH Tunnel connectivity.
        # Corresponds to the JSON property `forwardSshConnectivity`
        # @return [Google::Apis::DatastreamV1::ForwardSshTunnelConnectivity]
        attr_accessor :forward_ssh_connectivity
      
        # Profile for connecting to a Cloud Storage destination.
        # Corresponds to the JSON property `gcsProfile`
        # @return [Google::Apis::DatastreamV1::GcsProfile]
        attr_accessor :gcs_profile
      
        # Labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Profile for connecting to a MongoDB source.
        # Corresponds to the JSON property `mongodbProfile`
        # @return [Google::Apis::DatastreamV1::MongodbProfile]
        attr_accessor :mongodb_profile
      
        # Profile for connecting to a MySQL source.
        # Corresponds to the JSON property `mysqlProfile`
        # @return [Google::Apis::DatastreamV1::MysqlProfile]
        attr_accessor :mysql_profile
      
        # Output only. Identifier. The resource's name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Profile for connecting to an Oracle source.
        # Corresponds to the JSON property `oracleProfile`
        # @return [Google::Apis::DatastreamV1::OracleProfile]
        attr_accessor :oracle_profile
      
        # Profile for connecting to a PostgreSQL source.
        # Corresponds to the JSON property `postgresqlProfile`
        # @return [Google::Apis::DatastreamV1::PostgresqlProfile]
        attr_accessor :postgresql_profile
      
        # Private Connectivity
        # Corresponds to the JSON property `privateConnectivity`
        # @return [Google::Apis::DatastreamV1::PrivateConnectivity]
        attr_accessor :private_connectivity
      
        # Profile for connecting to a Salesforce source.
        # Corresponds to the JSON property `salesforceProfile`
        # @return [Google::Apis::DatastreamV1::SalesforceProfile]
        attr_accessor :salesforce_profile
      
        # Output only. Reserved for future use.
        # Corresponds to the JSON property `satisfiesPzi`
        # @return [Boolean]
        attr_accessor :satisfies_pzi
        alias_method :satisfies_pzi?, :satisfies_pzi
      
        # Output only. Reserved for future use.
        # Corresponds to the JSON property `satisfiesPzs`
        # @return [Boolean]
        attr_accessor :satisfies_pzs
        alias_method :satisfies_pzs?, :satisfies_pzs
      
        # Profile for connecting to a Spanner source.
        # Corresponds to the JSON property `spannerProfile`
        # @return [Google::Apis::DatastreamV1::SpannerProfile]
        attr_accessor :spanner_profile
      
        # Profile for connecting to a SQLServer source.
        # Corresponds to the JSON property `sqlServerProfile`
        # @return [Google::Apis::DatastreamV1::SqlServerProfile]
        attr_accessor :sql_server_profile
      
        # Static IP address connectivity. Used when the source database is configured to
        # allow incoming connections from the Datastream public IP addresses for the
        # region specified in the connection profile.
        # Corresponds to the JSON property `staticServiceIpConnectivity`
        # @return [Google::Apis::DatastreamV1::StaticServiceIpConnectivity]
        attr_accessor :static_service_ip_connectivity
      
        # Output only. The update time of the resource.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bigquery_profile = args[:bigquery_profile] if args.key?(:bigquery_profile)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @forward_ssh_connectivity = args[:forward_ssh_connectivity] if args.key?(:forward_ssh_connectivity)
          @gcs_profile = args[:gcs_profile] if args.key?(:gcs_profile)
          @labels = args[:labels] if args.key?(:labels)
          @mongodb_profile = args[:mongodb_profile] if args.key?(:mongodb_profile)
          @mysql_profile = args[:mysql_profile] if args.key?(:mysql_profile)
          @name = args[:name] if args.key?(:name)
          @oracle_profile = args[:oracle_profile] if args.key?(:oracle_profile)
          @postgresql_profile = args[:postgresql_profile] if args.key?(:postgresql_profile)
          @private_connectivity = args[:private_connectivity] if args.key?(:private_connectivity)
          @salesforce_profile = args[:salesforce_profile] if args.key?(:salesforce_profile)
          @satisfies_pzi = args[:satisfies_pzi] if args.key?(:satisfies_pzi)
          @satisfies_pzs = args[:satisfies_pzs] if args.key?(:satisfies_pzs)
          @spanner_profile = args[:spanner_profile] if args.key?(:spanner_profile)
          @sql_server_profile = args[:sql_server_profile] if args.key?(:sql_server_profile)
          @static_service_ip_connectivity = args[:static_service_ip_connectivity] if args.key?(:static_service_ip_connectivity)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A customization rule to apply to a set of objects.
      class CustomizationRule
        include Google::Apis::Core::Hashable
      
        # BigQuery clustering configuration.
        # Corresponds to the JSON property `bigqueryClustering`
        # @return [Google::Apis::DatastreamV1::BigQueryClustering]
        attr_accessor :bigquery_clustering
      
        # BigQuery partitioning configuration.
        # Corresponds to the JSON property `bigqueryPartitioning`
        # @return [Google::Apis::DatastreamV1::BigQueryPartitioning]
        attr_accessor :bigquery_partitioning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bigquery_clustering = args[:bigquery_clustering] if args.key?(:bigquery_clustering)
          @bigquery_partitioning = args[:bigquery_partitioning] if args.key?(:bigquery_partitioning)
        end
      end
      
      # Dataset template used for dynamic dataset creation.
      class DatasetTemplate
        include Google::Apis::Core::Hashable
      
        # If supplied, every created dataset will have its name prefixed by the provided
        # value. The prefix and name will be separated by an underscore. i.e. _.
        # Corresponds to the JSON property `datasetIdPrefix`
        # @return [String]
        attr_accessor :dataset_id_prefix
      
        # Describes the Cloud KMS encryption key that will be used to protect
        # destination BigQuery table. The BigQuery Service Account associated with your
        # project requires access to this encryption key. i.e. projects/`project`/
        # locations/`location`/keyRings/`key_ring`/cryptoKeys/`cryptoKey`. See https://
        # cloud.google.com/bigquery/docs/customer-managed-encryption for more
        # information.
        # Corresponds to the JSON property `kmsKeyName`
        # @return [String]
        attr_accessor :kms_key_name
      
        # Required. The geographic location where the dataset should reside. See https://
        # cloud.google.com/bigquery/docs/locations for supported locations.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset_id_prefix = args[:dataset_id_prefix] if args.key?(:dataset_id_prefix)
          @kms_key_name = args[:kms_key_name] if args.key?(:kms_key_name)
          @location = args[:location] if args.key?(:location)
        end
      end
      
      # Describes additional debugging info.
      class DebugInfo
        include Google::Apis::Core::Hashable
      
        # Additional debugging information provided by the server.
        # Corresponds to the JSON property `detail`
        # @return [String]
        attr_accessor :detail
      
        # The stack trace entries indicating where the error occurred.
        # Corresponds to the JSON property `stackEntries`
        # @return [Array<String>]
        attr_accessor :stack_entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detail = args[:detail] if args.key?(:detail)
          @stack_entries = args[:stack_entries] if args.key?(:stack_entries)
        end
      end
      
      # The configuration of the stream destination.
      class DestinationConfig
        include Google::Apis::Core::Hashable
      
        # BigQuery destination configuration
        # Corresponds to the JSON property `bigqueryDestinationConfig`
        # @return [Google::Apis::DatastreamV1::BigQueryDestinationConfig]
        attr_accessor :bigquery_destination_config
      
        # Required. Destination connection profile resource. Format: `projects/`project`/
        # locations/`location`/connectionProfiles/`name``
        # Corresponds to the JSON property `destinationConnectionProfile`
        # @return [String]
        attr_accessor :destination_connection_profile
      
        # Google Cloud Storage destination configuration
        # Corresponds to the JSON property `gcsDestinationConfig`
        # @return [Google::Apis::DatastreamV1::GcsDestinationConfig]
        attr_accessor :gcs_destination_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bigquery_destination_config = args[:bigquery_destination_config] if args.key?(:bigquery_destination_config)
          @destination_connection_profile = args[:destination_connection_profile] if args.key?(:destination_connection_profile)
          @gcs_destination_config = args[:gcs_destination_config] if args.key?(:gcs_destination_config)
        end
      end
      
      # Request message for 'discover' ConnectionProfile request.
      class DiscoverConnectionProfileRequest
        include Google::Apis::Core::Hashable
      
        # A set of reusable connection configurations to be used as a source or
        # destination for a stream.
        # Corresponds to the JSON property `connectionProfile`
        # @return [Google::Apis::DatastreamV1::ConnectionProfile]
        attr_accessor :connection_profile
      
        # Optional. A reference to an existing connection profile.
        # Corresponds to the JSON property `connectionProfileName`
        # @return [String]
        attr_accessor :connection_profile_name
      
        # Optional. Whether to retrieve the full hierarchy of data objects (TRUE) or
        # only the current level (FALSE).
        # Corresponds to the JSON property `fullHierarchy`
        # @return [Boolean]
        attr_accessor :full_hierarchy
        alias_method :full_hierarchy?, :full_hierarchy
      
        # Optional. The number of hierarchy levels below the current level to be
        # retrieved.
        # Corresponds to the JSON property `hierarchyDepth`
        # @return [Fixnum]
        attr_accessor :hierarchy_depth
      
        # MongoDB Cluster structure.
        # Corresponds to the JSON property `mongodbCluster`
        # @return [Google::Apis::DatastreamV1::MongodbCluster]
        attr_accessor :mongodb_cluster
      
        # MySQL database structure
        # Corresponds to the JSON property `mysqlRdbms`
        # @return [Google::Apis::DatastreamV1::MysqlRdbms]
        attr_accessor :mysql_rdbms
      
        # Oracle database structure.
        # Corresponds to the JSON property `oracleRdbms`
        # @return [Google::Apis::DatastreamV1::OracleRdbms]
        attr_accessor :oracle_rdbms
      
        # PostgreSQL database structure.
        # Corresponds to the JSON property `postgresqlRdbms`
        # @return [Google::Apis::DatastreamV1::PostgresqlRdbms]
        attr_accessor :postgresql_rdbms
      
        # Salesforce organization structure.
        # Corresponds to the JSON property `salesforceOrg`
        # @return [Google::Apis::DatastreamV1::SalesforceOrg]
        attr_accessor :salesforce_org
      
        # Spanner database structure.
        # Corresponds to the JSON property `spannerDatabase`
        # @return [Google::Apis::DatastreamV1::SpannerDatabase]
        attr_accessor :spanner_database
      
        # SQLServer database structure.
        # Corresponds to the JSON property `sqlServerRdbms`
        # @return [Google::Apis::DatastreamV1::SqlServerRdbms]
        attr_accessor :sql_server_rdbms
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connection_profile = args[:connection_profile] if args.key?(:connection_profile)
          @connection_profile_name = args[:connection_profile_name] if args.key?(:connection_profile_name)
          @full_hierarchy = args[:full_hierarchy] if args.key?(:full_hierarchy)
          @hierarchy_depth = args[:hierarchy_depth] if args.key?(:hierarchy_depth)
          @mongodb_cluster = args[:mongodb_cluster] if args.key?(:mongodb_cluster)
          @mysql_rdbms = args[:mysql_rdbms] if args.key?(:mysql_rdbms)
          @oracle_rdbms = args[:oracle_rdbms] if args.key?(:oracle_rdbms)
          @postgresql_rdbms = args[:postgresql_rdbms] if args.key?(:postgresql_rdbms)
          @salesforce_org = args[:salesforce_org] if args.key?(:salesforce_org)
          @spanner_database = args[:spanner_database] if args.key?(:spanner_database)
          @sql_server_rdbms = args[:sql_server_rdbms] if args.key?(:sql_server_rdbms)
        end
      end
      
      # Response from a discover request.
      class DiscoverConnectionProfileResponse
        include Google::Apis::Core::Hashable
      
        # MongoDB Cluster structure.
        # Corresponds to the JSON property `mongodbCluster`
        # @return [Google::Apis::DatastreamV1::MongodbCluster]
        attr_accessor :mongodb_cluster
      
        # MySQL database structure
        # Corresponds to the JSON property `mysqlRdbms`
        # @return [Google::Apis::DatastreamV1::MysqlRdbms]
        attr_accessor :mysql_rdbms
      
        # Oracle database structure.
        # Corresponds to the JSON property `oracleRdbms`
        # @return [Google::Apis::DatastreamV1::OracleRdbms]
        attr_accessor :oracle_rdbms
      
        # PostgreSQL database structure.
        # Corresponds to the JSON property `postgresqlRdbms`
        # @return [Google::Apis::DatastreamV1::PostgresqlRdbms]
        attr_accessor :postgresql_rdbms
      
        # Salesforce organization structure.
        # Corresponds to the JSON property `salesforceOrg`
        # @return [Google::Apis::DatastreamV1::SalesforceOrg]
        attr_accessor :salesforce_org
      
        # Spanner database structure.
        # Corresponds to the JSON property `spannerDatabase`
        # @return [Google::Apis::DatastreamV1::SpannerDatabase]
        attr_accessor :spanner_database
      
        # SQLServer database structure.
        # Corresponds to the JSON property `sqlServerRdbms`
        # @return [Google::Apis::DatastreamV1::SqlServerRdbms]
        attr_accessor :sql_server_rdbms
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mongodb_cluster = args[:mongodb_cluster] if args.key?(:mongodb_cluster)
          @mysql_rdbms = args[:mysql_rdbms] if args.key?(:mysql_rdbms)
          @oracle_rdbms = args[:oracle_rdbms] if args.key?(:oracle_rdbms)
          @postgresql_rdbms = args[:postgresql_rdbms] if args.key?(:postgresql_rdbms)
          @salesforce_org = args[:salesforce_org] if args.key?(:salesforce_org)
          @spanner_database = args[:spanner_database] if args.key?(:spanner_database)
          @sql_server_rdbms = args[:sql_server_rdbms] if args.key?(:sql_server_rdbms)
        end
      end
      
      # Configuration to drop large object values.
      class DropLargeObjects
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Message to represent the option where Datastream will enforce encryption and
      # authenticate server identity. ca_certificate must be set if user selects this
      # option.
      class EncryptionAndServerValidation
        include Google::Apis::Core::Hashable
      
        # Optional. Input only. PEM-encoded certificate of the CA that signed the source
        # database server's certificate.
        # Corresponds to the JSON property `caCertificate`
        # @return [String]
        attr_accessor :ca_certificate
      
        # Optional. The hostname mentioned in the Subject or SAN extension of the server
        # certificate. This field is used for bypassing the hostname validation while
        # verifying server certificate. This is required for scenarios where the host
        # name that datastream connects to is different from the certificate's subject.
        # This specifically happens for private connectivity. It could also happen when
        # the customer provides a public IP in connection profile but the same is not
        # present in the server certificate.
        # Corresponds to the JSON property `serverCertificateHostname`
        # @return [String]
        attr_accessor :server_certificate_hostname
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ca_certificate = args[:ca_certificate] if args.key?(:ca_certificate)
          @server_certificate_hostname = args[:server_certificate_hostname] if args.key?(:server_certificate_hostname)
        end
      end
      
      # Message to represent the option where encryption is not enforced. An empty
      # message right now to allow future extensibility.
      class EncryptionNotEnforced
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Represent a user-facing Error.
      class Error
        include Google::Apis::Core::Hashable
      
        # Additional information about the error.
        # Corresponds to the JSON property `details`
        # @return [Hash<String,String>]
        attr_accessor :details
      
        # The time when the error occurred.
        # Corresponds to the JSON property `errorTime`
        # @return [String]
        attr_accessor :error_time
      
        # A unique identifier for this specific error, allowing it to be traced
        # throughout the system in logs and API responses.
        # Corresponds to the JSON property `errorUuid`
        # @return [String]
        attr_accessor :error_uuid
      
        # A message containing more information about the error that occurred.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # A title that explains the reason for the error.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @details = args[:details] if args.key?(:details)
          @error_time = args[:error_time] if args.key?(:error_time)
          @error_uuid = args[:error_uuid] if args.key?(:error_uuid)
          @message = args[:message] if args.key?(:message)
          @reason = args[:reason] if args.key?(:reason)
        end
      end
      
      # Describes the cause of the error with structured details. Example of an error
      # when contacting the "pubsub.googleapis.com" API when it is not enabled: ` "
      # reason": "API_DISABLED" "domain": "googleapis.com" "metadata": ` "resource": "
      # projects/123", "service": "pubsub.googleapis.com" ` ` This response indicates
      # that the pubsub.googleapis.com API is not enabled. Example of an error that is
      # returned when attempting to create a Spanner instance in a region that is out
      # of stock: ` "reason": "STOCKOUT" "domain": "spanner.googleapis.com", "metadata"
      # : ` "availableRegions": "us-central1,us-east2" ` `
      class ErrorInfo
        include Google::Apis::Core::Hashable
      
        # The logical grouping to which the "reason" belongs. The error domain is
        # typically the registered service name of the tool or product that generates
        # the error. Example: "pubsub.googleapis.com". If the error is generated by some
        # common infrastructure, the error domain must be a globally unique value that
        # identifies the infrastructure. For Google API infrastructure, the error domain
        # is "googleapis.com".
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        # Additional structured details about this error. Keys must match a regular
        # expression of `a-z+` but should ideally be lowerCamelCase. Also, they must be
        # limited to 64 characters in length. When identifying the current value of an
        # exceeded limit, the units should be contained in the key, not the value. For
        # example, rather than ``"instanceLimit": "100/request"``, should be returned as,
        # ``"instanceLimitPerRequest": "100"``, if the client exceeds the number of
        # instances that can be created in a single (batch) request.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,String>]
        attr_accessor :metadata
      
        # The reason of the error. This is a constant value that identifies the
        # proximate cause of the error. Error reasons are unique within a particular
        # domain of errors. This should be at most 63 characters and match a regular
        # expression of `A-Z+[A-Z0-9]`, which represents UPPER_SNAKE_CASE.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain = args[:domain] if args.key?(:domain)
          @metadata = args[:metadata] if args.key?(:metadata)
          @reason = args[:reason] if args.key?(:reason)
        end
      end
      
      # Represents a filter for included data on a stream object.
      class EventFilter
        include Google::Apis::Core::Hashable
      
        # An SQL-query Where clause selecting which data should be included, not
        # including the "WHERE" keyword. e.g., `t.key1 = 'value1' AND t.key2 = 'value2'`
        # Corresponds to the JSON property `sqlWhereClause`
        # @return [String]
        attr_accessor :sql_where_clause
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sql_where_clause = args[:sql_where_clause] if args.key?(:sql_where_clause)
        end
      end
      
      # Response message for a 'FetchStaticIps' response.
      class FetchStaticIpsResponse
        include Google::Apis::Core::Hashable
      
        # A token that can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # list of static ips by account
        # Corresponds to the JSON property `staticIps`
        # @return [Array<String>]
        attr_accessor :static_ips
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @static_ips = args[:static_ips] if args.key?(:static_ips)
        end
      end
      
      # A message type used to describe a single bad request field.
      class FieldViolation
        include Google::Apis::Core::Hashable
      
        # A description of why the request element is bad.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A path that leads to a field in the request body. The value will be a sequence
        # of dot-separated identifiers that identify a protocol buffer field. Consider
        # the following: message CreateContactRequest ` message EmailAddress ` enum Type
        # ` TYPE_UNSPECIFIED = 0; HOME = 1; WORK = 2; ` optional string email = 1;
        # repeated EmailType type = 2; ` string full_name = 1; repeated EmailAddress
        # email_addresses = 2; ` In this example, in proto `field` could take one of the
        # following values: * `full_name` for a violation in the `full_name` value * `
        # email_addresses[1].email` for a violation in the `email` field of the first `
        # email_addresses` message * `email_addresses[3].type[2]` for a violation in the
        # second `type` value in the third `email_addresses` message. In JSON, the same
        # values are represented as: * `fullName` for a violation in the `fullName`
        # value * `emailAddresses[1].email` for a violation in the `email` field of the
        # first `emailAddresses` message * `emailAddresses[3].type[2]` for a violation
        # in the second `type` value in the third `emailAddresses` message.
        # Corresponds to the JSON property `field`
        # @return [String]
        attr_accessor :field
      
        # Provides a localized error message that is safe to return to the user which
        # can be attached to an RPC error.
        # Corresponds to the JSON property `localizedMessage`
        # @return [Google::Apis::DatastreamV1::LocalizedMessage]
        attr_accessor :localized_message
      
        # The reason of the field-level error. This is a constant value that identifies
        # the proximate cause of the field-level error. It should uniquely identify the
        # type of the FieldViolation within the scope of the google.rpc.ErrorInfo.domain.
        # This should be at most 63 characters and match a regular expression of `A-Z+[
        # A-Z0-9]`, which represents UPPER_SNAKE_CASE.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @field = args[:field] if args.key?(:field)
          @localized_message = args[:localized_message] if args.key?(:localized_message)
          @reason = args[:reason] if args.key?(:reason)
        end
      end
      
      # Forward SSH Tunnel connectivity.
      class ForwardSshTunnelConnectivity
        include Google::Apis::Core::Hashable
      
        # Required. Hostname for the SSH tunnel.
        # Corresponds to the JSON property `hostname`
        # @return [String]
        attr_accessor :hostname
      
        # Input only. SSH password.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # Port for the SSH tunnel, default value is 22.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        # Input only. SSH private key.
        # Corresponds to the JSON property `privateKey`
        # @return [String]
        attr_accessor :private_key
      
        # Required. Username for the SSH tunnel.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hostname = args[:hostname] if args.key?(:hostname)
          @password = args[:password] if args.key?(:password)
          @port = args[:port] if args.key?(:port)
          @private_key = args[:private_key] if args.key?(:private_key)
          @username = args[:username] if args.key?(:username)
        end
      end
      
      # Google Cloud Storage destination configuration
      class GcsDestinationConfig
        include Google::Apis::Core::Hashable
      
        # AVRO file format configuration.
        # Corresponds to the JSON property `avroFileFormat`
        # @return [Google::Apis::DatastreamV1::AvroFileFormat]
        attr_accessor :avro_file_format
      
        # The maximum duration for which new events are added before a file is closed
        # and a new file is created. Values within the range of 15-60 seconds are
        # allowed.
        # Corresponds to the JSON property `fileRotationInterval`
        # @return [String]
        attr_accessor :file_rotation_interval
      
        # The maximum file size to be saved in the bucket.
        # Corresponds to the JSON property `fileRotationMb`
        # @return [Fixnum]
        attr_accessor :file_rotation_mb
      
        # JSON file format configuration.
        # Corresponds to the JSON property `jsonFileFormat`
        # @return [Google::Apis::DatastreamV1::JsonFileFormat]
        attr_accessor :json_file_format
      
        # Path inside the Cloud Storage bucket to write data to.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @avro_file_format = args[:avro_file_format] if args.key?(:avro_file_format)
          @file_rotation_interval = args[:file_rotation_interval] if args.key?(:file_rotation_interval)
          @file_rotation_mb = args[:file_rotation_mb] if args.key?(:file_rotation_mb)
          @json_file_format = args[:json_file_format] if args.key?(:json_file_format)
          @path = args[:path] if args.key?(:path)
        end
      end
      
      # Profile for connecting to a Cloud Storage destination.
      class GcsProfile
        include Google::Apis::Core::Hashable
      
        # Required. The Cloud Storage bucket name.
        # Corresponds to the JSON property `bucket`
        # @return [String]
        attr_accessor :bucket
      
        # Optional. The root path inside the Cloud Storage bucket.
        # Corresponds to the JSON property `rootPath`
        # @return [String]
        attr_accessor :root_path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket = args[:bucket] if args.key?(:bucket)
          @root_path = args[:root_path] if args.key?(:root_path)
        end
      end
      
      # Use GTID based replication.
      class Gtid
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Provides links to documentation or for performing an out of band action. For
      # example, if a quota check failed with an error indicating the calling project
      # hasn't enabled the accessed service, this can contain a URL pointing directly
      # to the right place in the developer console to flip the bit.
      class Help
        include Google::Apis::Core::Hashable
      
        # URL(s) pointing to additional information on handling the current error.
        # Corresponds to the JSON property `links`
        # @return [Array<Google::Apis::DatastreamV1::Link>]
        attr_accessor :links
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @links = args[:links] if args.key?(:links)
        end
      end
      
      # A HostAddress represents a transport end point, which is the combination of an
      # IP address or hostname and a port number.
      class HostAddress
        include Google::Apis::Core::Hashable
      
        # Required. Hostname for the connection.
        # Corresponds to the JSON property `hostname`
        # @return [String]
        attr_accessor :hostname
      
        # Optional. Port for the connection.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hostname = args[:hostname] if args.key?(:hostname)
          @port = args[:port] if args.key?(:port)
        end
      end
      
      # Ingestion time partitioning. see https://cloud.google.com/bigquery/docs/
      # partitioned-tables#ingestion_time
      class IngestionTimePartition
        include Google::Apis::Core::Hashable
      
        # Optional. Partition granularity
        # Corresponds to the JSON property `partitioningTimeGranularity`
        # @return [String]
        attr_accessor :partitioning_time_granularity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @partitioning_time_granularity = args[:partitioning_time_granularity] if args.key?(:partitioning_time_granularity)
        end
      end
      
      # Integer range partitioning. see https://cloud.google.com/bigquery/docs/
      # partitioned-tables#integer_range
      class IntegerRangePartition
        include Google::Apis::Core::Hashable
      
        # Required. The partitioning column.
        # Corresponds to the JSON property `column`
        # @return [String]
        attr_accessor :column
      
        # Required. The ending value for range partitioning (exclusive).
        # Corresponds to the JSON property `end`
        # @return [Fixnum]
        attr_accessor :end
      
        # Required. The interval of each range within the partition.
        # Corresponds to the JSON property `interval`
        # @return [Fixnum]
        attr_accessor :interval
      
        # Required. The starting value for range partitioning (inclusive).
        # Corresponds to the JSON property `start`
        # @return [Fixnum]
        attr_accessor :start
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column = args[:column] if args.key?(:column)
          @end = args[:end] if args.key?(:end)
          @interval = args[:interval] if args.key?(:interval)
          @start = args[:start] if args.key?(:start)
        end
      end
      
      # JSON file format configuration.
      class JsonFileFormat
        include Google::Apis::Core::Hashable
      
        # Compression of the loaded JSON file.
        # Corresponds to the JSON property `compression`
        # @return [String]
        attr_accessor :compression
      
        # The schema file format along JSON data files.
        # Corresponds to the JSON property `schemaFileFormat`
        # @return [String]
        attr_accessor :schema_file_format
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compression = args[:compression] if args.key?(:compression)
          @schema_file_format = args[:schema_file_format] if args.key?(:schema_file_format)
        end
      end
      
      # Describes a URL link.
      class Link
        include Google::Apis::Core::Hashable
      
        # Describes what the link offers.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The URL of the link.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Response message for listing connection profiles.
      class ListConnectionProfilesResponse
        include Google::Apis::Core::Hashable
      
        # List of connection profiles.
        # Corresponds to the JSON property `connectionProfiles`
        # @return [Array<Google::Apis::DatastreamV1::ConnectionProfile>]
        attr_accessor :connection_profiles
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connection_profiles = args[:connection_profiles] if args.key?(:connection_profiles)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::DatastreamV1::Location>]
        attr_accessor :locations
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locations = args[:locations] if args.key?(:locations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for Operations.ListOperations.
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::DatastreamV1::Operation>]
        attr_accessor :operations
      
        # Unordered list. Unreachable resources. Populated when the request sets `
        # ListOperationsRequest.return_partial_success` and reads across collections.
        # For example, when attempting to list all resources across all supported
        # locations.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response containing a list of private connection configurations.
      class ListPrivateConnectionsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of private connectivity configurations.
        # Corresponds to the JSON property `privateConnections`
        # @return [Array<Google::Apis::DatastreamV1::PrivateConnection>]
        attr_accessor :private_connections
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @private_connections = args[:private_connections] if args.key?(:private_connections)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Route list response.
      class ListRoutesResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of Routes.
        # Corresponds to the JSON property `routes`
        # @return [Array<Google::Apis::DatastreamV1::Route>]
        attr_accessor :routes
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @routes = args[:routes] if args.key?(:routes)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response containing the objects for a stream.
      class ListStreamObjectsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of stream objects.
        # Corresponds to the JSON property `streamObjects`
        # @return [Array<Google::Apis::DatastreamV1::StreamObject>]
        attr_accessor :stream_objects
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @stream_objects = args[:stream_objects] if args.key?(:stream_objects)
        end
      end
      
      # Response message for listing streams.
      class ListStreamsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of streams
        # Corresponds to the JSON property `streams`
        # @return [Array<Google::Apis::DatastreamV1::Stream>]
        attr_accessor :streams
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @streams = args[:streams] if args.key?(:streams)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Provides a localized error message that is safe to return to the user which
      # can be attached to an RPC error.
      class LocalizedMessage
        include Google::Apis::Core::Hashable
      
        # The locale used following the specification defined at https://www.rfc-editor.
        # org/rfc/bcp/bcp47.txt. Examples are: "en-US", "fr-CH", "es-MX"
        # Corresponds to the JSON property `locale`
        # @return [String]
        attr_accessor :locale
      
        # The localized error message in the above locale.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locale = args[:locale] if args.key?(:locale)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # A resource that represents a Google Cloud location.
      class Location
        include Google::Apis::Core::Hashable
      
        # The friendly name for this location, typically a nearby city name. For example,
        # "Tokyo".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Cross-service attributes for the location. For example `"cloud.googleapis.com/
        # region": "us-east1"`
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The canonical id for this location. For example: `"us-east1"`.
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        # Service-specific metadata. For example the available capacity at the given
        # location.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # Resource name for the location, which may vary between implementations. For
        # example: `"projects/example-project/locations/us-east1"`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @location_id = args[:location_id] if args.key?(:location_id)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Configuration to specify the Oracle directories to access the log files.
      class LogFileDirectories
        include Google::Apis::Core::Hashable
      
        # Required. Oracle directory for archived logs.
        # Corresponds to the JSON property `archivedLogDirectory`
        # @return [String]
        attr_accessor :archived_log_directory
      
        # Required. Oracle directory for online logs.
        # Corresponds to the JSON property `onlineLogDirectory`
        # @return [String]
        attr_accessor :online_log_directory
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @archived_log_directory = args[:archived_log_directory] if args.key?(:archived_log_directory)
          @online_log_directory = args[:online_log_directory] if args.key?(:online_log_directory)
        end
      end
      
      # Configuration to use LogMiner CDC method.
      class LogMiner
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request for looking up a specific stream object by its source object
      # identifier.
      class LookupStreamObjectRequest
        include Google::Apis::Core::Hashable
      
        # Represents an identifier of an object in the data source.
        # Corresponds to the JSON property `sourceObjectIdentifier`
        # @return [Google::Apis::DatastreamV1::SourceObjectIdentifier]
        attr_accessor :source_object_identifier
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @source_object_identifier = args[:source_object_identifier] if args.key?(:source_object_identifier)
        end
      end
      
      # Merge mode defines that all changes to a table will be merged at the
      # destination table.
      class Merge
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # MongoDB change stream position
      class MongodbChangeStreamPosition
        include Google::Apis::Core::Hashable
      
        # Required. The timestamp to start change stream from.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # MongoDB Cluster structure.
      class MongodbCluster
        include Google::Apis::Core::Hashable
      
        # MongoDB databases in the cluster.
        # Corresponds to the JSON property `databases`
        # @return [Array<Google::Apis::DatastreamV1::MongodbDatabase>]
        attr_accessor :databases
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @databases = args[:databases] if args.key?(:databases)
        end
      end
      
      # MongoDB Collection.
      class MongodbCollection
        include Google::Apis::Core::Hashable
      
        # The collection name.
        # Corresponds to the JSON property `collection`
        # @return [String]
        attr_accessor :collection
      
        # Fields in the collection.
        # Corresponds to the JSON property `fields`
        # @return [Array<Google::Apis::DatastreamV1::MongodbField>]
        attr_accessor :fields
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @collection = args[:collection] if args.key?(:collection)
          @fields = args[:fields] if args.key?(:fields)
        end
      end
      
      # MongoDB Database.
      class MongodbDatabase
        include Google::Apis::Core::Hashable
      
        # Collections in the database.
        # Corresponds to the JSON property `collections`
        # @return [Array<Google::Apis::DatastreamV1::MongodbCollection>]
        attr_accessor :collections
      
        # The database name.
        # Corresponds to the JSON property `database`
        # @return [String]
        attr_accessor :database
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @collections = args[:collections] if args.key?(:collections)
          @database = args[:database] if args.key?(:database)
        end
      end
      
      # MongoDB Field.
      class MongodbField
        include Google::Apis::Core::Hashable
      
        # The field name.
        # Corresponds to the JSON property `field`
        # @return [String]
        attr_accessor :field
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field = args[:field] if args.key?(:field)
        end
      end
      
      # MongoDB data source object identifier.
      class MongodbObjectIdentifier
        include Google::Apis::Core::Hashable
      
        # Required. The collection name.
        # Corresponds to the JSON property `collection`
        # @return [String]
        attr_accessor :collection
      
        # Required. The database name.
        # Corresponds to the JSON property `database`
        # @return [String]
        attr_accessor :database
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @collection = args[:collection] if args.key?(:collection)
          @database = args[:database] if args.key?(:database)
        end
      end
      
      # Profile for connecting to a MongoDB source.
      class MongodbProfile
        include Google::Apis::Core::Hashable
      
        # Optional. Specifies additional options for the MongoDB connection. The options
        # should be sent as key-value pairs, for example: `additional_options = `"
        # serverSelectionTimeoutMS": "10000", "directConnection": "true"``. Keys are
        # case-sensitive and should match the official MongoDB connection string options:
        # https://www.mongodb.com/docs/manual/reference/connection-string-options/ The
        # server will not modify the values provided by the user.
        # Corresponds to the JSON property `additionalOptions`
        # @return [Hash<String,String>]
        attr_accessor :additional_options
      
        # Required. List of host addresses for a MongoDB cluster. For SRV connection
        # format, this list must contain exactly one DNS host without a port. For
        # Standard connection format, this list must contain all the required hosts in
        # the cluster with their respective ports.
        # Corresponds to the JSON property `hostAddresses`
        # @return [Array<Google::Apis::DatastreamV1::HostAddress>]
        attr_accessor :host_addresses
      
        # Optional. Password for the MongoDB connection. Mutually exclusive with the `
        # secret_manager_stored_password` field.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # Optional. Name of the replica set. Only needed for self hosted replica set
        # type MongoDB cluster. For SRV connection format, this field must be empty. For
        # Standard connection format, this field must be specified.
        # Corresponds to the JSON property `replicaSet`
        # @return [String]
        attr_accessor :replica_set
      
        # Optional. A reference to a Secret Manager resource name storing the SQLServer
        # connection password. Mutually exclusive with the `password` field.
        # Corresponds to the JSON property `secretManagerStoredPassword`
        # @return [String]
        attr_accessor :secret_manager_stored_password
      
        # Srv connection format.
        # Corresponds to the JSON property `srvConnectionFormat`
        # @return [Google::Apis::DatastreamV1::SrvConnectionFormat]
        attr_accessor :srv_connection_format
      
        # MongoDB SSL configuration information.
        # Corresponds to the JSON property `sslConfig`
        # @return [Google::Apis::DatastreamV1::MongodbSslConfig]
        attr_accessor :ssl_config
      
        # Standard connection format.
        # Corresponds to the JSON property `standardConnectionFormat`
        # @return [Google::Apis::DatastreamV1::StandardConnectionFormat]
        attr_accessor :standard_connection_format
      
        # Required. Username for the MongoDB connection.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_options = args[:additional_options] if args.key?(:additional_options)
          @host_addresses = args[:host_addresses] if args.key?(:host_addresses)
          @password = args[:password] if args.key?(:password)
          @replica_set = args[:replica_set] if args.key?(:replica_set)
          @secret_manager_stored_password = args[:secret_manager_stored_password] if args.key?(:secret_manager_stored_password)
          @srv_connection_format = args[:srv_connection_format] if args.key?(:srv_connection_format)
          @ssl_config = args[:ssl_config] if args.key?(:ssl_config)
          @standard_connection_format = args[:standard_connection_format] if args.key?(:standard_connection_format)
          @username = args[:username] if args.key?(:username)
        end
      end
      
      # Configuration for syncing data from a MongoDB source.
      class MongodbSourceConfig
        include Google::Apis::Core::Hashable
      
        # MongoDB Cluster structure.
        # Corresponds to the JSON property `excludeObjects`
        # @return [Google::Apis::DatastreamV1::MongodbCluster]
        attr_accessor :exclude_objects
      
        # MongoDB Cluster structure.
        # Corresponds to the JSON property `includeObjects`
        # @return [Google::Apis::DatastreamV1::MongodbCluster]
        attr_accessor :include_objects
      
        # Optional. MongoDB JSON mode to use for the stream.
        # Corresponds to the JSON property `jsonMode`
        # @return [String]
        attr_accessor :json_mode
      
        # Optional. Maximum number of concurrent backfill tasks. The number should be
        # non-negative and less than or equal to 50. If not set (or set to 0), the
        # system's default value is used
        # Corresponds to the JSON property `maxConcurrentBackfillTasks`
        # @return [Fixnum]
        attr_accessor :max_concurrent_backfill_tasks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exclude_objects = args[:exclude_objects] if args.key?(:exclude_objects)
          @include_objects = args[:include_objects] if args.key?(:include_objects)
          @json_mode = args[:json_mode] if args.key?(:json_mode)
          @max_concurrent_backfill_tasks = args[:max_concurrent_backfill_tasks] if args.key?(:max_concurrent_backfill_tasks)
        end
      end
      
      # MongoDB SSL configuration information.
      class MongodbSslConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Input only. PEM-encoded certificate of the CA that signed the source
        # database server's certificate.
        # Corresponds to the JSON property `caCertificate`
        # @return [String]
        attr_accessor :ca_certificate
      
        # Output only. Indicates whether the ca_certificate field is set.
        # Corresponds to the JSON property `caCertificateSet`
        # @return [Boolean]
        attr_accessor :ca_certificate_set
        alias_method :ca_certificate_set?, :ca_certificate_set
      
        # Optional. Input only. PEM-encoded certificate that will be used by the replica
        # to authenticate against the source database server. If this field is used then
        # the 'client_key' and the 'ca_certificate' fields are mandatory.
        # Corresponds to the JSON property `clientCertificate`
        # @return [String]
        attr_accessor :client_certificate
      
        # Output only. Indicates whether the client_certificate field is set.
        # Corresponds to the JSON property `clientCertificateSet`
        # @return [Boolean]
        attr_accessor :client_certificate_set
        alias_method :client_certificate_set?, :client_certificate_set
      
        # Optional. Input only. PEM-encoded private key associated with the Client
        # Certificate. If this field is used then the 'client_certificate' and the '
        # ca_certificate' fields are mandatory.
        # Corresponds to the JSON property `clientKey`
        # @return [String]
        attr_accessor :client_key
      
        # Output only. Indicates whether the client_key field is set.
        # Corresponds to the JSON property `clientKeySet`
        # @return [Boolean]
        attr_accessor :client_key_set
        alias_method :client_key_set?, :client_key_set
      
        # Optional. Input only. A reference to a Secret Manager resource name storing
        # the PEM-encoded private key associated with the Client Certificate. If this
        # field is used then the 'client_certificate' and the 'ca_certificate' fields
        # are mandatory. Mutually exclusive with the `client_key` field.
        # Corresponds to the JSON property `secretManagerStoredClientKey`
        # @return [String]
        attr_accessor :secret_manager_stored_client_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ca_certificate = args[:ca_certificate] if args.key?(:ca_certificate)
          @ca_certificate_set = args[:ca_certificate_set] if args.key?(:ca_certificate_set)
          @client_certificate = args[:client_certificate] if args.key?(:client_certificate)
          @client_certificate_set = args[:client_certificate_set] if args.key?(:client_certificate_set)
          @client_key = args[:client_key] if args.key?(:client_key)
          @client_key_set = args[:client_key_set] if args.key?(:client_key_set)
          @secret_manager_stored_client_key = args[:secret_manager_stored_client_key] if args.key?(:secret_manager_stored_client_key)
        end
      end
      
      # CDC strategy to start replicating from the most recent position in the source.
      class MostRecentStartPosition
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # MySQL Column.
      class MysqlColumn
        include Google::Apis::Core::Hashable
      
        # Column collation.
        # Corresponds to the JSON property `collation`
        # @return [String]
        attr_accessor :collation
      
        # The column name.
        # Corresponds to the JSON property `column`
        # @return [String]
        attr_accessor :column
      
        # The MySQL data type. Full data types list can be found here: https://dev.mysql.
        # com/doc/refman/8.0/en/data-types.html
        # Corresponds to the JSON property `dataType`
        # @return [String]
        attr_accessor :data_type
      
        # Column length.
        # Corresponds to the JSON property `length`
        # @return [Fixnum]
        attr_accessor :length
      
        # Whether or not the column can accept a null value.
        # Corresponds to the JSON property `nullable`
        # @return [Boolean]
        attr_accessor :nullable
        alias_method :nullable?, :nullable
      
        # The ordinal position of the column in the table.
        # Corresponds to the JSON property `ordinalPosition`
        # @return [Fixnum]
        attr_accessor :ordinal_position
      
        # Column precision.
        # Corresponds to the JSON property `precision`
        # @return [Fixnum]
        attr_accessor :precision
      
        # Whether or not the column represents a primary key.
        # Corresponds to the JSON property `primaryKey`
        # @return [Boolean]
        attr_accessor :primary_key
        alias_method :primary_key?, :primary_key
      
        # Column scale.
        # Corresponds to the JSON property `scale`
        # @return [Fixnum]
        attr_accessor :scale
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @collation = args[:collation] if args.key?(:collation)
          @column = args[:column] if args.key?(:column)
          @data_type = args[:data_type] if args.key?(:data_type)
          @length = args[:length] if args.key?(:length)
          @nullable = args[:nullable] if args.key?(:nullable)
          @ordinal_position = args[:ordinal_position] if args.key?(:ordinal_position)
          @precision = args[:precision] if args.key?(:precision)
          @primary_key = args[:primary_key] if args.key?(:primary_key)
          @scale = args[:scale] if args.key?(:scale)
        end
      end
      
      # MySQL database.
      class MysqlDatabase
        include Google::Apis::Core::Hashable
      
        # The database name.
        # Corresponds to the JSON property `database`
        # @return [String]
        attr_accessor :database
      
        # Tables in the database.
        # Corresponds to the JSON property `mysqlTables`
        # @return [Array<Google::Apis::DatastreamV1::MysqlTable>]
        attr_accessor :mysql_tables
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @database = args[:database] if args.key?(:database)
          @mysql_tables = args[:mysql_tables] if args.key?(:mysql_tables)
        end
      end
      
      # MySQL GTID position
      class MysqlGtidPosition
        include Google::Apis::Core::Hashable
      
        # Required. The gtid set to start replication from.
        # Corresponds to the JSON property `gtidSet`
        # @return [String]
        attr_accessor :gtid_set
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gtid_set = args[:gtid_set] if args.key?(:gtid_set)
        end
      end
      
      # MySQL log position
      class MysqlLogPosition
        include Google::Apis::Core::Hashable
      
        # Required. The binary log file name.
        # Corresponds to the JSON property `logFile`
        # @return [String]
        attr_accessor :log_file
      
        # Optional. The position within the binary log file. Default is head of file.
        # Corresponds to the JSON property `logPosition`
        # @return [Fixnum]
        attr_accessor :log_position
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @log_file = args[:log_file] if args.key?(:log_file)
          @log_position = args[:log_position] if args.key?(:log_position)
        end
      end
      
      # Mysql data source object identifier.
      class MysqlObjectIdentifier
        include Google::Apis::Core::Hashable
      
        # Required. The database name.
        # Corresponds to the JSON property `database`
        # @return [String]
        attr_accessor :database
      
        # Required. The table name.
        # Corresponds to the JSON property `table`
        # @return [String]
        attr_accessor :table
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @database = args[:database] if args.key?(:database)
          @table = args[:table] if args.key?(:table)
        end
      end
      
      # Profile for connecting to a MySQL source.
      class MysqlProfile
        include Google::Apis::Core::Hashable
      
        # Required. Hostname for the MySQL connection.
        # Corresponds to the JSON property `hostname`
        # @return [String]
        attr_accessor :hostname
      
        # Optional. Input only. Password for the MySQL connection. Mutually exclusive
        # with the `secret_manager_stored_password` field.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # Port for the MySQL connection, default value is 3306.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        # Optional. A reference to a Secret Manager resource name storing the MySQL
        # connection password. Mutually exclusive with the `password` field.
        # Corresponds to the JSON property `secretManagerStoredPassword`
        # @return [String]
        attr_accessor :secret_manager_stored_password
      
        # MySQL SSL configuration information.
        # Corresponds to the JSON property `sslConfig`
        # @return [Google::Apis::DatastreamV1::MysqlSslConfig]
        attr_accessor :ssl_config
      
        # Required. Username for the MySQL connection.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hostname = args[:hostname] if args.key?(:hostname)
          @password = args[:password] if args.key?(:password)
          @port = args[:port] if args.key?(:port)
          @secret_manager_stored_password = args[:secret_manager_stored_password] if args.key?(:secret_manager_stored_password)
          @ssl_config = args[:ssl_config] if args.key?(:ssl_config)
          @username = args[:username] if args.key?(:username)
        end
      end
      
      # MySQL database structure
      class MysqlRdbms
        include Google::Apis::Core::Hashable
      
        # Mysql databases on the server
        # Corresponds to the JSON property `mysqlDatabases`
        # @return [Array<Google::Apis::DatastreamV1::MysqlDatabase>]
        attr_accessor :mysql_databases
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mysql_databases = args[:mysql_databases] if args.key?(:mysql_databases)
        end
      end
      
      # Configuration for syncing data from a MySQL source.
      class MysqlSourceConfig
        include Google::Apis::Core::Hashable
      
        # Use Binary log position based replication.
        # Corresponds to the JSON property `binaryLogPosition`
        # @return [Google::Apis::DatastreamV1::BinaryLogPosition]
        attr_accessor :binary_log_position
      
        # MySQL database structure
        # Corresponds to the JSON property `excludeObjects`
        # @return [Google::Apis::DatastreamV1::MysqlRdbms]
        attr_accessor :exclude_objects
      
        # Use GTID based replication.
        # Corresponds to the JSON property `gtid`
        # @return [Google::Apis::DatastreamV1::Gtid]
        attr_accessor :gtid
      
        # MySQL database structure
        # Corresponds to the JSON property `includeObjects`
        # @return [Google::Apis::DatastreamV1::MysqlRdbms]
        attr_accessor :include_objects
      
        # Maximum number of concurrent backfill tasks. The number should be non negative.
        # If not set (or set to 0), the system's default value will be used.
        # Corresponds to the JSON property `maxConcurrentBackfillTasks`
        # @return [Fixnum]
        attr_accessor :max_concurrent_backfill_tasks
      
        # Maximum number of concurrent CDC tasks. The number should be non negative. If
        # not set (or set to 0), the system's default value will be used.
        # Corresponds to the JSON property `maxConcurrentCdcTasks`
        # @return [Fixnum]
        attr_accessor :max_concurrent_cdc_tasks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @binary_log_position = args[:binary_log_position] if args.key?(:binary_log_position)
          @exclude_objects = args[:exclude_objects] if args.key?(:exclude_objects)
          @gtid = args[:gtid] if args.key?(:gtid)
          @include_objects = args[:include_objects] if args.key?(:include_objects)
          @max_concurrent_backfill_tasks = args[:max_concurrent_backfill_tasks] if args.key?(:max_concurrent_backfill_tasks)
          @max_concurrent_cdc_tasks = args[:max_concurrent_cdc_tasks] if args.key?(:max_concurrent_cdc_tasks)
        end
      end
      
      # MySQL SSL configuration information.
      class MysqlSslConfig
        include Google::Apis::Core::Hashable
      
        # Input only. PEM-encoded certificate of the CA that signed the source database
        # server's certificate.
        # Corresponds to the JSON property `caCertificate`
        # @return [String]
        attr_accessor :ca_certificate
      
        # Output only. Indicates whether the ca_certificate field is set.
        # Corresponds to the JSON property `caCertificateSet`
        # @return [Boolean]
        attr_accessor :ca_certificate_set
        alias_method :ca_certificate_set?, :ca_certificate_set
      
        # Optional. Input only. PEM-encoded certificate that will be used by the replica
        # to authenticate against the source database server. If this field is used then
        # the 'client_key' and the 'ca_certificate' fields are mandatory.
        # Corresponds to the JSON property `clientCertificate`
        # @return [String]
        attr_accessor :client_certificate
      
        # Output only. Indicates whether the client_certificate field is set.
        # Corresponds to the JSON property `clientCertificateSet`
        # @return [Boolean]
        attr_accessor :client_certificate_set
        alias_method :client_certificate_set?, :client_certificate_set
      
        # Optional. Input only. PEM-encoded private key associated with the Client
        # Certificate. If this field is used then the 'client_certificate' and the '
        # ca_certificate' fields are mandatory.
        # Corresponds to the JSON property `clientKey`
        # @return [String]
        attr_accessor :client_key
      
        # Output only. Indicates whether the client_key field is set.
        # Corresponds to the JSON property `clientKeySet`
        # @return [Boolean]
        attr_accessor :client_key_set
        alias_method :client_key_set?, :client_key_set
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ca_certificate = args[:ca_certificate] if args.key?(:ca_certificate)
          @ca_certificate_set = args[:ca_certificate_set] if args.key?(:ca_certificate_set)
          @client_certificate = args[:client_certificate] if args.key?(:client_certificate)
          @client_certificate_set = args[:client_certificate_set] if args.key?(:client_certificate_set)
          @client_key = args[:client_key] if args.key?(:client_key)
          @client_key_set = args[:client_key_set] if args.key?(:client_key_set)
        end
      end
      
      # MySQL table.
      class MysqlTable
        include Google::Apis::Core::Hashable
      
        # MySQL columns in the database. When unspecified as part of include/exclude
        # objects, includes/excludes everything.
        # Corresponds to the JSON property `mysqlColumns`
        # @return [Array<Google::Apis::DatastreamV1::MysqlColumn>]
        attr_accessor :mysql_columns
      
        # The table name.
        # Corresponds to the JSON property `table`
        # @return [String]
        attr_accessor :table
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mysql_columns = args[:mysql_columns] if args.key?(:mysql_columns)
          @table = args[:table] if args.key?(:table)
        end
      end
      
      # CDC strategy to resume replication from the next available position in the
      # source.
      class NextAvailableStartPosition
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # OAuth2 Client Credentials.
      class Oauth2ClientCredentials
        include Google::Apis::Core::Hashable
      
        # Required. Client ID for Salesforce OAuth2 Client Credentials.
        # Corresponds to the JSON property `clientId`
        # @return [String]
        attr_accessor :client_id
      
        # Optional. Client secret for Salesforce OAuth2 Client Credentials. Mutually
        # exclusive with the `secret_manager_stored_client_secret` field.
        # Corresponds to the JSON property `clientSecret`
        # @return [String]
        attr_accessor :client_secret
      
        # Optional. A reference to a Secret Manager resource name storing the Salesforce
        # OAuth2 client_secret. Mutually exclusive with the `client_secret` field.
        # Corresponds to the JSON property `secretManagerStoredClientSecret`
        # @return [String]
        attr_accessor :secret_manager_stored_client_secret
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_id = args[:client_id] if args.key?(:client_id)
          @client_secret = args[:client_secret] if args.key?(:client_secret)
          @secret_manager_stored_client_secret = args[:secret_manager_stored_client_secret] if args.key?(:secret_manager_stored_client_secret)
        end
      end
      
      # Object filter to apply the rules to.
      class ObjectFilter
        include Google::Apis::Core::Hashable
      
        # Represents an identifier of an object in the data source.
        # Corresponds to the JSON property `sourceObjectIdentifier`
        # @return [Google::Apis::DatastreamV1::SourceObjectIdentifier]
        attr_accessor :source_object_identifier
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @source_object_identifier = args[:source_object_identifier] if args.key?(:source_object_identifier)
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
        # @return [Google::Apis::DatastreamV1::Status]
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
      
        # The normal, successful response of the operation. If the original method
        # returns no data on success, such as `Delete`, the response is `google.protobuf.
        # Empty`. If the original method is standard `Get`/`Create`/`Update`, the
        # response should be the resource. For other methods, the response should have
        # the type `XxxResponse`, where `Xxx` is the original method name. For example,
        # if the original method name is `TakeSnapshot()`, the inferred response type is
        # `TakeSnapshotResponse`.
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
      
      # Represents the metadata of the long-running operation.
      class OperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. API version used to start the operation.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Identifies whether the user has requested cancellation of the
        # operation. Operations that have successfully been cancelled have google.
        # longrunning.Operation.error value with a google.rpc.Status.code of 1,
        # corresponding to `Code.CANCELLED`.
        # Corresponds to the JSON property `requestedCancellation`
        # @return [Boolean]
        attr_accessor :requested_cancellation
        alias_method :requested_cancellation?, :requested_cancellation
      
        # Output only. Human-readable status of the operation, if any.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # Output only. Server-defined resource path for the target of the operation.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # Contains the current validation results.
        # Corresponds to the JSON property `validationResult`
        # @return [Google::Apis::DatastreamV1::ValidationResult]
        attr_accessor :validation_result
      
        # Output only. Name of the verb executed by the operation.
        # Corresponds to the JSON property `verb`
        # @return [String]
        attr_accessor :verb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_version = args[:api_version] if args.key?(:api_version)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @requested_cancellation = args[:requested_cancellation] if args.key?(:requested_cancellation)
          @status_message = args[:status_message] if args.key?(:status_message)
          @target = args[:target] if args.key?(:target)
          @validation_result = args[:validation_result] if args.key?(:validation_result)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # Configuration for Oracle Automatic Storage Management (ASM) connection.
      class OracleAsmConfig
        include Google::Apis::Core::Hashable
      
        # Required. ASM service name for the Oracle ASM connection.
        # Corresponds to the JSON property `asmService`
        # @return [String]
        attr_accessor :asm_service
      
        # Optional. Connection string attributes
        # Corresponds to the JSON property `connectionAttributes`
        # @return [Hash<String,String>]
        attr_accessor :connection_attributes
      
        # Required. Hostname for the Oracle ASM connection.
        # Corresponds to the JSON property `hostname`
        # @return [String]
        attr_accessor :hostname
      
        # Oracle SSL configuration information.
        # Corresponds to the JSON property `oracleSslConfig`
        # @return [Google::Apis::DatastreamV1::OracleSslConfig]
        attr_accessor :oracle_ssl_config
      
        # Optional. Password for the Oracle ASM connection. Mutually exclusive with the `
        # secret_manager_stored_password` field.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # Required. Port for the Oracle ASM connection.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        # Optional. A reference to a Secret Manager resource name storing the Oracle ASM
        # connection password. Mutually exclusive with the `password` field.
        # Corresponds to the JSON property `secretManagerStoredPassword`
        # @return [String]
        attr_accessor :secret_manager_stored_password
      
        # Required. Username for the Oracle ASM connection.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asm_service = args[:asm_service] if args.key?(:asm_service)
          @connection_attributes = args[:connection_attributes] if args.key?(:connection_attributes)
          @hostname = args[:hostname] if args.key?(:hostname)
          @oracle_ssl_config = args[:oracle_ssl_config] if args.key?(:oracle_ssl_config)
          @password = args[:password] if args.key?(:password)
          @port = args[:port] if args.key?(:port)
          @secret_manager_stored_password = args[:secret_manager_stored_password] if args.key?(:secret_manager_stored_password)
          @username = args[:username] if args.key?(:username)
        end
      end
      
      # Configuration to use Oracle ASM to access the log files.
      class OracleAsmLogFileAccess
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Oracle Column.
      class OracleColumn
        include Google::Apis::Core::Hashable
      
        # The column name.
        # Corresponds to the JSON property `column`
        # @return [String]
        attr_accessor :column
      
        # The Oracle data type.
        # Corresponds to the JSON property `dataType`
        # @return [String]
        attr_accessor :data_type
      
        # Column encoding.
        # Corresponds to the JSON property `encoding`
        # @return [String]
        attr_accessor :encoding
      
        # Column length.
        # Corresponds to the JSON property `length`
        # @return [Fixnum]
        attr_accessor :length
      
        # Whether or not the column can accept a null value.
        # Corresponds to the JSON property `nullable`
        # @return [Boolean]
        attr_accessor :nullable
        alias_method :nullable?, :nullable
      
        # The ordinal position of the column in the table.
        # Corresponds to the JSON property `ordinalPosition`
        # @return [Fixnum]
        attr_accessor :ordinal_position
      
        # Column precision.
        # Corresponds to the JSON property `precision`
        # @return [Fixnum]
        attr_accessor :precision
      
        # Whether or not the column represents a primary key.
        # Corresponds to the JSON property `primaryKey`
        # @return [Boolean]
        attr_accessor :primary_key
        alias_method :primary_key?, :primary_key
      
        # Column scale.
        # Corresponds to the JSON property `scale`
        # @return [Fixnum]
        attr_accessor :scale
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column = args[:column] if args.key?(:column)
          @data_type = args[:data_type] if args.key?(:data_type)
          @encoding = args[:encoding] if args.key?(:encoding)
          @length = args[:length] if args.key?(:length)
          @nullable = args[:nullable] if args.key?(:nullable)
          @ordinal_position = args[:ordinal_position] if args.key?(:ordinal_position)
          @precision = args[:precision] if args.key?(:precision)
          @primary_key = args[:primary_key] if args.key?(:primary_key)
          @scale = args[:scale] if args.key?(:scale)
        end
      end
      
      # Oracle data source object identifier.
      class OracleObjectIdentifier
        include Google::Apis::Core::Hashable
      
        # Required. The schema name.
        # Corresponds to the JSON property `schema`
        # @return [String]
        attr_accessor :schema
      
        # Required. The table name.
        # Corresponds to the JSON property `table`
        # @return [String]
        attr_accessor :table
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @schema = args[:schema] if args.key?(:schema)
          @table = args[:table] if args.key?(:table)
        end
      end
      
      # Profile for connecting to an Oracle source.
      class OracleProfile
        include Google::Apis::Core::Hashable
      
        # Connection string attributes
        # Corresponds to the JSON property `connectionAttributes`
        # @return [Hash<String,String>]
        attr_accessor :connection_attributes
      
        # Required. Database for the Oracle connection.
        # Corresponds to the JSON property `databaseService`
        # @return [String]
        attr_accessor :database_service
      
        # Required. Hostname for the Oracle connection.
        # Corresponds to the JSON property `hostname`
        # @return [String]
        attr_accessor :hostname
      
        # Configuration for Oracle Automatic Storage Management (ASM) connection.
        # Corresponds to the JSON property `oracleAsmConfig`
        # @return [Google::Apis::DatastreamV1::OracleAsmConfig]
        attr_accessor :oracle_asm_config
      
        # Oracle SSL configuration information.
        # Corresponds to the JSON property `oracleSslConfig`
        # @return [Google::Apis::DatastreamV1::OracleSslConfig]
        attr_accessor :oracle_ssl_config
      
        # Optional. Password for the Oracle connection. Mutually exclusive with the `
        # secret_manager_stored_password` field.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # Port for the Oracle connection, default value is 1521.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        # Optional. A reference to a Secret Manager resource name storing the Oracle
        # connection password. Mutually exclusive with the `password` field.
        # Corresponds to the JSON property `secretManagerStoredPassword`
        # @return [String]
        attr_accessor :secret_manager_stored_password
      
        # Required. Username for the Oracle connection.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connection_attributes = args[:connection_attributes] if args.key?(:connection_attributes)
          @database_service = args[:database_service] if args.key?(:database_service)
          @hostname = args[:hostname] if args.key?(:hostname)
          @oracle_asm_config = args[:oracle_asm_config] if args.key?(:oracle_asm_config)
          @oracle_ssl_config = args[:oracle_ssl_config] if args.key?(:oracle_ssl_config)
          @password = args[:password] if args.key?(:password)
          @port = args[:port] if args.key?(:port)
          @secret_manager_stored_password = args[:secret_manager_stored_password] if args.key?(:secret_manager_stored_password)
          @username = args[:username] if args.key?(:username)
        end
      end
      
      # Oracle database structure.
      class OracleRdbms
        include Google::Apis::Core::Hashable
      
        # Oracle schemas/databases in the database server.
        # Corresponds to the JSON property `oracleSchemas`
        # @return [Array<Google::Apis::DatastreamV1::OracleSchema>]
        attr_accessor :oracle_schemas
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @oracle_schemas = args[:oracle_schemas] if args.key?(:oracle_schemas)
        end
      end
      
      # Oracle schema.
      class OracleSchema
        include Google::Apis::Core::Hashable
      
        # Tables in the schema.
        # Corresponds to the JSON property `oracleTables`
        # @return [Array<Google::Apis::DatastreamV1::OracleTable>]
        attr_accessor :oracle_tables
      
        # The schema name.
        # Corresponds to the JSON property `schema`
        # @return [String]
        attr_accessor :schema
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @oracle_tables = args[:oracle_tables] if args.key?(:oracle_tables)
          @schema = args[:schema] if args.key?(:schema)
        end
      end
      
      # Oracle SCN position
      class OracleScnPosition
        include Google::Apis::Core::Hashable
      
        # Required. SCN number from where Logs will be read
        # Corresponds to the JSON property `scn`
        # @return [Fixnum]
        attr_accessor :scn
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @scn = args[:scn] if args.key?(:scn)
        end
      end
      
      # Configuration for syncing data from an Oracle source.
      class OracleSourceConfig
        include Google::Apis::Core::Hashable
      
        # Configuration to use Binary Log Parser CDC technique.
        # Corresponds to the JSON property `binaryLogParser`
        # @return [Google::Apis::DatastreamV1::BinaryLogParser]
        attr_accessor :binary_log_parser
      
        # Configuration to drop large object values.
        # Corresponds to the JSON property `dropLargeObjects`
        # @return [Google::Apis::DatastreamV1::DropLargeObjects]
        attr_accessor :drop_large_objects
      
        # Oracle database structure.
        # Corresponds to the JSON property `excludeObjects`
        # @return [Google::Apis::DatastreamV1::OracleRdbms]
        attr_accessor :exclude_objects
      
        # Oracle database structure.
        # Corresponds to the JSON property `includeObjects`
        # @return [Google::Apis::DatastreamV1::OracleRdbms]
        attr_accessor :include_objects
      
        # Configuration to use LogMiner CDC method.
        # Corresponds to the JSON property `logMiner`
        # @return [Google::Apis::DatastreamV1::LogMiner]
        attr_accessor :log_miner
      
        # Maximum number of concurrent backfill tasks. The number should be non-negative.
        # If not set (or set to 0), the system's default value is used.
        # Corresponds to the JSON property `maxConcurrentBackfillTasks`
        # @return [Fixnum]
        attr_accessor :max_concurrent_backfill_tasks
      
        # Maximum number of concurrent CDC tasks. The number should be non-negative. If
        # not set (or set to 0), the system's default value is used.
        # Corresponds to the JSON property `maxConcurrentCdcTasks`
        # @return [Fixnum]
        attr_accessor :max_concurrent_cdc_tasks
      
        # Configuration to stream large object values.
        # Corresponds to the JSON property `streamLargeObjects`
        # @return [Google::Apis::DatastreamV1::StreamLargeObjects]
        attr_accessor :stream_large_objects
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @binary_log_parser = args[:binary_log_parser] if args.key?(:binary_log_parser)
          @drop_large_objects = args[:drop_large_objects] if args.key?(:drop_large_objects)
          @exclude_objects = args[:exclude_objects] if args.key?(:exclude_objects)
          @include_objects = args[:include_objects] if args.key?(:include_objects)
          @log_miner = args[:log_miner] if args.key?(:log_miner)
          @max_concurrent_backfill_tasks = args[:max_concurrent_backfill_tasks] if args.key?(:max_concurrent_backfill_tasks)
          @max_concurrent_cdc_tasks = args[:max_concurrent_cdc_tasks] if args.key?(:max_concurrent_cdc_tasks)
          @stream_large_objects = args[:stream_large_objects] if args.key?(:stream_large_objects)
        end
      end
      
      # Oracle SSL configuration information.
      class OracleSslConfig
        include Google::Apis::Core::Hashable
      
        # Input only. PEM-encoded certificate of the CA that signed the source database
        # server's certificate.
        # Corresponds to the JSON property `caCertificate`
        # @return [String]
        attr_accessor :ca_certificate
      
        # Output only. Indicates whether the ca_certificate field has been set for this
        # Connection-Profile.
        # Corresponds to the JSON property `caCertificateSet`
        # @return [Boolean]
        attr_accessor :ca_certificate_set
        alias_method :ca_certificate_set?, :ca_certificate_set
      
        # Optional. The distinguished name (DN) mentioned in the server certificate.
        # This corresponds to SSL_SERVER_CERT_DN sqlnet parameter. Refer https://docs.
        # oracle.com/en/database/oracle/oracle-database/19/netrf/local-naming-parameters-
        # in-tns-ora-file.html#GUID-70AB0695-A9AA-4A94-B141-4C605236EEB7 If this field
        # is not provided, the DN matching is not enforced.
        # Corresponds to the JSON property `serverCertificateDistinguishedName`
        # @return [String]
        attr_accessor :server_certificate_distinguished_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ca_certificate = args[:ca_certificate] if args.key?(:ca_certificate)
          @ca_certificate_set = args[:ca_certificate_set] if args.key?(:ca_certificate_set)
          @server_certificate_distinguished_name = args[:server_certificate_distinguished_name] if args.key?(:server_certificate_distinguished_name)
        end
      end
      
      # Oracle table.
      class OracleTable
        include Google::Apis::Core::Hashable
      
        # Oracle columns in the schema. When unspecified as part of include/exclude
        # objects, includes/excludes everything.
        # Corresponds to the JSON property `oracleColumns`
        # @return [Array<Google::Apis::DatastreamV1::OracleColumn>]
        attr_accessor :oracle_columns
      
        # The table name.
        # Corresponds to the JSON property `table`
        # @return [String]
        attr_accessor :table
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @oracle_columns = args[:oracle_columns] if args.key?(:oracle_columns)
          @table = args[:table] if args.key?(:table)
        end
      end
      
      # PostgreSQL Column.
      class PostgresqlColumn
        include Google::Apis::Core::Hashable
      
        # The column name.
        # Corresponds to the JSON property `column`
        # @return [String]
        attr_accessor :column
      
        # The PostgreSQL data type.
        # Corresponds to the JSON property `dataType`
        # @return [String]
        attr_accessor :data_type
      
        # Column length.
        # Corresponds to the JSON property `length`
        # @return [Fixnum]
        attr_accessor :length
      
        # Whether or not the column can accept a null value.
        # Corresponds to the JSON property `nullable`
        # @return [Boolean]
        attr_accessor :nullable
        alias_method :nullable?, :nullable
      
        # The ordinal position of the column in the table.
        # Corresponds to the JSON property `ordinalPosition`
        # @return [Fixnum]
        attr_accessor :ordinal_position
      
        # Column precision.
        # Corresponds to the JSON property `precision`
        # @return [Fixnum]
        attr_accessor :precision
      
        # Whether or not the column represents a primary key.
        # Corresponds to the JSON property `primaryKey`
        # @return [Boolean]
        attr_accessor :primary_key
        alias_method :primary_key?, :primary_key
      
        # Column scale.
        # Corresponds to the JSON property `scale`
        # @return [Fixnum]
        attr_accessor :scale
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column = args[:column] if args.key?(:column)
          @data_type = args[:data_type] if args.key?(:data_type)
          @length = args[:length] if args.key?(:length)
          @nullable = args[:nullable] if args.key?(:nullable)
          @ordinal_position = args[:ordinal_position] if args.key?(:ordinal_position)
          @precision = args[:precision] if args.key?(:precision)
          @primary_key = args[:primary_key] if args.key?(:primary_key)
          @scale = args[:scale] if args.key?(:scale)
        end
      end
      
      # PostgreSQL data source object identifier.
      class PostgresqlObjectIdentifier
        include Google::Apis::Core::Hashable
      
        # Required. The schema name.
        # Corresponds to the JSON property `schema`
        # @return [String]
        attr_accessor :schema
      
        # Required. The table name.
        # Corresponds to the JSON property `table`
        # @return [String]
        attr_accessor :table
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @schema = args[:schema] if args.key?(:schema)
          @table = args[:table] if args.key?(:table)
        end
      end
      
      # Profile for connecting to a PostgreSQL source.
      class PostgresqlProfile
        include Google::Apis::Core::Hashable
      
        # Required. Database for the PostgreSQL connection.
        # Corresponds to the JSON property `database`
        # @return [String]
        attr_accessor :database
      
        # Required. Hostname for the PostgreSQL connection.
        # Corresponds to the JSON property `hostname`
        # @return [String]
        attr_accessor :hostname
      
        # Optional. Password for the PostgreSQL connection. Mutually exclusive with the `
        # secret_manager_stored_password` field.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # Port for the PostgreSQL connection, default value is 5432.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        # Optional. A reference to a Secret Manager resource name storing the PostgreSQL
        # connection password. Mutually exclusive with the `password` field.
        # Corresponds to the JSON property `secretManagerStoredPassword`
        # @return [String]
        attr_accessor :secret_manager_stored_password
      
        # PostgreSQL SSL configuration information.
        # Corresponds to the JSON property `sslConfig`
        # @return [Google::Apis::DatastreamV1::PostgresqlSslConfig]
        attr_accessor :ssl_config
      
        # Required. Username for the PostgreSQL connection.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @database = args[:database] if args.key?(:database)
          @hostname = args[:hostname] if args.key?(:hostname)
          @password = args[:password] if args.key?(:password)
          @port = args[:port] if args.key?(:port)
          @secret_manager_stored_password = args[:secret_manager_stored_password] if args.key?(:secret_manager_stored_password)
          @ssl_config = args[:ssl_config] if args.key?(:ssl_config)
          @username = args[:username] if args.key?(:username)
        end
      end
      
      # PostgreSQL database structure.
      class PostgresqlRdbms
        include Google::Apis::Core::Hashable
      
        # PostgreSQL schemas in the database server.
        # Corresponds to the JSON property `postgresqlSchemas`
        # @return [Array<Google::Apis::DatastreamV1::PostgresqlSchema>]
        attr_accessor :postgresql_schemas
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @postgresql_schemas = args[:postgresql_schemas] if args.key?(:postgresql_schemas)
        end
      end
      
      # PostgreSQL schema.
      class PostgresqlSchema
        include Google::Apis::Core::Hashable
      
        # Tables in the schema.
        # Corresponds to the JSON property `postgresqlTables`
        # @return [Array<Google::Apis::DatastreamV1::PostgresqlTable>]
        attr_accessor :postgresql_tables
      
        # The schema name.
        # Corresponds to the JSON property `schema`
        # @return [String]
        attr_accessor :schema
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @postgresql_tables = args[:postgresql_tables] if args.key?(:postgresql_tables)
          @schema = args[:schema] if args.key?(:schema)
        end
      end
      
      # Configuration for syncing data from a PostgreSQL source.
      class PostgresqlSourceConfig
        include Google::Apis::Core::Hashable
      
        # PostgreSQL database structure.
        # Corresponds to the JSON property `excludeObjects`
        # @return [Google::Apis::DatastreamV1::PostgresqlRdbms]
        attr_accessor :exclude_objects
      
        # PostgreSQL database structure.
        # Corresponds to the JSON property `includeObjects`
        # @return [Google::Apis::DatastreamV1::PostgresqlRdbms]
        attr_accessor :include_objects
      
        # Maximum number of concurrent backfill tasks. The number should be non negative.
        # If not set (or set to 0), the system's default value will be used.
        # Corresponds to the JSON property `maxConcurrentBackfillTasks`
        # @return [Fixnum]
        attr_accessor :max_concurrent_backfill_tasks
      
        # Required. The name of the publication that includes the set of all tables that
        # are defined in the stream's include_objects.
        # Corresponds to the JSON property `publication`
        # @return [String]
        attr_accessor :publication
      
        # Required. Immutable. The name of the logical replication slot that's
        # configured with the pgoutput plugin.
        # Corresponds to the JSON property `replicationSlot`
        # @return [String]
        attr_accessor :replication_slot
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exclude_objects = args[:exclude_objects] if args.key?(:exclude_objects)
          @include_objects = args[:include_objects] if args.key?(:include_objects)
          @max_concurrent_backfill_tasks = args[:max_concurrent_backfill_tasks] if args.key?(:max_concurrent_backfill_tasks)
          @publication = args[:publication] if args.key?(:publication)
          @replication_slot = args[:replication_slot] if args.key?(:replication_slot)
        end
      end
      
      # PostgreSQL SSL configuration information.
      class PostgresqlSslConfig
        include Google::Apis::Core::Hashable
      
        # Message represents the option where Datastream will enforce the encryption and
        # authenticate the server identity as well as the client identity.
        # ca_certificate, client_certificate and client_key must be set if user selects
        # this option.
        # Corresponds to the JSON property `serverAndClientVerification`
        # @return [Google::Apis::DatastreamV1::ServerAndClientVerification]
        attr_accessor :server_and_client_verification
      
        # Message represents the option where Datastream will enforce the encryption and
        # authenticate the server identity. ca_certificate must be set if user selects
        # this option.
        # Corresponds to the JSON property `serverVerification`
        # @return [Google::Apis::DatastreamV1::ServerVerification]
        attr_accessor :server_verification
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @server_and_client_verification = args[:server_and_client_verification] if args.key?(:server_and_client_verification)
          @server_verification = args[:server_verification] if args.key?(:server_verification)
        end
      end
      
      # PostgreSQL table.
      class PostgresqlTable
        include Google::Apis::Core::Hashable
      
        # PostgreSQL columns in the schema. When unspecified as part of include/exclude
        # objects, includes/excludes everything.
        # Corresponds to the JSON property `postgresqlColumns`
        # @return [Array<Google::Apis::DatastreamV1::PostgresqlColumn>]
        attr_accessor :postgresql_columns
      
        # The table name.
        # Corresponds to the JSON property `table`
        # @return [String]
        attr_accessor :table
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @postgresql_columns = args[:postgresql_columns] if args.key?(:postgresql_columns)
          @table = args[:table] if args.key?(:table)
        end
      end
      
      # Describes what preconditions have failed. For example, if an RPC failed
      # because it required the Terms of Service to be acknowledged, it could list the
      # terms of service violation in the PreconditionFailure message.
      class PreconditionFailure
        include Google::Apis::Core::Hashable
      
        # Describes all precondition violations.
        # Corresponds to the JSON property `violations`
        # @return [Array<Google::Apis::DatastreamV1::PreconditionFailureViolation>]
        attr_accessor :violations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @violations = args[:violations] if args.key?(:violations)
        end
      end
      
      # A message type used to describe a single precondition failure.
      class PreconditionFailureViolation
        include Google::Apis::Core::Hashable
      
        # A description of how the precondition failed. Developers can use this
        # description to understand how to fix the failure. For example: "Terms of
        # service not accepted".
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The subject, relative to the type, that failed. For example, "google.com/cloud"
        # relative to the "TOS" type would indicate which terms of service is being
        # referenced.
        # Corresponds to the JSON property `subject`
        # @return [String]
        attr_accessor :subject
      
        # The type of PreconditionFailure. We recommend using a service-specific enum
        # type to define the supported precondition violation subjects. For example, "
        # TOS" for "Terms of Service violation".
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @subject = args[:subject] if args.key?(:subject)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # The PrivateConnection resource is used to establish private connectivity
      # between Datastream and a customer's network.
      class PrivateConnection
        include Google::Apis::Core::Hashable
      
        # Output only. The create time of the resource.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. Display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Represent a user-facing Error.
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::DatastreamV1::Error]
        attr_accessor :error
      
        # Labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. Identifier. The resource's name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The PSC Interface configuration is used to create PSC Interface between
        # Datastream and the consumer's PSC.
        # Corresponds to the JSON property `pscInterfaceConfig`
        # @return [Google::Apis::DatastreamV1::PscInterfaceConfig]
        attr_accessor :psc_interface_config
      
        # Output only. Reserved for future use.
        # Corresponds to the JSON property `satisfiesPzi`
        # @return [Boolean]
        attr_accessor :satisfies_pzi
        alias_method :satisfies_pzi?, :satisfies_pzi
      
        # Output only. Reserved for future use.
        # Corresponds to the JSON property `satisfiesPzs`
        # @return [Boolean]
        attr_accessor :satisfies_pzs
        alias_method :satisfies_pzs?, :satisfies_pzs
      
        # Output only. The state of the Private Connection.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The update time of the resource.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # The VPC Peering configuration is used to create VPC peering between Datastream
        # and the consumer's VPC.
        # Corresponds to the JSON property `vpcPeeringConfig`
        # @return [Google::Apis::DatastreamV1::VpcPeeringConfig]
        attr_accessor :vpc_peering_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @error = args[:error] if args.key?(:error)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @psc_interface_config = args[:psc_interface_config] if args.key?(:psc_interface_config)
          @satisfies_pzi = args[:satisfies_pzi] if args.key?(:satisfies_pzi)
          @satisfies_pzs = args[:satisfies_pzs] if args.key?(:satisfies_pzs)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
          @vpc_peering_config = args[:vpc_peering_config] if args.key?(:vpc_peering_config)
        end
      end
      
      # Private Connectivity
      class PrivateConnectivity
        include Google::Apis::Core::Hashable
      
        # Required. A reference to a private connection resource. Format: `projects/`
        # project`/locations/`location`/privateConnections/`name``
        # Corresponds to the JSON property `privateConnection`
        # @return [String]
        attr_accessor :private_connection
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @private_connection = args[:private_connection] if args.key?(:private_connection)
        end
      end
      
      # The PSC Interface configuration is used to create PSC Interface between
      # Datastream and the consumer's PSC.
      class PscInterfaceConfig
        include Google::Apis::Core::Hashable
      
        # Required. Fully qualified name of the Network Attachment that Datastream will
        # connect to. Format: `projects/`project`/regions/`region`/networkAttachments/`
        # name``
        # Corresponds to the JSON property `networkAttachment`
        # @return [String]
        attr_accessor :network_attachment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @network_attachment = args[:network_attachment] if args.key?(:network_attachment)
        end
      end
      
      # Describes how a quota check failed. For example if a daily limit was exceeded
      # for the calling project, a service could respond with a QuotaFailure detail
      # containing the project id and the description of the quota limit that was
      # exceeded. If the calling project hasn't enabled the service in the developer
      # console, then a service could respond with the project id and set `
      # service_disabled` to true. Also see RetryInfo and Help types for other details
      # about handling a quota failure.
      class QuotaFailure
        include Google::Apis::Core::Hashable
      
        # Describes all quota violations.
        # Corresponds to the JSON property `violations`
        # @return [Array<Google::Apis::DatastreamV1::QuotaFailureViolation>]
        attr_accessor :violations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @violations = args[:violations] if args.key?(:violations)
        end
      end
      
      # A message type used to describe a single quota violation. For example, a daily
      # quota or a custom quota that was exceeded.
      class QuotaFailureViolation
        include Google::Apis::Core::Hashable
      
        # The API Service from which the `QuotaFailure.Violation` orginates. In some
        # cases, Quota issues originate from an API Service other than the one that was
        # called. In other words, a dependency of the called API Service could be the
        # cause of the `QuotaFailure`, and this field would have the dependency API
        # service name. For example, if the called API is Kubernetes Engine API (
        # container.googleapis.com), and a quota violation occurs in the Kubernetes
        # Engine API itself, this field would be "container.googleapis.com". On the
        # other hand, if the quota violation occurs when the Kubernetes Engine API
        # creates VMs in the Compute Engine API (compute.googleapis.com), this field
        # would be "compute.googleapis.com".
        # Corresponds to the JSON property `apiService`
        # @return [String]
        attr_accessor :api_service
      
        # A description of how the quota check failed. Clients can use this description
        # to find more about the quota configuration in the service's public
        # documentation, or find the relevant quota limit to adjust through developer
        # console. For example: "Service disabled" or "Daily Limit for read operations
        # exceeded".
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The new quota value being rolled out at the time of the violation. At the
        # completion of the rollout, this value will be enforced in place of quota_value.
        # If no rollout is in progress at the time of the violation, this field is not
        # set. For example, if at the time of the violation a rollout is in progress
        # changing the number of CPUs quota from 10 to 20, 20 would be the value of this
        # field.
        # Corresponds to the JSON property `futureQuotaValue`
        # @return [Fixnum]
        attr_accessor :future_quota_value
      
        # The dimensions of the violated quota. Every non-global quota is enforced on a
        # set of dimensions. While quota metric defines what to count, the dimensions
        # specify for what aspects the counter should be increased. For example, the
        # quota "CPUs per region per VM family" enforces a limit on the metric "compute.
        # googleapis.com/cpus_per_vm_family" on dimensions "region" and "vm_family". And
        # if the violation occurred in region "us-central1" and for VM family "n1", the
        # quota_dimensions would be, ` "region": "us-central1", "vm_family": "n1", `
        # When a quota is enforced globally, the quota_dimensions would always be empty.
        # Corresponds to the JSON property `quotaDimensions`
        # @return [Hash<String,String>]
        attr_accessor :quota_dimensions
      
        # The id of the violated quota. Also know as "limit name", this is the unique
        # identifier of a quota in the context of an API service. For example, "CPUS-PER-
        # VM-FAMILY-per-project-region".
        # Corresponds to the JSON property `quotaId`
        # @return [String]
        attr_accessor :quota_id
      
        # The metric of the violated quota. A quota metric is a named counter to measure
        # usage, such as API requests or CPUs. When an activity occurs in a service,
        # such as Virtual Machine allocation, one or more quota metrics may be affected.
        # For example, "compute.googleapis.com/cpus_per_vm_family", "storage.googleapis.
        # com/internet_egress_bandwidth".
        # Corresponds to the JSON property `quotaMetric`
        # @return [String]
        attr_accessor :quota_metric
      
        # The enforced quota value at the time of the `QuotaFailure`. For example, if
        # the enforced quota value at the time of the `QuotaFailure` on the number of
        # CPUs is "10", then the value of this field would reflect this quantity.
        # Corresponds to the JSON property `quotaValue`
        # @return [Fixnum]
        attr_accessor :quota_value
      
        # The subject on which the quota check failed. For example, "clientip:" or "
        # project:".
        # Corresponds to the JSON property `subject`
        # @return [String]
        attr_accessor :subject
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_service = args[:api_service] if args.key?(:api_service)
          @description = args[:description] if args.key?(:description)
          @future_quota_value = args[:future_quota_value] if args.key?(:future_quota_value)
          @quota_dimensions = args[:quota_dimensions] if args.key?(:quota_dimensions)
          @quota_id = args[:quota_id] if args.key?(:quota_id)
          @quota_metric = args[:quota_metric] if args.key?(:quota_metric)
          @quota_value = args[:quota_value] if args.key?(:quota_value)
          @subject = args[:subject] if args.key?(:subject)
        end
      end
      
      # Contains metadata about the request that clients can attach when filing a bug
      # or providing other forms of feedback.
      class RequestInfo
        include Google::Apis::Core::Hashable
      
        # An opaque string that should only be interpreted by the service generating it.
        # For example, it can be used to identify requests in the service's logs.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # Any data that was used to serve this request. For example, an encrypted stack
        # trace that can be sent back to the service provider for debugging.
        # Corresponds to the JSON property `servingData`
        # @return [String]
        attr_accessor :serving_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_id = args[:request_id] if args.key?(:request_id)
          @serving_data = args[:serving_data] if args.key?(:serving_data)
        end
      end
      
      # Describes the resource that is being accessed.
      class ResourceInfo
        include Google::Apis::Core::Hashable
      
        # Describes what error is encountered when accessing this resource. For example,
        # updating a cloud project may require the `writer` permission on the developer
        # console project.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The owner of the resource (optional). For example, "user:" or "project:".
        # Corresponds to the JSON property `owner`
        # @return [String]
        attr_accessor :owner
      
        # The name of the resource being accessed. For example, a shared calendar name: "
        # example.com_4fghdhgsrgh@group.calendar.google.com", if the current error is
        # google.rpc.Code.PERMISSION_DENIED.
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # A name for the type of resource being accessed, e.g. "sql table", "cloud
        # storage bucket", "file", "Google calendar"; or the type URL of the resource: e.
        # g. "type.googleapis.com/google.pubsub.v1.Topic".
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @owner = args[:owner] if args.key?(:owner)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
        end
      end
      
      # Describes when the clients can retry a failed request. Clients could ignore
      # the recommendation here or retry when this information is missing from error
      # responses. It's always recommended that clients should use exponential backoff
      # when retrying. Clients should wait until `retry_delay` amount of time has
      # passed since receiving the error response before retrying. If retrying
      # requests also fail, clients should use an exponential backoff scheme to
      # gradually increase the delay between retries based on `retry_delay`, until
      # either a maximum number of retries have been reached or a maximum retry delay
      # cap has been reached.
      class RetryInfo
        include Google::Apis::Core::Hashable
      
        # Clients should wait at least this long between retrying the same request.
        # Corresponds to the JSON property `retryDelay`
        # @return [String]
        attr_accessor :retry_delay
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @retry_delay = args[:retry_delay] if args.key?(:retry_delay)
        end
      end
      
      # The route resource is the child of the private connection resource, used for
      # defining a route for a private connection.
      class Route
        include Google::Apis::Core::Hashable
      
        # Output only. The create time of the resource.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. Destination address for connection
        # Corresponds to the JSON property `destinationAddress`
        # @return [String]
        attr_accessor :destination_address
      
        # Destination port for connection
        # Corresponds to the JSON property `destinationPort`
        # @return [Fixnum]
        attr_accessor :destination_port
      
        # Required. Display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. Identifier. The resource's name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The update time of the resource.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @destination_address = args[:destination_address] if args.key?(:destination_address)
          @destination_port = args[:destination_port] if args.key?(:destination_port)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A set of rules to apply to a set of objects.
      class RuleSet
        include Google::Apis::Core::Hashable
      
        # Required. List of customization rules to apply.
        # Corresponds to the JSON property `customizationRules`
        # @return [Array<Google::Apis::DatastreamV1::CustomizationRule>]
        attr_accessor :customization_rules
      
        # Object filter to apply the rules to.
        # Corresponds to the JSON property `objectFilter`
        # @return [Google::Apis::DatastreamV1::ObjectFilter]
        attr_accessor :object_filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customization_rules = args[:customization_rules] if args.key?(:customization_rules)
          @object_filter = args[:object_filter] if args.key?(:object_filter)
        end
      end
      
      # Request message for running a stream.
      class RunStreamRequest
        include Google::Apis::Core::Hashable
      
        # The strategy that the stream uses for CDC replication.
        # Corresponds to the JSON property `cdcStrategy`
        # @return [Google::Apis::DatastreamV1::CdcStrategy]
        attr_accessor :cdc_strategy
      
        # Optional. Update the stream without validating it.
        # Corresponds to the JSON property `force`
        # @return [Boolean]
        attr_accessor :force
        alias_method :force?, :force
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cdc_strategy = args[:cdc_strategy] if args.key?(:cdc_strategy)
          @force = args[:force] if args.key?(:force)
        end
      end
      
      # Salesforce field.
      class SalesforceField
        include Google::Apis::Core::Hashable
      
        # The data type.
        # Corresponds to the JSON property `dataType`
        # @return [String]
        attr_accessor :data_type
      
        # The field name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Indicates whether the field can accept nil values.
        # Corresponds to the JSON property `nillable`
        # @return [Boolean]
        attr_accessor :nillable
        alias_method :nillable?, :nillable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_type = args[:data_type] if args.key?(:data_type)
          @name = args[:name] if args.key?(:name)
          @nillable = args[:nillable] if args.key?(:nillable)
        end
      end
      
      # Salesforce object.
      class SalesforceObject
        include Google::Apis::Core::Hashable
      
        # Salesforce fields. When unspecified as part of include objects, includes
        # everything, when unspecified as part of exclude objects, excludes nothing.
        # Corresponds to the JSON property `fields`
        # @return [Array<Google::Apis::DatastreamV1::SalesforceField>]
        attr_accessor :fields
      
        # The object name.
        # Corresponds to the JSON property `objectName`
        # @return [String]
        attr_accessor :object_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fields = args[:fields] if args.key?(:fields)
          @object_name = args[:object_name] if args.key?(:object_name)
        end
      end
      
      # Salesforce data source object identifier.
      class SalesforceObjectIdentifier
        include Google::Apis::Core::Hashable
      
        # Required. The object name.
        # Corresponds to the JSON property `objectName`
        # @return [String]
        attr_accessor :object_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object_name = args[:object_name] if args.key?(:object_name)
        end
      end
      
      # Salesforce organization structure.
      class SalesforceOrg
        include Google::Apis::Core::Hashable
      
        # Salesforce objects in the database server.
        # Corresponds to the JSON property `objects`
        # @return [Array<Google::Apis::DatastreamV1::SalesforceObject>]
        attr_accessor :objects
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @objects = args[:objects] if args.key?(:objects)
        end
      end
      
      # Profile for connecting to a Salesforce source.
      class SalesforceProfile
        include Google::Apis::Core::Hashable
      
        # Required. Domain endpoint for the Salesforce connection.
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        # OAuth2 Client Credentials.
        # Corresponds to the JSON property `oauth2ClientCredentials`
        # @return [Google::Apis::DatastreamV1::Oauth2ClientCredentials]
        attr_accessor :oauth2_client_credentials
      
        # Username-password credentials.
        # Corresponds to the JSON property `userCredentials`
        # @return [Google::Apis::DatastreamV1::UserCredentials]
        attr_accessor :user_credentials
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain = args[:domain] if args.key?(:domain)
          @oauth2_client_credentials = args[:oauth2_client_credentials] if args.key?(:oauth2_client_credentials)
          @user_credentials = args[:user_credentials] if args.key?(:user_credentials)
        end
      end
      
      # Configuration for syncing data from a Salesforce source.
      class SalesforceSourceConfig
        include Google::Apis::Core::Hashable
      
        # Salesforce organization structure.
        # Corresponds to the JSON property `excludeObjects`
        # @return [Google::Apis::DatastreamV1::SalesforceOrg]
        attr_accessor :exclude_objects
      
        # Salesforce organization structure.
        # Corresponds to the JSON property `includeObjects`
        # @return [Google::Apis::DatastreamV1::SalesforceOrg]
        attr_accessor :include_objects
      
        # Required. Salesforce objects polling interval. The interval at which new
        # changes will be polled for each object. The duration must be from `5 minutes`
        # to `24 hours`, inclusive.
        # Corresponds to the JSON property `pollingInterval`
        # @return [String]
        attr_accessor :polling_interval
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exclude_objects = args[:exclude_objects] if args.key?(:exclude_objects)
          @include_objects = args[:include_objects] if args.key?(:include_objects)
          @polling_interval = args[:polling_interval] if args.key?(:polling_interval)
        end
      end
      
      # Message represents the option where Datastream will enforce the encryption and
      # authenticate the server identity as well as the client identity.
      # ca_certificate, client_certificate and client_key must be set if user selects
      # this option.
      class ServerAndClientVerification
        include Google::Apis::Core::Hashable
      
        # Required. Input only. PEM-encoded server root CA certificate.
        # Corresponds to the JSON property `caCertificate`
        # @return [String]
        attr_accessor :ca_certificate
      
        # Required. Input only. PEM-encoded certificate used by the source database to
        # authenticate the client identity (i.e., the Datastream's identity). This
        # certificate is signed by either a root certificate trusted by the server or
        # one or more intermediate certificates (which is stored with the leaf
        # certificate) to link the this certificate to the trusted root certificate.
        # Corresponds to the JSON property `clientCertificate`
        # @return [String]
        attr_accessor :client_certificate
      
        # Optional. Input only. PEM-encoded private key associated with the client
        # certificate. This value will be used during the SSL/TLS handshake, allowing
        # the PostgreSQL server to authenticate the client's identity, i.e. identity of
        # the Datastream.
        # Corresponds to the JSON property `clientKey`
        # @return [String]
        attr_accessor :client_key
      
        # Optional. The hostname mentioned in the Subject or SAN extension of the server
        # certificate. If this field is not provided, the hostname in the server
        # certificate is not validated.
        # Corresponds to the JSON property `serverCertificateHostname`
        # @return [String]
        attr_accessor :server_certificate_hostname
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ca_certificate = args[:ca_certificate] if args.key?(:ca_certificate)
          @client_certificate = args[:client_certificate] if args.key?(:client_certificate)
          @client_key = args[:client_key] if args.key?(:client_key)
          @server_certificate_hostname = args[:server_certificate_hostname] if args.key?(:server_certificate_hostname)
        end
      end
      
      # Message represents the option where Datastream will enforce the encryption and
      # authenticate the server identity. ca_certificate must be set if user selects
      # this option.
      class ServerVerification
        include Google::Apis::Core::Hashable
      
        # Required. Input only. PEM-encoded server root CA certificate.
        # Corresponds to the JSON property `caCertificate`
        # @return [String]
        attr_accessor :ca_certificate
      
        # Optional. The hostname mentioned in the Subject or SAN extension of the server
        # certificate. If this field is not provided, the hostname in the server
        # certificate is not validated.
        # Corresponds to the JSON property `serverCertificateHostname`
        # @return [String]
        attr_accessor :server_certificate_hostname
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ca_certificate = args[:ca_certificate] if args.key?(:ca_certificate)
          @server_certificate_hostname = args[:server_certificate_hostname] if args.key?(:server_certificate_hostname)
        end
      end
      
      # A single target dataset to which all data will be streamed.
      class SingleTargetDataset
        include Google::Apis::Core::Hashable
      
        # The dataset ID of the target dataset. DatasetIds allowed characters: https://
        # cloud.google.com/bigquery/docs/reference/rest/v2/datasets#datasetreference.
        # Corresponds to the JSON property `datasetId`
        # @return [String]
        attr_accessor :dataset_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset_id = args[:dataset_id] if args.key?(:dataset_id)
        end
      end
      
      # The configuration of the stream source.
      class SourceConfig
        include Google::Apis::Core::Hashable
      
        # Configuration for syncing data from a MongoDB source.
        # Corresponds to the JSON property `mongodbSourceConfig`
        # @return [Google::Apis::DatastreamV1::MongodbSourceConfig]
        attr_accessor :mongodb_source_config
      
        # Configuration for syncing data from a MySQL source.
        # Corresponds to the JSON property `mysqlSourceConfig`
        # @return [Google::Apis::DatastreamV1::MysqlSourceConfig]
        attr_accessor :mysql_source_config
      
        # Configuration for syncing data from an Oracle source.
        # Corresponds to the JSON property `oracleSourceConfig`
        # @return [Google::Apis::DatastreamV1::OracleSourceConfig]
        attr_accessor :oracle_source_config
      
        # Configuration for syncing data from a PostgreSQL source.
        # Corresponds to the JSON property `postgresqlSourceConfig`
        # @return [Google::Apis::DatastreamV1::PostgresqlSourceConfig]
        attr_accessor :postgresql_source_config
      
        # Configuration for syncing data from a Salesforce source.
        # Corresponds to the JSON property `salesforceSourceConfig`
        # @return [Google::Apis::DatastreamV1::SalesforceSourceConfig]
        attr_accessor :salesforce_source_config
      
        # Required. Source connection profile resource. Format: `projects/`project`/
        # locations/`location`/connectionProfiles/`name``
        # Corresponds to the JSON property `sourceConnectionProfile`
        # @return [String]
        attr_accessor :source_connection_profile
      
        # Configuration for syncing data from a Spanner source.
        # Corresponds to the JSON property `spannerSourceConfig`
        # @return [Google::Apis::DatastreamV1::SpannerSourceConfig]
        attr_accessor :spanner_source_config
      
        # Configuration for syncing data from a SQLServer source.
        # Corresponds to the JSON property `sqlServerSourceConfig`
        # @return [Google::Apis::DatastreamV1::SqlServerSourceConfig]
        attr_accessor :sql_server_source_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mongodb_source_config = args[:mongodb_source_config] if args.key?(:mongodb_source_config)
          @mysql_source_config = args[:mysql_source_config] if args.key?(:mysql_source_config)
          @oracle_source_config = args[:oracle_source_config] if args.key?(:oracle_source_config)
          @postgresql_source_config = args[:postgresql_source_config] if args.key?(:postgresql_source_config)
          @salesforce_source_config = args[:salesforce_source_config] if args.key?(:salesforce_source_config)
          @source_connection_profile = args[:source_connection_profile] if args.key?(:source_connection_profile)
          @spanner_source_config = args[:spanner_source_config] if args.key?(:spanner_source_config)
          @sql_server_source_config = args[:sql_server_source_config] if args.key?(:sql_server_source_config)
        end
      end
      
      # Destination datasets are created so that hierarchy of the destination data
      # objects matches the source hierarchy.
      class SourceHierarchyDatasets
        include Google::Apis::Core::Hashable
      
        # Dataset template used for dynamic dataset creation.
        # Corresponds to the JSON property `datasetTemplate`
        # @return [Google::Apis::DatastreamV1::DatasetTemplate]
        attr_accessor :dataset_template
      
        # Optional. The project id of the BigQuery dataset. If not specified, the
        # project will be inferred from the stream resource.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset_template = args[:dataset_template] if args.key?(:dataset_template)
          @project_id = args[:project_id] if args.key?(:project_id)
        end
      end
      
      # Represents an identifier of an object in the data source.
      class SourceObjectIdentifier
        include Google::Apis::Core::Hashable
      
        # MongoDB data source object identifier.
        # Corresponds to the JSON property `mongodbIdentifier`
        # @return [Google::Apis::DatastreamV1::MongodbObjectIdentifier]
        attr_accessor :mongodb_identifier
      
        # Mysql data source object identifier.
        # Corresponds to the JSON property `mysqlIdentifier`
        # @return [Google::Apis::DatastreamV1::MysqlObjectIdentifier]
        attr_accessor :mysql_identifier
      
        # Oracle data source object identifier.
        # Corresponds to the JSON property `oracleIdentifier`
        # @return [Google::Apis::DatastreamV1::OracleObjectIdentifier]
        attr_accessor :oracle_identifier
      
        # PostgreSQL data source object identifier.
        # Corresponds to the JSON property `postgresqlIdentifier`
        # @return [Google::Apis::DatastreamV1::PostgresqlObjectIdentifier]
        attr_accessor :postgresql_identifier
      
        # Salesforce data source object identifier.
        # Corresponds to the JSON property `salesforceIdentifier`
        # @return [Google::Apis::DatastreamV1::SalesforceObjectIdentifier]
        attr_accessor :salesforce_identifier
      
        # Spanner data source object identifier.
        # Corresponds to the JSON property `spannerIdentifier`
        # @return [Google::Apis::DatastreamV1::SpannerObjectIdentifier]
        attr_accessor :spanner_identifier
      
        # SQLServer data source object identifier.
        # Corresponds to the JSON property `sqlServerIdentifier`
        # @return [Google::Apis::DatastreamV1::SqlServerObjectIdentifier]
        attr_accessor :sql_server_identifier
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mongodb_identifier = args[:mongodb_identifier] if args.key?(:mongodb_identifier)
          @mysql_identifier = args[:mysql_identifier] if args.key?(:mysql_identifier)
          @oracle_identifier = args[:oracle_identifier] if args.key?(:oracle_identifier)
          @postgresql_identifier = args[:postgresql_identifier] if args.key?(:postgresql_identifier)
          @salesforce_identifier = args[:salesforce_identifier] if args.key?(:salesforce_identifier)
          @spanner_identifier = args[:spanner_identifier] if args.key?(:spanner_identifier)
          @sql_server_identifier = args[:sql_server_identifier] if args.key?(:sql_server_identifier)
        end
      end
      
      # Spanner column.
      class SpannerColumn
        include Google::Apis::Core::Hashable
      
        # Required. The column name.
        # Corresponds to the JSON property `column`
        # @return [String]
        attr_accessor :column
      
        # Optional. Spanner data type.
        # Corresponds to the JSON property `dataType`
        # @return [String]
        attr_accessor :data_type
      
        # Optional. Whether or not the column is a primary key.
        # Corresponds to the JSON property `isPrimaryKey`
        # @return [Boolean]
        attr_accessor :is_primary_key
        alias_method :is_primary_key?, :is_primary_key
      
        # Optional. The ordinal position of the column in the table.
        # Corresponds to the JSON property `ordinalPosition`
        # @return [Fixnum]
        attr_accessor :ordinal_position
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column = args[:column] if args.key?(:column)
          @data_type = args[:data_type] if args.key?(:data_type)
          @is_primary_key = args[:is_primary_key] if args.key?(:is_primary_key)
          @ordinal_position = args[:ordinal_position] if args.key?(:ordinal_position)
        end
      end
      
      # Spanner database structure.
      class SpannerDatabase
        include Google::Apis::Core::Hashable
      
        # Optional. Spanner schemas in the database.
        # Corresponds to the JSON property `schemas`
        # @return [Array<Google::Apis::DatastreamV1::SpannerSchema>]
        attr_accessor :schemas
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @schemas = args[:schemas] if args.key?(:schemas)
        end
      end
      
      # Spanner data source object identifier.
      class SpannerObjectIdentifier
        include Google::Apis::Core::Hashable
      
        # Optional. The schema name.
        # Corresponds to the JSON property `schema`
        # @return [String]
        attr_accessor :schema
      
        # Required. The table name.
        # Corresponds to the JSON property `table`
        # @return [String]
        attr_accessor :table
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @schema = args[:schema] if args.key?(:schema)
          @table = args[:table] if args.key?(:table)
        end
      end
      
      # Profile for connecting to a Spanner source.
      class SpannerProfile
        include Google::Apis::Core::Hashable
      
        # Required. Immutable. Cloud Spanner database resource. This field is immutable.
        # Must be in the format: projects/`project`/instances/`instance`/databases/`
        # database_id`.
        # Corresponds to the JSON property `database`
        # @return [String]
        attr_accessor :database
      
        # Optional. The Spanner endpoint to connect to. Defaults to the global endpoint (
        # https://spanner.googleapis.com). Must be in the format: https://spanner.`
        # region`.rep.googleapis.com.
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @database = args[:database] if args.key?(:database)
          @host = args[:host] if args.key?(:host)
        end
      end
      
      # Spanner schema.
      class SpannerSchema
        include Google::Apis::Core::Hashable
      
        # Required. The schema name.
        # Corresponds to the JSON property `schema`
        # @return [String]
        attr_accessor :schema
      
        # Optional. Spanner tables in the schema.
        # Corresponds to the JSON property `tables`
        # @return [Array<Google::Apis::DatastreamV1::SpannerTable>]
        attr_accessor :tables
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @schema = args[:schema] if args.key?(:schema)
          @tables = args[:tables] if args.key?(:tables)
        end
      end
      
      # Configuration for syncing data from a Spanner source.
      class SpannerSourceConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Whether to use Data Boost for Spanner backfills. Defaults to false
        # if not set.
        # Corresponds to the JSON property `backfillDataBoostEnabled`
        # @return [Boolean]
        attr_accessor :backfill_data_boost_enabled
        alias_method :backfill_data_boost_enabled?, :backfill_data_boost_enabled
      
        # Required. Immutable. The change stream name to use for the stream.
        # Corresponds to the JSON property `changeStreamName`
        # @return [String]
        attr_accessor :change_stream_name
      
        # Spanner database structure.
        # Corresponds to the JSON property `excludeObjects`
        # @return [Google::Apis::DatastreamV1::SpannerDatabase]
        attr_accessor :exclude_objects
      
        # Optional. The FGAC role to use for the stream.
        # Corresponds to the JSON property `fgacRole`
        # @return [String]
        attr_accessor :fgac_role
      
        # Spanner database structure.
        # Corresponds to the JSON property `includeObjects`
        # @return [Google::Apis::DatastreamV1::SpannerDatabase]
        attr_accessor :include_objects
      
        # Optional. Maximum number of concurrent backfill tasks.
        # Corresponds to the JSON property `maxConcurrentBackfillTasks`
        # @return [Fixnum]
        attr_accessor :max_concurrent_backfill_tasks
      
        # Optional. Maximum number of concurrent CDC tasks.
        # Corresponds to the JSON property `maxConcurrentCdcTasks`
        # @return [Fixnum]
        attr_accessor :max_concurrent_cdc_tasks
      
        # Optional. The RPC priority to use for the stream.
        # Corresponds to the JSON property `spannerRpcPriority`
        # @return [String]
        attr_accessor :spanner_rpc_priority
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backfill_data_boost_enabled = args[:backfill_data_boost_enabled] if args.key?(:backfill_data_boost_enabled)
          @change_stream_name = args[:change_stream_name] if args.key?(:change_stream_name)
          @exclude_objects = args[:exclude_objects] if args.key?(:exclude_objects)
          @fgac_role = args[:fgac_role] if args.key?(:fgac_role)
          @include_objects = args[:include_objects] if args.key?(:include_objects)
          @max_concurrent_backfill_tasks = args[:max_concurrent_backfill_tasks] if args.key?(:max_concurrent_backfill_tasks)
          @max_concurrent_cdc_tasks = args[:max_concurrent_cdc_tasks] if args.key?(:max_concurrent_cdc_tasks)
          @spanner_rpc_priority = args[:spanner_rpc_priority] if args.key?(:spanner_rpc_priority)
        end
      end
      
      # Spanner table.
      class SpannerTable
        include Google::Apis::Core::Hashable
      
        # Optional. Spanner columns in the table.
        # Corresponds to the JSON property `columns`
        # @return [Array<Google::Apis::DatastreamV1::SpannerColumn>]
        attr_accessor :columns
      
        # Required. The table name.
        # Corresponds to the JSON property `table`
        # @return [String]
        attr_accessor :table
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @columns = args[:columns] if args.key?(:columns)
          @table = args[:table] if args.key?(:table)
        end
      end
      
      # CDC strategy to start replicating from a specific position in the source.
      class SpecificStartPosition
        include Google::Apis::Core::Hashable
      
        # MongoDB change stream position
        # Corresponds to the JSON property `mongodbChangeStreamPosition`
        # @return [Google::Apis::DatastreamV1::MongodbChangeStreamPosition]
        attr_accessor :mongodb_change_stream_position
      
        # MySQL GTID position
        # Corresponds to the JSON property `mysqlGtidPosition`
        # @return [Google::Apis::DatastreamV1::MysqlGtidPosition]
        attr_accessor :mysql_gtid_position
      
        # MySQL log position
        # Corresponds to the JSON property `mysqlLogPosition`
        # @return [Google::Apis::DatastreamV1::MysqlLogPosition]
        attr_accessor :mysql_log_position
      
        # Oracle SCN position
        # Corresponds to the JSON property `oracleScnPosition`
        # @return [Google::Apis::DatastreamV1::OracleScnPosition]
        attr_accessor :oracle_scn_position
      
        # SQL Server LSN position
        # Corresponds to the JSON property `sqlServerLsnPosition`
        # @return [Google::Apis::DatastreamV1::SqlServerLsnPosition]
        attr_accessor :sql_server_lsn_position
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mongodb_change_stream_position = args[:mongodb_change_stream_position] if args.key?(:mongodb_change_stream_position)
          @mysql_gtid_position = args[:mysql_gtid_position] if args.key?(:mysql_gtid_position)
          @mysql_log_position = args[:mysql_log_position] if args.key?(:mysql_log_position)
          @oracle_scn_position = args[:oracle_scn_position] if args.key?(:oracle_scn_position)
          @sql_server_lsn_position = args[:sql_server_lsn_position] if args.key?(:sql_server_lsn_position)
        end
      end
      
      # Configuration to use Change Tables CDC read method.
      class SqlServerChangeTables
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # SQLServer Column.
      class SqlServerColumn
        include Google::Apis::Core::Hashable
      
        # The column name.
        # Corresponds to the JSON property `column`
        # @return [String]
        attr_accessor :column
      
        # The SQLServer data type.
        # Corresponds to the JSON property `dataType`
        # @return [String]
        attr_accessor :data_type
      
        # Column length.
        # Corresponds to the JSON property `length`
        # @return [Fixnum]
        attr_accessor :length
      
        # Whether or not the column can accept a null value.
        # Corresponds to the JSON property `nullable`
        # @return [Boolean]
        attr_accessor :nullable
        alias_method :nullable?, :nullable
      
        # The ordinal position of the column in the table.
        # Corresponds to the JSON property `ordinalPosition`
        # @return [Fixnum]
        attr_accessor :ordinal_position
      
        # Column precision.
        # Corresponds to the JSON property `precision`
        # @return [Fixnum]
        attr_accessor :precision
      
        # Whether or not the column represents a primary key.
        # Corresponds to the JSON property `primaryKey`
        # @return [Boolean]
        attr_accessor :primary_key
        alias_method :primary_key?, :primary_key
      
        # Column scale.
        # Corresponds to the JSON property `scale`
        # @return [Fixnum]
        attr_accessor :scale
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column = args[:column] if args.key?(:column)
          @data_type = args[:data_type] if args.key?(:data_type)
          @length = args[:length] if args.key?(:length)
          @nullable = args[:nullable] if args.key?(:nullable)
          @ordinal_position = args[:ordinal_position] if args.key?(:ordinal_position)
          @precision = args[:precision] if args.key?(:precision)
          @primary_key = args[:primary_key] if args.key?(:primary_key)
          @scale = args[:scale] if args.key?(:scale)
        end
      end
      
      # SQL Server LSN position
      class SqlServerLsnPosition
        include Google::Apis::Core::Hashable
      
        # Required. Log sequence number (LSN) from where Logs will be read
        # Corresponds to the JSON property `lsn`
        # @return [String]
        attr_accessor :lsn
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @lsn = args[:lsn] if args.key?(:lsn)
        end
      end
      
      # SQLServer data source object identifier.
      class SqlServerObjectIdentifier
        include Google::Apis::Core::Hashable
      
        # Required. The schema name.
        # Corresponds to the JSON property `schema`
        # @return [String]
        attr_accessor :schema
      
        # Required. The table name.
        # Corresponds to the JSON property `table`
        # @return [String]
        attr_accessor :table
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @schema = args[:schema] if args.key?(:schema)
          @table = args[:table] if args.key?(:table)
        end
      end
      
      # Profile for connecting to a SQLServer source.
      class SqlServerProfile
        include Google::Apis::Core::Hashable
      
        # Required. Database for the SQLServer connection.
        # Corresponds to the JSON property `database`
        # @return [String]
        attr_accessor :database
      
        # Required. Hostname for the SQLServer connection.
        # Corresponds to the JSON property `hostname`
        # @return [String]
        attr_accessor :hostname
      
        # Optional. Password for the SQLServer connection. Mutually exclusive with the `
        # secret_manager_stored_password` field.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # Port for the SQLServer connection, default value is 1433.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        # Optional. A reference to a Secret Manager resource name storing the SQLServer
        # connection password. Mutually exclusive with the `password` field.
        # Corresponds to the JSON property `secretManagerStoredPassword`
        # @return [String]
        attr_accessor :secret_manager_stored_password
      
        # SQL Server SSL configuration information.
        # Corresponds to the JSON property `sslConfig`
        # @return [Google::Apis::DatastreamV1::SqlServerSslConfig]
        attr_accessor :ssl_config
      
        # Required. Username for the SQLServer connection.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @database = args[:database] if args.key?(:database)
          @hostname = args[:hostname] if args.key?(:hostname)
          @password = args[:password] if args.key?(:password)
          @port = args[:port] if args.key?(:port)
          @secret_manager_stored_password = args[:secret_manager_stored_password] if args.key?(:secret_manager_stored_password)
          @ssl_config = args[:ssl_config] if args.key?(:ssl_config)
          @username = args[:username] if args.key?(:username)
        end
      end
      
      # SQLServer database structure.
      class SqlServerRdbms
        include Google::Apis::Core::Hashable
      
        # SQLServer schemas in the database server.
        # Corresponds to the JSON property `schemas`
        # @return [Array<Google::Apis::DatastreamV1::SqlServerSchema>]
        attr_accessor :schemas
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @schemas = args[:schemas] if args.key?(:schemas)
        end
      end
      
      # SQLServer schema.
      class SqlServerSchema
        include Google::Apis::Core::Hashable
      
        # The schema name.
        # Corresponds to the JSON property `schema`
        # @return [String]
        attr_accessor :schema
      
        # Tables in the schema.
        # Corresponds to the JSON property `tables`
        # @return [Array<Google::Apis::DatastreamV1::SqlServerTable>]
        attr_accessor :tables
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @schema = args[:schema] if args.key?(:schema)
          @tables = args[:tables] if args.key?(:tables)
        end
      end
      
      # Configuration for syncing data from a SQLServer source.
      class SqlServerSourceConfig
        include Google::Apis::Core::Hashable
      
        # Configuration to use Change Tables CDC read method.
        # Corresponds to the JSON property `changeTables`
        # @return [Google::Apis::DatastreamV1::SqlServerChangeTables]
        attr_accessor :change_tables
      
        # SQLServer database structure.
        # Corresponds to the JSON property `excludeObjects`
        # @return [Google::Apis::DatastreamV1::SqlServerRdbms]
        attr_accessor :exclude_objects
      
        # SQLServer database structure.
        # Corresponds to the JSON property `includeObjects`
        # @return [Google::Apis::DatastreamV1::SqlServerRdbms]
        attr_accessor :include_objects
      
        # Max concurrent backfill tasks.
        # Corresponds to the JSON property `maxConcurrentBackfillTasks`
        # @return [Fixnum]
        attr_accessor :max_concurrent_backfill_tasks
      
        # Max concurrent CDC tasks.
        # Corresponds to the JSON property `maxConcurrentCdcTasks`
        # @return [Fixnum]
        attr_accessor :max_concurrent_cdc_tasks
      
        # Configuration to use Transaction Logs CDC read method.
        # Corresponds to the JSON property `transactionLogs`
        # @return [Google::Apis::DatastreamV1::SqlServerTransactionLogs]
        attr_accessor :transaction_logs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @change_tables = args[:change_tables] if args.key?(:change_tables)
          @exclude_objects = args[:exclude_objects] if args.key?(:exclude_objects)
          @include_objects = args[:include_objects] if args.key?(:include_objects)
          @max_concurrent_backfill_tasks = args[:max_concurrent_backfill_tasks] if args.key?(:max_concurrent_backfill_tasks)
          @max_concurrent_cdc_tasks = args[:max_concurrent_cdc_tasks] if args.key?(:max_concurrent_cdc_tasks)
          @transaction_logs = args[:transaction_logs] if args.key?(:transaction_logs)
        end
      end
      
      # SQL Server SSL configuration information.
      class SqlServerSslConfig
        include Google::Apis::Core::Hashable
      
        # Message to represent the option where Datastream will enforce encryption
        # without authenticating server identity. Server certificates will be trusted by
        # default.
        # Corresponds to the JSON property `basicEncryption`
        # @return [Google::Apis::DatastreamV1::BasicEncryption]
        attr_accessor :basic_encryption
      
        # Message to represent the option where Datastream will enforce encryption and
        # authenticate server identity. ca_certificate must be set if user selects this
        # option.
        # Corresponds to the JSON property `encryptionAndServerValidation`
        # @return [Google::Apis::DatastreamV1::EncryptionAndServerValidation]
        attr_accessor :encryption_and_server_validation
      
        # Message to represent the option where encryption is not enforced. An empty
        # message right now to allow future extensibility.
        # Corresponds to the JSON property `encryptionNotEnforced`
        # @return [Google::Apis::DatastreamV1::EncryptionNotEnforced]
        attr_accessor :encryption_not_enforced
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_encryption = args[:basic_encryption] if args.key?(:basic_encryption)
          @encryption_and_server_validation = args[:encryption_and_server_validation] if args.key?(:encryption_and_server_validation)
          @encryption_not_enforced = args[:encryption_not_enforced] if args.key?(:encryption_not_enforced)
        end
      end
      
      # SQLServer table.
      class SqlServerTable
        include Google::Apis::Core::Hashable
      
        # SQLServer columns in the schema. When unspecified as part of include/exclude
        # objects, includes/excludes everything.
        # Corresponds to the JSON property `columns`
        # @return [Array<Google::Apis::DatastreamV1::SqlServerColumn>]
        attr_accessor :columns
      
        # The table name.
        # Corresponds to the JSON property `table`
        # @return [String]
        attr_accessor :table
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @columns = args[:columns] if args.key?(:columns)
          @table = args[:table] if args.key?(:table)
        end
      end
      
      # Configuration to use Transaction Logs CDC read method.
      class SqlServerTransactionLogs
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Srv connection format.
      class SrvConnectionFormat
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Standard connection format.
      class StandardConnectionFormat
        include Google::Apis::Core::Hashable
      
        # Optional. Deprecated: Use the `additional_options` map to specify the `
        # directConnection` parameter instead. For example: `additional_options = `"
        # directConnection": "true"``. Specifies whether the client connects directly to
        # the host[:port] in the connection URI.
        # Corresponds to the JSON property `directConnection`
        # @return [Boolean]
        attr_accessor :direct_connection
        alias_method :direct_connection?, :direct_connection
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @direct_connection = args[:direct_connection] if args.key?(:direct_connection)
        end
      end
      
      # Request for manually initiating a backfill job for a specific stream object.
      class StartBackfillJobRequest
        include Google::Apis::Core::Hashable
      
        # Represents a filter for included data on a stream object.
        # Corresponds to the JSON property `eventFilter`
        # @return [Google::Apis::DatastreamV1::EventFilter]
        attr_accessor :event_filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event_filter = args[:event_filter] if args.key?(:event_filter)
        end
      end
      
      # Response for manually initiating a backfill job for a specific stream object.
      class StartBackfillJobResponse
        include Google::Apis::Core::Hashable
      
        # A specific stream object (e.g a specific DB table).
        # Corresponds to the JSON property `object`
        # @return [Google::Apis::DatastreamV1::StreamObject]
        attr_accessor :object
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object = args[:object] if args.key?(:object)
        end
      end
      
      # Static IP address connectivity. Used when the source database is configured to
      # allow incoming connections from the Datastream public IP addresses for the
      # region specified in the connection profile.
      class StaticServiceIpConnectivity
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
      
      # Request for manually stopping a running backfill job for a specific stream
      # object.
      class StopBackfillJobRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response for manually stop a backfill job for a specific stream object.
      class StopBackfillJobResponse
        include Google::Apis::Core::Hashable
      
        # A specific stream object (e.g a specific DB table).
        # Corresponds to the JSON property `object`
        # @return [Google::Apis::DatastreamV1::StreamObject]
        attr_accessor :object
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object = args[:object] if args.key?(:object)
        end
      end
      
      # A resource representing streaming data from a source to a destination.
      class Stream
        include Google::Apis::Core::Hashable
      
        # Backfill strategy to automatically backfill the Stream's objects. Specific
        # objects can be excluded.
        # Corresponds to the JSON property `backfillAll`
        # @return [Google::Apis::DatastreamV1::BackfillAllStrategy]
        attr_accessor :backfill_all
      
        # Backfill strategy to disable automatic backfill for the Stream's objects.
        # Corresponds to the JSON property `backfillNone`
        # @return [Google::Apis::DatastreamV1::BackfillNoneStrategy]
        attr_accessor :backfill_none
      
        # Output only. The creation time of the stream.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Immutable. A reference to a KMS encryption key. If provided, it will be used
        # to encrypt the data. If left blank, data will be encrypted using an internal
        # Stream-specific encryption key provisioned through KMS.
        # Corresponds to the JSON property `customerManagedEncryptionKey`
        # @return [String]
        attr_accessor :customer_managed_encryption_key
      
        # The configuration of the stream destination.
        # Corresponds to the JSON property `destinationConfig`
        # @return [Google::Apis::DatastreamV1::DestinationConfig]
        attr_accessor :destination_config
      
        # Required. Display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Errors on the Stream.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::DatastreamV1::Error>]
        attr_accessor :errors
      
        # Labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. If the stream was recovered, the time of the last recovery. Note:
        # This field is currently experimental.
        # Corresponds to the JSON property `lastRecoveryTime`
        # @return [String]
        attr_accessor :last_recovery_time
      
        # Output only. Identifier. The stream's name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Rule sets to apply to the stream.
        # Corresponds to the JSON property `ruleSets`
        # @return [Array<Google::Apis::DatastreamV1::RuleSet>]
        attr_accessor :rule_sets
      
        # Output only. Reserved for future use.
        # Corresponds to the JSON property `satisfiesPzi`
        # @return [Boolean]
        attr_accessor :satisfies_pzi
        alias_method :satisfies_pzi?, :satisfies_pzi
      
        # Output only. Reserved for future use.
        # Corresponds to the JSON property `satisfiesPzs`
        # @return [Boolean]
        attr_accessor :satisfies_pzs
        alias_method :satisfies_pzs?, :satisfies_pzs
      
        # The configuration of the stream source.
        # Corresponds to the JSON property `sourceConfig`
        # @return [Google::Apis::DatastreamV1::SourceConfig]
        attr_accessor :source_config
      
        # The state of the stream.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The last update time of the stream.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backfill_all = args[:backfill_all] if args.key?(:backfill_all)
          @backfill_none = args[:backfill_none] if args.key?(:backfill_none)
          @create_time = args[:create_time] if args.key?(:create_time)
          @customer_managed_encryption_key = args[:customer_managed_encryption_key] if args.key?(:customer_managed_encryption_key)
          @destination_config = args[:destination_config] if args.key?(:destination_config)
          @display_name = args[:display_name] if args.key?(:display_name)
          @errors = args[:errors] if args.key?(:errors)
          @labels = args[:labels] if args.key?(:labels)
          @last_recovery_time = args[:last_recovery_time] if args.key?(:last_recovery_time)
          @name = args[:name] if args.key?(:name)
          @rule_sets = args[:rule_sets] if args.key?(:rule_sets)
          @satisfies_pzi = args[:satisfies_pzi] if args.key?(:satisfies_pzi)
          @satisfies_pzs = args[:satisfies_pzs] if args.key?(:satisfies_pzs)
          @source_config = args[:source_config] if args.key?(:source_config)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Configuration to stream large object values.
      class StreamLargeObjects
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A specific stream object (e.g a specific DB table).
      class StreamObject
        include Google::Apis::Core::Hashable
      
        # Represents a backfill job on a specific stream object.
        # Corresponds to the JSON property `backfillJob`
        # @return [Google::Apis::DatastreamV1::BackfillJob]
        attr_accessor :backfill_job
      
        # Output only. The creation time of the object.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The customization rules for the object. These rules are derived
        # from the parent Stream's `rule_sets` and represent the intended configuration
        # for the object.
        # Corresponds to the JSON property `customizationRules`
        # @return [Array<Google::Apis::DatastreamV1::CustomizationRule>]
        attr_accessor :customization_rules
      
        # Required. Display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Active errors on the object.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::DatastreamV1::Error>]
        attr_accessor :errors
      
        # Output only. Identifier. The object resource's name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Represents an identifier of an object in the data source.
        # Corresponds to the JSON property `sourceObject`
        # @return [Google::Apis::DatastreamV1::SourceObjectIdentifier]
        attr_accessor :source_object
      
        # Output only. The last update time of the object.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backfill_job = args[:backfill_job] if args.key?(:backfill_job)
          @create_time = args[:create_time] if args.key?(:create_time)
          @customization_rules = args[:customization_rules] if args.key?(:customization_rules)
          @display_name = args[:display_name] if args.key?(:display_name)
          @errors = args[:errors] if args.key?(:errors)
          @name = args[:name] if args.key?(:name)
          @source_object = args[:source_object] if args.key?(:source_object)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Time unit column partitioning. see https://cloud.google.com/bigquery/docs/
      # partitioned-tables#date_timestamp_partitioned_tables
      class TimeUnitPartition
        include Google::Apis::Core::Hashable
      
        # Required. The partitioning column.
        # Corresponds to the JSON property `column`
        # @return [String]
        attr_accessor :column
      
        # Optional. Partition granularity.
        # Corresponds to the JSON property `partitioningTimeGranularity`
        # @return [String]
        attr_accessor :partitioning_time_granularity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column = args[:column] if args.key?(:column)
          @partitioning_time_granularity = args[:partitioning_time_granularity] if args.key?(:partitioning_time_granularity)
        end
      end
      
      # Username-password credentials.
      class UserCredentials
        include Google::Apis::Core::Hashable
      
        # Optional. Password for the Salesforce connection. Mutually exclusive with the `
        # secret_manager_stored_password` field.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # Optional. A reference to a Secret Manager resource name storing the Salesforce
        # connection's password. Mutually exclusive with the `password` field.
        # Corresponds to the JSON property `secretManagerStoredPassword`
        # @return [String]
        attr_accessor :secret_manager_stored_password
      
        # Optional. A reference to a Secret Manager resource name storing the Salesforce
        # connection's security token. Mutually exclusive with the `security_token`
        # field.
        # Corresponds to the JSON property `secretManagerStoredSecurityToken`
        # @return [String]
        attr_accessor :secret_manager_stored_security_token
      
        # Optional. Security token for the Salesforce connection. Mutually exclusive
        # with the `secret_manager_stored_security_token` field.
        # Corresponds to the JSON property `securityToken`
        # @return [String]
        attr_accessor :security_token
      
        # Required. Username for the Salesforce connection.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @password = args[:password] if args.key?(:password)
          @secret_manager_stored_password = args[:secret_manager_stored_password] if args.key?(:secret_manager_stored_password)
          @secret_manager_stored_security_token = args[:secret_manager_stored_security_token] if args.key?(:secret_manager_stored_security_token)
          @security_token = args[:security_token] if args.key?(:security_token)
          @username = args[:username] if args.key?(:username)
        end
      end
      
      # A validation to perform on a stream.
      class Validation
        include Google::Apis::Core::Hashable
      
        # A custom code identifying this validation.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # A short description of the validation.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Messages reflecting the validation results.
        # Corresponds to the JSON property `message`
        # @return [Array<Google::Apis::DatastreamV1::ValidationMessage>]
        attr_accessor :message
      
        # Output only. Validation execution status.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @description = args[:description] if args.key?(:description)
          @message = args[:message] if args.key?(:message)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Represent user-facing validation result message.
      class ValidationMessage
        include Google::Apis::Core::Hashable
      
        # A custom code identifying this specific message.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # Message severity level (warning or error).
        # Corresponds to the JSON property `level`
        # @return [String]
        attr_accessor :level
      
        # The result of the validation.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # Additional metadata related to the result.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,String>]
        attr_accessor :metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @level = args[:level] if args.key?(:level)
          @message = args[:message] if args.key?(:message)
          @metadata = args[:metadata] if args.key?(:metadata)
        end
      end
      
      # Contains the current validation results.
      class ValidationResult
        include Google::Apis::Core::Hashable
      
        # A list of validations (includes both executed as well as not executed
        # validations).
        # Corresponds to the JSON property `validations`
        # @return [Array<Google::Apis::DatastreamV1::Validation>]
        attr_accessor :validations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @validations = args[:validations] if args.key?(:validations)
        end
      end
      
      # The VPC Peering configuration is used to create VPC peering between Datastream
      # and the consumer's VPC.
      class VpcPeeringConfig
        include Google::Apis::Core::Hashable
      
        # Required. A free subnet for peering. (CIDR of /29)
        # Corresponds to the JSON property `subnet`
        # @return [String]
        attr_accessor :subnet
      
        # Required. Fully qualified name of the VPC that Datastream will peer to. Format:
        # `projects/`project`/global/`networks`/`name``
        # Corresponds to the JSON property `vpc`
        # @return [String]
        attr_accessor :vpc
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @subnet = args[:subnet] if args.key?(:subnet)
          @vpc = args[:vpc] if args.key?(:vpc)
        end
      end
    end
  end
end
