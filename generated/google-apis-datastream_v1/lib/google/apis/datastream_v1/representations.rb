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
      
      class AppendOnly
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AvroFileFormat
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackfillAllStrategy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackfillJob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackfillNoneStrategy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BasicEncryption
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BigQueryDestinationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BigQueryProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BinaryLogParser
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BinaryLogPosition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BlmtConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CdcStrategy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConnectionProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatasetTemplate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DestinationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiscoverConnectionProfileRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiscoverConnectionProfileResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DropLargeObjects
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EncryptionAndServerValidation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EncryptionNotEnforced
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Error
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EventFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchStaticIpsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ForwardSshTunnelConnectivity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GcsDestinationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GcsProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Gtid
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HostAddress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JsonFileFormat
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListConnectionProfilesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListPrivateConnectionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListRoutesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListStreamObjectsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListStreamsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogFileDirectories
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogMiner
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LookupStreamObjectRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Merge
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MongodbChangeStreamPosition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MongodbCluster
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MongodbCollection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MongodbDatabase
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MongodbField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MongodbObjectIdentifier
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MongodbProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MongodbSourceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MongodbSslConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MostRecentStartPosition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MysqlColumn
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MysqlDatabase
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MysqlGtidPosition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MysqlLogPosition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MysqlObjectIdentifier
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MysqlProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MysqlRdbms
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MysqlSourceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MysqlSslConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MysqlTable
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NextAvailableStartPosition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Oauth2ClientCredentials
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OracleAsmConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OracleAsmLogFileAccess
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OracleColumn
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OracleObjectIdentifier
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OracleProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OracleRdbms
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OracleSchema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OracleScnPosition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OracleSourceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OracleSslConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OracleTable
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PostgresqlColumn
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PostgresqlObjectIdentifier
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PostgresqlProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PostgresqlRdbms
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PostgresqlSchema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PostgresqlSourceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PostgresqlSslConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PostgresqlTable
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PrivateConnection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PrivateConnectivity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PscInterfaceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Route
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RunStreamRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SalesforceField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SalesforceObject
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SalesforceObjectIdentifier
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SalesforceOrg
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SalesforceProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SalesforceSourceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServerAndClientVerification
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServerVerification
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SingleTargetDataset
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceHierarchyDatasets
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceObjectIdentifier
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SpecificStartPosition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SqlServerChangeTables
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SqlServerColumn
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SqlServerLsnPosition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SqlServerObjectIdentifier
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SqlServerProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SqlServerRdbms
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SqlServerSchema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SqlServerSourceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SqlServerSslConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SqlServerTable
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SqlServerTransactionLogs
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SrvConnectionFormat
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StandardConnectionFormat
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StartBackfillJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StartBackfillJobResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StaticServiceIpConnectivity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StopBackfillJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StopBackfillJobResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Stream
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StreamLargeObjects
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StreamObject
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UserCredentials
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Validation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ValidationMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ValidationResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VpcPeeringConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AppendOnly
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class AvroFileFormat
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class BackfillAllStrategy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mongodb_excluded_objects, as: 'mongodbExcludedObjects', class: Google::Apis::DatastreamV1::MongodbCluster, decorator: Google::Apis::DatastreamV1::MongodbCluster::Representation
      
          property :mysql_excluded_objects, as: 'mysqlExcludedObjects', class: Google::Apis::DatastreamV1::MysqlRdbms, decorator: Google::Apis::DatastreamV1::MysqlRdbms::Representation
      
          property :oracle_excluded_objects, as: 'oracleExcludedObjects', class: Google::Apis::DatastreamV1::OracleRdbms, decorator: Google::Apis::DatastreamV1::OracleRdbms::Representation
      
          property :postgresql_excluded_objects, as: 'postgresqlExcludedObjects', class: Google::Apis::DatastreamV1::PostgresqlRdbms, decorator: Google::Apis::DatastreamV1::PostgresqlRdbms::Representation
      
          property :salesforce_excluded_objects, as: 'salesforceExcludedObjects', class: Google::Apis::DatastreamV1::SalesforceOrg, decorator: Google::Apis::DatastreamV1::SalesforceOrg::Representation
      
          property :sql_server_excluded_objects, as: 'sqlServerExcludedObjects', class: Google::Apis::DatastreamV1::SqlServerRdbms, decorator: Google::Apis::DatastreamV1::SqlServerRdbms::Representation
      
        end
      end
      
      class BackfillJob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :errors, as: 'errors', class: Google::Apis::DatastreamV1::Error, decorator: Google::Apis::DatastreamV1::Error::Representation
      
          property :last_end_time, as: 'lastEndTime'
          property :last_start_time, as: 'lastStartTime'
          property :state, as: 'state'
          property :trigger, as: 'trigger'
        end
      end
      
      class BackfillNoneStrategy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class BasicEncryption
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class BigQueryDestinationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :append_only, as: 'appendOnly', class: Google::Apis::DatastreamV1::AppendOnly, decorator: Google::Apis::DatastreamV1::AppendOnly::Representation
      
          property :blmt_config, as: 'blmtConfig', class: Google::Apis::DatastreamV1::BlmtConfig, decorator: Google::Apis::DatastreamV1::BlmtConfig::Representation
      
          property :data_freshness, as: 'dataFreshness'
          property :merge, as: 'merge', class: Google::Apis::DatastreamV1::Merge, decorator: Google::Apis::DatastreamV1::Merge::Representation
      
          property :single_target_dataset, as: 'singleTargetDataset', class: Google::Apis::DatastreamV1::SingleTargetDataset, decorator: Google::Apis::DatastreamV1::SingleTargetDataset::Representation
      
          property :source_hierarchy_datasets, as: 'sourceHierarchyDatasets', class: Google::Apis::DatastreamV1::SourceHierarchyDatasets, decorator: Google::Apis::DatastreamV1::SourceHierarchyDatasets::Representation
      
        end
      end
      
      class BigQueryProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class BinaryLogParser
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :log_file_directories, as: 'logFileDirectories', class: Google::Apis::DatastreamV1::LogFileDirectories, decorator: Google::Apis::DatastreamV1::LogFileDirectories::Representation
      
          property :oracle_asm_log_file_access, as: 'oracleAsmLogFileAccess', class: Google::Apis::DatastreamV1::OracleAsmLogFileAccess, decorator: Google::Apis::DatastreamV1::OracleAsmLogFileAccess::Representation
      
        end
      end
      
      class BinaryLogPosition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class BlmtConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket, as: 'bucket'
          property :connection_name, as: 'connectionName'
          property :file_format, as: 'fileFormat'
          property :root_path, as: 'rootPath'
          property :table_format, as: 'tableFormat'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CdcStrategy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :most_recent_start_position, as: 'mostRecentStartPosition', class: Google::Apis::DatastreamV1::MostRecentStartPosition, decorator: Google::Apis::DatastreamV1::MostRecentStartPosition::Representation
      
          property :next_available_start_position, as: 'nextAvailableStartPosition', class: Google::Apis::DatastreamV1::NextAvailableStartPosition, decorator: Google::Apis::DatastreamV1::NextAvailableStartPosition::Representation
      
          property :specific_start_position, as: 'specificStartPosition', class: Google::Apis::DatastreamV1::SpecificStartPosition, decorator: Google::Apis::DatastreamV1::SpecificStartPosition::Representation
      
        end
      end
      
      class ConnectionProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_profile, as: 'bigqueryProfile', class: Google::Apis::DatastreamV1::BigQueryProfile, decorator: Google::Apis::DatastreamV1::BigQueryProfile::Representation
      
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :forward_ssh_connectivity, as: 'forwardSshConnectivity', class: Google::Apis::DatastreamV1::ForwardSshTunnelConnectivity, decorator: Google::Apis::DatastreamV1::ForwardSshTunnelConnectivity::Representation
      
          property :gcs_profile, as: 'gcsProfile', class: Google::Apis::DatastreamV1::GcsProfile, decorator: Google::Apis::DatastreamV1::GcsProfile::Representation
      
          hash :labels, as: 'labels'
          property :mongodb_profile, as: 'mongodbProfile', class: Google::Apis::DatastreamV1::MongodbProfile, decorator: Google::Apis::DatastreamV1::MongodbProfile::Representation
      
          property :mysql_profile, as: 'mysqlProfile', class: Google::Apis::DatastreamV1::MysqlProfile, decorator: Google::Apis::DatastreamV1::MysqlProfile::Representation
      
          property :name, as: 'name'
          property :oracle_profile, as: 'oracleProfile', class: Google::Apis::DatastreamV1::OracleProfile, decorator: Google::Apis::DatastreamV1::OracleProfile::Representation
      
          property :postgresql_profile, as: 'postgresqlProfile', class: Google::Apis::DatastreamV1::PostgresqlProfile, decorator: Google::Apis::DatastreamV1::PostgresqlProfile::Representation
      
          property :private_connectivity, as: 'privateConnectivity', class: Google::Apis::DatastreamV1::PrivateConnectivity, decorator: Google::Apis::DatastreamV1::PrivateConnectivity::Representation
      
          property :salesforce_profile, as: 'salesforceProfile', class: Google::Apis::DatastreamV1::SalesforceProfile, decorator: Google::Apis::DatastreamV1::SalesforceProfile::Representation
      
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :sql_server_profile, as: 'sqlServerProfile', class: Google::Apis::DatastreamV1::SqlServerProfile, decorator: Google::Apis::DatastreamV1::SqlServerProfile::Representation
      
          property :static_service_ip_connectivity, as: 'staticServiceIpConnectivity', class: Google::Apis::DatastreamV1::StaticServiceIpConnectivity, decorator: Google::Apis::DatastreamV1::StaticServiceIpConnectivity::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class DatasetTemplate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset_id_prefix, as: 'datasetIdPrefix'
          property :kms_key_name, as: 'kmsKeyName'
          property :location, as: 'location'
        end
      end
      
      class DestinationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_destination_config, as: 'bigqueryDestinationConfig', class: Google::Apis::DatastreamV1::BigQueryDestinationConfig, decorator: Google::Apis::DatastreamV1::BigQueryDestinationConfig::Representation
      
          property :destination_connection_profile, as: 'destinationConnectionProfile'
          property :gcs_destination_config, as: 'gcsDestinationConfig', class: Google::Apis::DatastreamV1::GcsDestinationConfig, decorator: Google::Apis::DatastreamV1::GcsDestinationConfig::Representation
      
        end
      end
      
      class DiscoverConnectionProfileRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connection_profile, as: 'connectionProfile', class: Google::Apis::DatastreamV1::ConnectionProfile, decorator: Google::Apis::DatastreamV1::ConnectionProfile::Representation
      
          property :connection_profile_name, as: 'connectionProfileName'
          property :full_hierarchy, as: 'fullHierarchy'
          property :hierarchy_depth, as: 'hierarchyDepth'
          property :mongodb_cluster, as: 'mongodbCluster', class: Google::Apis::DatastreamV1::MongodbCluster, decorator: Google::Apis::DatastreamV1::MongodbCluster::Representation
      
          property :mysql_rdbms, as: 'mysqlRdbms', class: Google::Apis::DatastreamV1::MysqlRdbms, decorator: Google::Apis::DatastreamV1::MysqlRdbms::Representation
      
          property :oracle_rdbms, as: 'oracleRdbms', class: Google::Apis::DatastreamV1::OracleRdbms, decorator: Google::Apis::DatastreamV1::OracleRdbms::Representation
      
          property :postgresql_rdbms, as: 'postgresqlRdbms', class: Google::Apis::DatastreamV1::PostgresqlRdbms, decorator: Google::Apis::DatastreamV1::PostgresqlRdbms::Representation
      
          property :salesforce_org, as: 'salesforceOrg', class: Google::Apis::DatastreamV1::SalesforceOrg, decorator: Google::Apis::DatastreamV1::SalesforceOrg::Representation
      
          property :sql_server_rdbms, as: 'sqlServerRdbms', class: Google::Apis::DatastreamV1::SqlServerRdbms, decorator: Google::Apis::DatastreamV1::SqlServerRdbms::Representation
      
        end
      end
      
      class DiscoverConnectionProfileResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mongodb_cluster, as: 'mongodbCluster', class: Google::Apis::DatastreamV1::MongodbCluster, decorator: Google::Apis::DatastreamV1::MongodbCluster::Representation
      
          property :mysql_rdbms, as: 'mysqlRdbms', class: Google::Apis::DatastreamV1::MysqlRdbms, decorator: Google::Apis::DatastreamV1::MysqlRdbms::Representation
      
          property :oracle_rdbms, as: 'oracleRdbms', class: Google::Apis::DatastreamV1::OracleRdbms, decorator: Google::Apis::DatastreamV1::OracleRdbms::Representation
      
          property :postgresql_rdbms, as: 'postgresqlRdbms', class: Google::Apis::DatastreamV1::PostgresqlRdbms, decorator: Google::Apis::DatastreamV1::PostgresqlRdbms::Representation
      
          property :salesforce_org, as: 'salesforceOrg', class: Google::Apis::DatastreamV1::SalesforceOrg, decorator: Google::Apis::DatastreamV1::SalesforceOrg::Representation
      
          property :sql_server_rdbms, as: 'sqlServerRdbms', class: Google::Apis::DatastreamV1::SqlServerRdbms, decorator: Google::Apis::DatastreamV1::SqlServerRdbms::Representation
      
        end
      end
      
      class DropLargeObjects
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class EncryptionAndServerValidation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ca_certificate, as: 'caCertificate'
          property :server_certificate_hostname, as: 'serverCertificateHostname'
        end
      end
      
      class EncryptionNotEnforced
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Error
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :details, as: 'details'
          property :error_time, as: 'errorTime'
          property :error_uuid, as: 'errorUuid'
          property :message, as: 'message'
          property :reason, as: 'reason'
        end
      end
      
      class EventFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sql_where_clause, as: 'sqlWhereClause'
        end
      end
      
      class FetchStaticIpsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :static_ips, as: 'staticIps'
        end
      end
      
      class ForwardSshTunnelConnectivity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hostname, as: 'hostname'
          property :password, as: 'password'
          property :port, as: 'port'
          property :private_key, as: 'privateKey'
          property :username, as: 'username'
        end
      end
      
      class GcsDestinationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :avro_file_format, as: 'avroFileFormat', class: Google::Apis::DatastreamV1::AvroFileFormat, decorator: Google::Apis::DatastreamV1::AvroFileFormat::Representation
      
          property :file_rotation_interval, as: 'fileRotationInterval'
          property :file_rotation_mb, as: 'fileRotationMb'
          property :json_file_format, as: 'jsonFileFormat', class: Google::Apis::DatastreamV1::JsonFileFormat, decorator: Google::Apis::DatastreamV1::JsonFileFormat::Representation
      
          property :path, as: 'path'
        end
      end
      
      class GcsProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket, as: 'bucket'
          property :root_path, as: 'rootPath'
        end
      end
      
      class Gtid
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class HostAddress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hostname, as: 'hostname'
          property :port, as: 'port'
        end
      end
      
      class JsonFileFormat
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compression, as: 'compression'
          property :schema_file_format, as: 'schemaFileFormat'
        end
      end
      
      class ListConnectionProfilesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :connection_profiles, as: 'connectionProfiles', class: Google::Apis::DatastreamV1::ConnectionProfile, decorator: Google::Apis::DatastreamV1::ConnectionProfile::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::DatastreamV1::Location, decorator: Google::Apis::DatastreamV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::DatastreamV1::Operation, decorator: Google::Apis::DatastreamV1::Operation::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListPrivateConnectionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :private_connections, as: 'privateConnections', class: Google::Apis::DatastreamV1::PrivateConnection, decorator: Google::Apis::DatastreamV1::PrivateConnection::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListRoutesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :routes, as: 'routes', class: Google::Apis::DatastreamV1::Route, decorator: Google::Apis::DatastreamV1::Route::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListStreamObjectsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :stream_objects, as: 'streamObjects', class: Google::Apis::DatastreamV1::StreamObject, decorator: Google::Apis::DatastreamV1::StreamObject::Representation
      
        end
      end
      
      class ListStreamsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :streams, as: 'streams', class: Google::Apis::DatastreamV1::Stream, decorator: Google::Apis::DatastreamV1::Stream::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :location_id, as: 'locationId'
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
        end
      end
      
      class LogFileDirectories
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :archived_log_directory, as: 'archivedLogDirectory'
          property :online_log_directory, as: 'onlineLogDirectory'
        end
      end
      
      class LogMiner
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class LookupStreamObjectRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :source_object_identifier, as: 'sourceObjectIdentifier', class: Google::Apis::DatastreamV1::SourceObjectIdentifier, decorator: Google::Apis::DatastreamV1::SourceObjectIdentifier::Representation
      
        end
      end
      
      class Merge
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class MongodbChangeStreamPosition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :start_time, as: 'startTime'
        end
      end
      
      class MongodbCluster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :databases, as: 'databases', class: Google::Apis::DatastreamV1::MongodbDatabase, decorator: Google::Apis::DatastreamV1::MongodbDatabase::Representation
      
        end
      end
      
      class MongodbCollection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :collection, as: 'collection'
          collection :fields, as: 'fields', class: Google::Apis::DatastreamV1::MongodbField, decorator: Google::Apis::DatastreamV1::MongodbField::Representation
      
        end
      end
      
      class MongodbDatabase
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :collections, as: 'collections', class: Google::Apis::DatastreamV1::MongodbCollection, decorator: Google::Apis::DatastreamV1::MongodbCollection::Representation
      
          property :database, as: 'database'
        end
      end
      
      class MongodbField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field, as: 'field'
        end
      end
      
      class MongodbObjectIdentifier
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :collection, as: 'collection'
          property :database, as: 'database'
        end
      end
      
      class MongodbProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :host_addresses, as: 'hostAddresses', class: Google::Apis::DatastreamV1::HostAddress, decorator: Google::Apis::DatastreamV1::HostAddress::Representation
      
          property :password, as: 'password'
          property :replica_set, as: 'replicaSet'
          property :secret_manager_stored_password, as: 'secretManagerStoredPassword'
          property :srv_connection_format, as: 'srvConnectionFormat', class: Google::Apis::DatastreamV1::SrvConnectionFormat, decorator: Google::Apis::DatastreamV1::SrvConnectionFormat::Representation
      
          property :ssl_config, as: 'sslConfig', class: Google::Apis::DatastreamV1::MongodbSslConfig, decorator: Google::Apis::DatastreamV1::MongodbSslConfig::Representation
      
          property :standard_connection_format, as: 'standardConnectionFormat', class: Google::Apis::DatastreamV1::StandardConnectionFormat, decorator: Google::Apis::DatastreamV1::StandardConnectionFormat::Representation
      
          property :username, as: 'username'
        end
      end
      
      class MongodbSourceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exclude_objects, as: 'excludeObjects', class: Google::Apis::DatastreamV1::MongodbCluster, decorator: Google::Apis::DatastreamV1::MongodbCluster::Representation
      
          property :include_objects, as: 'includeObjects', class: Google::Apis::DatastreamV1::MongodbCluster, decorator: Google::Apis::DatastreamV1::MongodbCluster::Representation
      
          property :max_concurrent_backfill_tasks, as: 'maxConcurrentBackfillTasks'
        end
      end
      
      class MongodbSslConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ca_certificate, as: 'caCertificate'
          property :ca_certificate_set, as: 'caCertificateSet'
          property :client_certificate, as: 'clientCertificate'
          property :client_certificate_set, as: 'clientCertificateSet'
          property :client_key, as: 'clientKey'
          property :client_key_set, as: 'clientKeySet'
          property :secret_manager_stored_client_key, as: 'secretManagerStoredClientKey'
        end
      end
      
      class MostRecentStartPosition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class MysqlColumn
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :collation, as: 'collation'
          property :column, as: 'column'
          property :data_type, as: 'dataType'
          property :length, as: 'length'
          property :nullable, as: 'nullable'
          property :ordinal_position, as: 'ordinalPosition'
          property :precision, as: 'precision'
          property :primary_key, as: 'primaryKey'
          property :scale, as: 'scale'
        end
      end
      
      class MysqlDatabase
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :database, as: 'database'
          collection :mysql_tables, as: 'mysqlTables', class: Google::Apis::DatastreamV1::MysqlTable, decorator: Google::Apis::DatastreamV1::MysqlTable::Representation
      
        end
      end
      
      class MysqlGtidPosition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gtid_set, as: 'gtidSet'
        end
      end
      
      class MysqlLogPosition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :log_file, as: 'logFile'
          property :log_position, as: 'logPosition'
        end
      end
      
      class MysqlObjectIdentifier
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :database, as: 'database'
          property :table, as: 'table'
        end
      end
      
      class MysqlProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hostname, as: 'hostname'
          property :password, as: 'password'
          property :port, as: 'port'
          property :secret_manager_stored_password, as: 'secretManagerStoredPassword'
          property :ssl_config, as: 'sslConfig', class: Google::Apis::DatastreamV1::MysqlSslConfig, decorator: Google::Apis::DatastreamV1::MysqlSslConfig::Representation
      
          property :username, as: 'username'
        end
      end
      
      class MysqlRdbms
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :mysql_databases, as: 'mysqlDatabases', class: Google::Apis::DatastreamV1::MysqlDatabase, decorator: Google::Apis::DatastreamV1::MysqlDatabase::Representation
      
        end
      end
      
      class MysqlSourceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :binary_log_position, as: 'binaryLogPosition', class: Google::Apis::DatastreamV1::BinaryLogPosition, decorator: Google::Apis::DatastreamV1::BinaryLogPosition::Representation
      
          property :exclude_objects, as: 'excludeObjects', class: Google::Apis::DatastreamV1::MysqlRdbms, decorator: Google::Apis::DatastreamV1::MysqlRdbms::Representation
      
          property :gtid, as: 'gtid', class: Google::Apis::DatastreamV1::Gtid, decorator: Google::Apis::DatastreamV1::Gtid::Representation
      
          property :include_objects, as: 'includeObjects', class: Google::Apis::DatastreamV1::MysqlRdbms, decorator: Google::Apis::DatastreamV1::MysqlRdbms::Representation
      
          property :max_concurrent_backfill_tasks, as: 'maxConcurrentBackfillTasks'
          property :max_concurrent_cdc_tasks, as: 'maxConcurrentCdcTasks'
        end
      end
      
      class MysqlSslConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ca_certificate, as: 'caCertificate'
          property :ca_certificate_set, as: 'caCertificateSet'
          property :client_certificate, as: 'clientCertificate'
          property :client_certificate_set, as: 'clientCertificateSet'
          property :client_key, as: 'clientKey'
          property :client_key_set, as: 'clientKeySet'
        end
      end
      
      class MysqlTable
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :mysql_columns, as: 'mysqlColumns', class: Google::Apis::DatastreamV1::MysqlColumn, decorator: Google::Apis::DatastreamV1::MysqlColumn::Representation
      
          property :table, as: 'table'
        end
      end
      
      class NextAvailableStartPosition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Oauth2ClientCredentials
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_id, as: 'clientId'
          property :client_secret, as: 'clientSecret'
          property :secret_manager_stored_client_secret, as: 'secretManagerStoredClientSecret'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::DatastreamV1::Status, decorator: Google::Apis::DatastreamV1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :requested_cancellation, as: 'requestedCancellation'
          property :status_message, as: 'statusMessage'
          property :target, as: 'target'
          property :validation_result, as: 'validationResult', class: Google::Apis::DatastreamV1::ValidationResult, decorator: Google::Apis::DatastreamV1::ValidationResult::Representation
      
          property :verb, as: 'verb'
        end
      end
      
      class OracleAsmConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :asm_service, as: 'asmService'
          hash :connection_attributes, as: 'connectionAttributes'
          property :hostname, as: 'hostname'
          property :oracle_ssl_config, as: 'oracleSslConfig', class: Google::Apis::DatastreamV1::OracleSslConfig, decorator: Google::Apis::DatastreamV1::OracleSslConfig::Representation
      
          property :password, as: 'password'
          property :port, as: 'port'
          property :secret_manager_stored_password, as: 'secretManagerStoredPassword'
          property :username, as: 'username'
        end
      end
      
      class OracleAsmLogFileAccess
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class OracleColumn
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column, as: 'column'
          property :data_type, as: 'dataType'
          property :encoding, as: 'encoding'
          property :length, as: 'length'
          property :nullable, as: 'nullable'
          property :ordinal_position, as: 'ordinalPosition'
          property :precision, as: 'precision'
          property :primary_key, as: 'primaryKey'
          property :scale, as: 'scale'
        end
      end
      
      class OracleObjectIdentifier
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :schema, as: 'schema'
          property :table, as: 'table'
        end
      end
      
      class OracleProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :connection_attributes, as: 'connectionAttributes'
          property :database_service, as: 'databaseService'
          property :hostname, as: 'hostname'
          property :oracle_asm_config, as: 'oracleAsmConfig', class: Google::Apis::DatastreamV1::OracleAsmConfig, decorator: Google::Apis::DatastreamV1::OracleAsmConfig::Representation
      
          property :oracle_ssl_config, as: 'oracleSslConfig', class: Google::Apis::DatastreamV1::OracleSslConfig, decorator: Google::Apis::DatastreamV1::OracleSslConfig::Representation
      
          property :password, as: 'password'
          property :port, as: 'port'
          property :secret_manager_stored_password, as: 'secretManagerStoredPassword'
          property :username, as: 'username'
        end
      end
      
      class OracleRdbms
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :oracle_schemas, as: 'oracleSchemas', class: Google::Apis::DatastreamV1::OracleSchema, decorator: Google::Apis::DatastreamV1::OracleSchema::Representation
      
        end
      end
      
      class OracleSchema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :oracle_tables, as: 'oracleTables', class: Google::Apis::DatastreamV1::OracleTable, decorator: Google::Apis::DatastreamV1::OracleTable::Representation
      
          property :schema, as: 'schema'
        end
      end
      
      class OracleScnPosition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :scn, :numeric_string => true, as: 'scn'
        end
      end
      
      class OracleSourceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :binary_log_parser, as: 'binaryLogParser', class: Google::Apis::DatastreamV1::BinaryLogParser, decorator: Google::Apis::DatastreamV1::BinaryLogParser::Representation
      
          property :drop_large_objects, as: 'dropLargeObjects', class: Google::Apis::DatastreamV1::DropLargeObjects, decorator: Google::Apis::DatastreamV1::DropLargeObjects::Representation
      
          property :exclude_objects, as: 'excludeObjects', class: Google::Apis::DatastreamV1::OracleRdbms, decorator: Google::Apis::DatastreamV1::OracleRdbms::Representation
      
          property :include_objects, as: 'includeObjects', class: Google::Apis::DatastreamV1::OracleRdbms, decorator: Google::Apis::DatastreamV1::OracleRdbms::Representation
      
          property :log_miner, as: 'logMiner', class: Google::Apis::DatastreamV1::LogMiner, decorator: Google::Apis::DatastreamV1::LogMiner::Representation
      
          property :max_concurrent_backfill_tasks, as: 'maxConcurrentBackfillTasks'
          property :max_concurrent_cdc_tasks, as: 'maxConcurrentCdcTasks'
          property :stream_large_objects, as: 'streamLargeObjects', class: Google::Apis::DatastreamV1::StreamLargeObjects, decorator: Google::Apis::DatastreamV1::StreamLargeObjects::Representation
      
        end
      end
      
      class OracleSslConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ca_certificate, as: 'caCertificate'
          property :ca_certificate_set, as: 'caCertificateSet'
          property :server_certificate_distinguished_name, as: 'serverCertificateDistinguishedName'
        end
      end
      
      class OracleTable
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :oracle_columns, as: 'oracleColumns', class: Google::Apis::DatastreamV1::OracleColumn, decorator: Google::Apis::DatastreamV1::OracleColumn::Representation
      
          property :table, as: 'table'
        end
      end
      
      class PostgresqlColumn
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column, as: 'column'
          property :data_type, as: 'dataType'
          property :length, as: 'length'
          property :nullable, as: 'nullable'
          property :ordinal_position, as: 'ordinalPosition'
          property :precision, as: 'precision'
          property :primary_key, as: 'primaryKey'
          property :scale, as: 'scale'
        end
      end
      
      class PostgresqlObjectIdentifier
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :schema, as: 'schema'
          property :table, as: 'table'
        end
      end
      
      class PostgresqlProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :database, as: 'database'
          property :hostname, as: 'hostname'
          property :password, as: 'password'
          property :port, as: 'port'
          property :secret_manager_stored_password, as: 'secretManagerStoredPassword'
          property :ssl_config, as: 'sslConfig', class: Google::Apis::DatastreamV1::PostgresqlSslConfig, decorator: Google::Apis::DatastreamV1::PostgresqlSslConfig::Representation
      
          property :username, as: 'username'
        end
      end
      
      class PostgresqlRdbms
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :postgresql_schemas, as: 'postgresqlSchemas', class: Google::Apis::DatastreamV1::PostgresqlSchema, decorator: Google::Apis::DatastreamV1::PostgresqlSchema::Representation
      
        end
      end
      
      class PostgresqlSchema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :postgresql_tables, as: 'postgresqlTables', class: Google::Apis::DatastreamV1::PostgresqlTable, decorator: Google::Apis::DatastreamV1::PostgresqlTable::Representation
      
          property :schema, as: 'schema'
        end
      end
      
      class PostgresqlSourceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exclude_objects, as: 'excludeObjects', class: Google::Apis::DatastreamV1::PostgresqlRdbms, decorator: Google::Apis::DatastreamV1::PostgresqlRdbms::Representation
      
          property :include_objects, as: 'includeObjects', class: Google::Apis::DatastreamV1::PostgresqlRdbms, decorator: Google::Apis::DatastreamV1::PostgresqlRdbms::Representation
      
          property :max_concurrent_backfill_tasks, as: 'maxConcurrentBackfillTasks'
          property :publication, as: 'publication'
          property :replication_slot, as: 'replicationSlot'
        end
      end
      
      class PostgresqlSslConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :server_and_client_verification, as: 'serverAndClientVerification', class: Google::Apis::DatastreamV1::ServerAndClientVerification, decorator: Google::Apis::DatastreamV1::ServerAndClientVerification::Representation
      
          property :server_verification, as: 'serverVerification', class: Google::Apis::DatastreamV1::ServerVerification, decorator: Google::Apis::DatastreamV1::ServerVerification::Representation
      
        end
      end
      
      class PostgresqlTable
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :postgresql_columns, as: 'postgresqlColumns', class: Google::Apis::DatastreamV1::PostgresqlColumn, decorator: Google::Apis::DatastreamV1::PostgresqlColumn::Representation
      
          property :table, as: 'table'
        end
      end
      
      class PrivateConnection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :error, as: 'error', class: Google::Apis::DatastreamV1::Error, decorator: Google::Apis::DatastreamV1::Error::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :psc_interface_config, as: 'pscInterfaceConfig', class: Google::Apis::DatastreamV1::PscInterfaceConfig, decorator: Google::Apis::DatastreamV1::PscInterfaceConfig::Representation
      
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
          property :vpc_peering_config, as: 'vpcPeeringConfig', class: Google::Apis::DatastreamV1::VpcPeeringConfig, decorator: Google::Apis::DatastreamV1::VpcPeeringConfig::Representation
      
        end
      end
      
      class PrivateConnectivity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :private_connection, as: 'privateConnection'
        end
      end
      
      class PscInterfaceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :network_attachment, as: 'networkAttachment'
        end
      end
      
      class Route
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :destination_address, as: 'destinationAddress'
          property :destination_port, as: 'destinationPort'
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
        end
      end
      
      class RunStreamRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cdc_strategy, as: 'cdcStrategy', class: Google::Apis::DatastreamV1::CdcStrategy, decorator: Google::Apis::DatastreamV1::CdcStrategy::Representation
      
          property :force, as: 'force'
        end
      end
      
      class SalesforceField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_type, as: 'dataType'
          property :name, as: 'name'
          property :nillable, as: 'nillable'
        end
      end
      
      class SalesforceObject
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :fields, as: 'fields', class: Google::Apis::DatastreamV1::SalesforceField, decorator: Google::Apis::DatastreamV1::SalesforceField::Representation
      
          property :object_name, as: 'objectName'
        end
      end
      
      class SalesforceObjectIdentifier
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :object_name, as: 'objectName'
        end
      end
      
      class SalesforceOrg
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :objects, as: 'objects', class: Google::Apis::DatastreamV1::SalesforceObject, decorator: Google::Apis::DatastreamV1::SalesforceObject::Representation
      
        end
      end
      
      class SalesforceProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :domain, as: 'domain'
          property :oauth2_client_credentials, as: 'oauth2ClientCredentials', class: Google::Apis::DatastreamV1::Oauth2ClientCredentials, decorator: Google::Apis::DatastreamV1::Oauth2ClientCredentials::Representation
      
          property :user_credentials, as: 'userCredentials', class: Google::Apis::DatastreamV1::UserCredentials, decorator: Google::Apis::DatastreamV1::UserCredentials::Representation
      
        end
      end
      
      class SalesforceSourceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exclude_objects, as: 'excludeObjects', class: Google::Apis::DatastreamV1::SalesforceOrg, decorator: Google::Apis::DatastreamV1::SalesforceOrg::Representation
      
          property :include_objects, as: 'includeObjects', class: Google::Apis::DatastreamV1::SalesforceOrg, decorator: Google::Apis::DatastreamV1::SalesforceOrg::Representation
      
          property :polling_interval, as: 'pollingInterval'
        end
      end
      
      class ServerAndClientVerification
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ca_certificate, as: 'caCertificate'
          property :client_certificate, as: 'clientCertificate'
          property :client_key, as: 'clientKey'
          property :server_certificate_hostname, as: 'serverCertificateHostname'
        end
      end
      
      class ServerVerification
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ca_certificate, as: 'caCertificate'
          property :server_certificate_hostname, as: 'serverCertificateHostname'
        end
      end
      
      class SingleTargetDataset
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset_id, as: 'datasetId'
        end
      end
      
      class SourceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mongodb_source_config, as: 'mongodbSourceConfig', class: Google::Apis::DatastreamV1::MongodbSourceConfig, decorator: Google::Apis::DatastreamV1::MongodbSourceConfig::Representation
      
          property :mysql_source_config, as: 'mysqlSourceConfig', class: Google::Apis::DatastreamV1::MysqlSourceConfig, decorator: Google::Apis::DatastreamV1::MysqlSourceConfig::Representation
      
          property :oracle_source_config, as: 'oracleSourceConfig', class: Google::Apis::DatastreamV1::OracleSourceConfig, decorator: Google::Apis::DatastreamV1::OracleSourceConfig::Representation
      
          property :postgresql_source_config, as: 'postgresqlSourceConfig', class: Google::Apis::DatastreamV1::PostgresqlSourceConfig, decorator: Google::Apis::DatastreamV1::PostgresqlSourceConfig::Representation
      
          property :salesforce_source_config, as: 'salesforceSourceConfig', class: Google::Apis::DatastreamV1::SalesforceSourceConfig, decorator: Google::Apis::DatastreamV1::SalesforceSourceConfig::Representation
      
          property :source_connection_profile, as: 'sourceConnectionProfile'
          property :sql_server_source_config, as: 'sqlServerSourceConfig', class: Google::Apis::DatastreamV1::SqlServerSourceConfig, decorator: Google::Apis::DatastreamV1::SqlServerSourceConfig::Representation
      
        end
      end
      
      class SourceHierarchyDatasets
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset_template, as: 'datasetTemplate', class: Google::Apis::DatastreamV1::DatasetTemplate, decorator: Google::Apis::DatastreamV1::DatasetTemplate::Representation
      
          property :project_id, as: 'projectId'
        end
      end
      
      class SourceObjectIdentifier
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mongodb_identifier, as: 'mongodbIdentifier', class: Google::Apis::DatastreamV1::MongodbObjectIdentifier, decorator: Google::Apis::DatastreamV1::MongodbObjectIdentifier::Representation
      
          property :mysql_identifier, as: 'mysqlIdentifier', class: Google::Apis::DatastreamV1::MysqlObjectIdentifier, decorator: Google::Apis::DatastreamV1::MysqlObjectIdentifier::Representation
      
          property :oracle_identifier, as: 'oracleIdentifier', class: Google::Apis::DatastreamV1::OracleObjectIdentifier, decorator: Google::Apis::DatastreamV1::OracleObjectIdentifier::Representation
      
          property :postgresql_identifier, as: 'postgresqlIdentifier', class: Google::Apis::DatastreamV1::PostgresqlObjectIdentifier, decorator: Google::Apis::DatastreamV1::PostgresqlObjectIdentifier::Representation
      
          property :salesforce_identifier, as: 'salesforceIdentifier', class: Google::Apis::DatastreamV1::SalesforceObjectIdentifier, decorator: Google::Apis::DatastreamV1::SalesforceObjectIdentifier::Representation
      
          property :sql_server_identifier, as: 'sqlServerIdentifier', class: Google::Apis::DatastreamV1::SqlServerObjectIdentifier, decorator: Google::Apis::DatastreamV1::SqlServerObjectIdentifier::Representation
      
        end
      end
      
      class SpecificStartPosition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mongodb_change_stream_position, as: 'mongodbChangeStreamPosition', class: Google::Apis::DatastreamV1::MongodbChangeStreamPosition, decorator: Google::Apis::DatastreamV1::MongodbChangeStreamPosition::Representation
      
          property :mysql_gtid_position, as: 'mysqlGtidPosition', class: Google::Apis::DatastreamV1::MysqlGtidPosition, decorator: Google::Apis::DatastreamV1::MysqlGtidPosition::Representation
      
          property :mysql_log_position, as: 'mysqlLogPosition', class: Google::Apis::DatastreamV1::MysqlLogPosition, decorator: Google::Apis::DatastreamV1::MysqlLogPosition::Representation
      
          property :oracle_scn_position, as: 'oracleScnPosition', class: Google::Apis::DatastreamV1::OracleScnPosition, decorator: Google::Apis::DatastreamV1::OracleScnPosition::Representation
      
          property :sql_server_lsn_position, as: 'sqlServerLsnPosition', class: Google::Apis::DatastreamV1::SqlServerLsnPosition, decorator: Google::Apis::DatastreamV1::SqlServerLsnPosition::Representation
      
        end
      end
      
      class SqlServerChangeTables
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class SqlServerColumn
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column, as: 'column'
          property :data_type, as: 'dataType'
          property :length, as: 'length'
          property :nullable, as: 'nullable'
          property :ordinal_position, as: 'ordinalPosition'
          property :precision, as: 'precision'
          property :primary_key, as: 'primaryKey'
          property :scale, as: 'scale'
        end
      end
      
      class SqlServerLsnPosition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :lsn, as: 'lsn'
        end
      end
      
      class SqlServerObjectIdentifier
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :schema, as: 'schema'
          property :table, as: 'table'
        end
      end
      
      class SqlServerProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :database, as: 'database'
          property :hostname, as: 'hostname'
          property :password, as: 'password'
          property :port, as: 'port'
          property :secret_manager_stored_password, as: 'secretManagerStoredPassword'
          property :ssl_config, as: 'sslConfig', class: Google::Apis::DatastreamV1::SqlServerSslConfig, decorator: Google::Apis::DatastreamV1::SqlServerSslConfig::Representation
      
          property :username, as: 'username'
        end
      end
      
      class SqlServerRdbms
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :schemas, as: 'schemas', class: Google::Apis::DatastreamV1::SqlServerSchema, decorator: Google::Apis::DatastreamV1::SqlServerSchema::Representation
      
        end
      end
      
      class SqlServerSchema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :schema, as: 'schema'
          collection :tables, as: 'tables', class: Google::Apis::DatastreamV1::SqlServerTable, decorator: Google::Apis::DatastreamV1::SqlServerTable::Representation
      
        end
      end
      
      class SqlServerSourceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :change_tables, as: 'changeTables', class: Google::Apis::DatastreamV1::SqlServerChangeTables, decorator: Google::Apis::DatastreamV1::SqlServerChangeTables::Representation
      
          property :exclude_objects, as: 'excludeObjects', class: Google::Apis::DatastreamV1::SqlServerRdbms, decorator: Google::Apis::DatastreamV1::SqlServerRdbms::Representation
      
          property :include_objects, as: 'includeObjects', class: Google::Apis::DatastreamV1::SqlServerRdbms, decorator: Google::Apis::DatastreamV1::SqlServerRdbms::Representation
      
          property :max_concurrent_backfill_tasks, as: 'maxConcurrentBackfillTasks'
          property :max_concurrent_cdc_tasks, as: 'maxConcurrentCdcTasks'
          property :transaction_logs, as: 'transactionLogs', class: Google::Apis::DatastreamV1::SqlServerTransactionLogs, decorator: Google::Apis::DatastreamV1::SqlServerTransactionLogs::Representation
      
        end
      end
      
      class SqlServerSslConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_encryption, as: 'basicEncryption', class: Google::Apis::DatastreamV1::BasicEncryption, decorator: Google::Apis::DatastreamV1::BasicEncryption::Representation
      
          property :encryption_and_server_validation, as: 'encryptionAndServerValidation', class: Google::Apis::DatastreamV1::EncryptionAndServerValidation, decorator: Google::Apis::DatastreamV1::EncryptionAndServerValidation::Representation
      
          property :encryption_not_enforced, as: 'encryptionNotEnforced', class: Google::Apis::DatastreamV1::EncryptionNotEnforced, decorator: Google::Apis::DatastreamV1::EncryptionNotEnforced::Representation
      
        end
      end
      
      class SqlServerTable
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :columns, as: 'columns', class: Google::Apis::DatastreamV1::SqlServerColumn, decorator: Google::Apis::DatastreamV1::SqlServerColumn::Representation
      
          property :table, as: 'table'
        end
      end
      
      class SqlServerTransactionLogs
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class SrvConnectionFormat
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class StandardConnectionFormat
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :direct_connection, as: 'directConnection'
        end
      end
      
      class StartBackfillJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :event_filter, as: 'eventFilter', class: Google::Apis::DatastreamV1::EventFilter, decorator: Google::Apis::DatastreamV1::EventFilter::Representation
      
        end
      end
      
      class StartBackfillJobResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :object, as: 'object', class: Google::Apis::DatastreamV1::StreamObject, decorator: Google::Apis::DatastreamV1::StreamObject::Representation
      
        end
      end
      
      class StaticServiceIpConnectivity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
      
      class StopBackfillJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class StopBackfillJobResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :object, as: 'object', class: Google::Apis::DatastreamV1::StreamObject, decorator: Google::Apis::DatastreamV1::StreamObject::Representation
      
        end
      end
      
      class Stream
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backfill_all, as: 'backfillAll', class: Google::Apis::DatastreamV1::BackfillAllStrategy, decorator: Google::Apis::DatastreamV1::BackfillAllStrategy::Representation
      
          property :backfill_none, as: 'backfillNone', class: Google::Apis::DatastreamV1::BackfillNoneStrategy, decorator: Google::Apis::DatastreamV1::BackfillNoneStrategy::Representation
      
          property :create_time, as: 'createTime'
          property :customer_managed_encryption_key, as: 'customerManagedEncryptionKey'
          property :destination_config, as: 'destinationConfig', class: Google::Apis::DatastreamV1::DestinationConfig, decorator: Google::Apis::DatastreamV1::DestinationConfig::Representation
      
          property :display_name, as: 'displayName'
          collection :errors, as: 'errors', class: Google::Apis::DatastreamV1::Error, decorator: Google::Apis::DatastreamV1::Error::Representation
      
          hash :labels, as: 'labels'
          property :last_recovery_time, as: 'lastRecoveryTime'
          property :name, as: 'name'
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :source_config, as: 'sourceConfig', class: Google::Apis::DatastreamV1::SourceConfig, decorator: Google::Apis::DatastreamV1::SourceConfig::Representation
      
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class StreamLargeObjects
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class StreamObject
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backfill_job, as: 'backfillJob', class: Google::Apis::DatastreamV1::BackfillJob, decorator: Google::Apis::DatastreamV1::BackfillJob::Representation
      
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          collection :errors, as: 'errors', class: Google::Apis::DatastreamV1::Error, decorator: Google::Apis::DatastreamV1::Error::Representation
      
          property :name, as: 'name'
          property :source_object, as: 'sourceObject', class: Google::Apis::DatastreamV1::SourceObjectIdentifier, decorator: Google::Apis::DatastreamV1::SourceObjectIdentifier::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class UserCredentials
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :password, as: 'password'
          property :secret_manager_stored_password, as: 'secretManagerStoredPassword'
          property :secret_manager_stored_security_token, as: 'secretManagerStoredSecurityToken'
          property :security_token, as: 'securityToken'
          property :username, as: 'username'
        end
      end
      
      class Validation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :description, as: 'description'
          collection :message, as: 'message', class: Google::Apis::DatastreamV1::ValidationMessage, decorator: Google::Apis::DatastreamV1::ValidationMessage::Representation
      
          property :state, as: 'state'
        end
      end
      
      class ValidationMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :level, as: 'level'
          property :message, as: 'message'
          hash :metadata, as: 'metadata'
        end
      end
      
      class ValidationResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :validations, as: 'validations', class: Google::Apis::DatastreamV1::Validation, decorator: Google::Apis::DatastreamV1::Validation::Representation
      
        end
      end
      
      class VpcPeeringConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :subnet, as: 'subnet'
          property :vpc, as: 'vpc'
        end
      end
    end
  end
end
