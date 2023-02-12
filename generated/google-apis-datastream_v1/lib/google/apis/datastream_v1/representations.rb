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
      
      class BigQueryDestinationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BigQueryProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
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
      
      class Error
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
      
      class LookupStreamObjectRequest
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
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationMetadata
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
      
      class OracleSourceConfig
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
      
      class Route
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
      
      class AvroFileFormat
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class BackfillAllStrategy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mysql_excluded_objects, as: 'mysqlExcludedObjects', class: Google::Apis::DatastreamV1::MysqlRdbms, decorator: Google::Apis::DatastreamV1::MysqlRdbms::Representation
      
          property :oracle_excluded_objects, as: 'oracleExcludedObjects', class: Google::Apis::DatastreamV1::OracleRdbms, decorator: Google::Apis::DatastreamV1::OracleRdbms::Representation
      
          property :postgresql_excluded_objects, as: 'postgresqlExcludedObjects', class: Google::Apis::DatastreamV1::PostgresqlRdbms, decorator: Google::Apis::DatastreamV1::PostgresqlRdbms::Representation
      
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
      
      class BigQueryDestinationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_freshness, as: 'dataFreshness'
          property :single_target_dataset, as: 'singleTargetDataset', class: Google::Apis::DatastreamV1::SingleTargetDataset, decorator: Google::Apis::DatastreamV1::SingleTargetDataset::Representation
      
          property :source_hierarchy_datasets, as: 'sourceHierarchyDatasets', class: Google::Apis::DatastreamV1::SourceHierarchyDatasets, decorator: Google::Apis::DatastreamV1::SourceHierarchyDatasets::Representation
      
        end
      end
      
      class BigQueryProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
          property :mysql_profile, as: 'mysqlProfile', class: Google::Apis::DatastreamV1::MysqlProfile, decorator: Google::Apis::DatastreamV1::MysqlProfile::Representation
      
          property :name, as: 'name'
          property :oracle_profile, as: 'oracleProfile', class: Google::Apis::DatastreamV1::OracleProfile, decorator: Google::Apis::DatastreamV1::OracleProfile::Representation
      
          property :postgresql_profile, as: 'postgresqlProfile', class: Google::Apis::DatastreamV1::PostgresqlProfile, decorator: Google::Apis::DatastreamV1::PostgresqlProfile::Representation
      
          property :private_connectivity, as: 'privateConnectivity', class: Google::Apis::DatastreamV1::PrivateConnectivity, decorator: Google::Apis::DatastreamV1::PrivateConnectivity::Representation
      
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
          property :mysql_rdbms, as: 'mysqlRdbms', class: Google::Apis::DatastreamV1::MysqlRdbms, decorator: Google::Apis::DatastreamV1::MysqlRdbms::Representation
      
          property :oracle_rdbms, as: 'oracleRdbms', class: Google::Apis::DatastreamV1::OracleRdbms, decorator: Google::Apis::DatastreamV1::OracleRdbms::Representation
      
          property :postgresql_rdbms, as: 'postgresqlRdbms', class: Google::Apis::DatastreamV1::PostgresqlRdbms, decorator: Google::Apis::DatastreamV1::PostgresqlRdbms::Representation
      
        end
      end
      
      class DiscoverConnectionProfileResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mysql_rdbms, as: 'mysqlRdbms', class: Google::Apis::DatastreamV1::MysqlRdbms, decorator: Google::Apis::DatastreamV1::MysqlRdbms::Representation
      
          property :oracle_rdbms, as: 'oracleRdbms', class: Google::Apis::DatastreamV1::OracleRdbms, decorator: Google::Apis::DatastreamV1::OracleRdbms::Representation
      
          property :postgresql_rdbms, as: 'postgresqlRdbms', class: Google::Apis::DatastreamV1::PostgresqlRdbms, decorator: Google::Apis::DatastreamV1::PostgresqlRdbms::Representation
      
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
      
      class LookupStreamObjectRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :source_object_identifier, as: 'sourceObjectIdentifier', class: Google::Apis::DatastreamV1::SourceObjectIdentifier, decorator: Google::Apis::DatastreamV1::SourceObjectIdentifier::Representation
      
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
          property :primary_key, as: 'primaryKey'
        end
      end
      
      class MysqlDatabase
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :database, as: 'database'
          collection :mysql_tables, as: 'mysqlTables', class: Google::Apis::DatastreamV1::MysqlTable, decorator: Google::Apis::DatastreamV1::MysqlTable::Representation
      
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
          property :exclude_objects, as: 'excludeObjects', class: Google::Apis::DatastreamV1::MysqlRdbms, decorator: Google::Apis::DatastreamV1::MysqlRdbms::Representation
      
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
          property :password, as: 'password'
          property :port, as: 'port'
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
      
      class OracleSourceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :drop_large_objects, as: 'dropLargeObjects', class: Google::Apis::DatastreamV1::DropLargeObjects, decorator: Google::Apis::DatastreamV1::DropLargeObjects::Representation
      
          property :exclude_objects, as: 'excludeObjects', class: Google::Apis::DatastreamV1::OracleRdbms, decorator: Google::Apis::DatastreamV1::OracleRdbms::Representation
      
          property :include_objects, as: 'includeObjects', class: Google::Apis::DatastreamV1::OracleRdbms, decorator: Google::Apis::DatastreamV1::OracleRdbms::Representation
      
          property :max_concurrent_backfill_tasks, as: 'maxConcurrentBackfillTasks'
          property :max_concurrent_cdc_tasks, as: 'maxConcurrentCdcTasks'
          property :stream_large_objects, as: 'streamLargeObjects', class: Google::Apis::DatastreamV1::StreamLargeObjects, decorator: Google::Apis::DatastreamV1::StreamLargeObjects::Representation
      
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
      
      class SingleTargetDataset
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset_id, as: 'datasetId'
        end
      end
      
      class SourceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mysql_source_config, as: 'mysqlSourceConfig', class: Google::Apis::DatastreamV1::MysqlSourceConfig, decorator: Google::Apis::DatastreamV1::MysqlSourceConfig::Representation
      
          property :oracle_source_config, as: 'oracleSourceConfig', class: Google::Apis::DatastreamV1::OracleSourceConfig, decorator: Google::Apis::DatastreamV1::OracleSourceConfig::Representation
      
          property :postgresql_source_config, as: 'postgresqlSourceConfig', class: Google::Apis::DatastreamV1::PostgresqlSourceConfig, decorator: Google::Apis::DatastreamV1::PostgresqlSourceConfig::Representation
      
          property :source_connection_profile, as: 'sourceConnectionProfile'
        end
      end
      
      class SourceHierarchyDatasets
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset_template, as: 'datasetTemplate', class: Google::Apis::DatastreamV1::DatasetTemplate, decorator: Google::Apis::DatastreamV1::DatasetTemplate::Representation
      
        end
      end
      
      class SourceObjectIdentifier
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mysql_identifier, as: 'mysqlIdentifier', class: Google::Apis::DatastreamV1::MysqlObjectIdentifier, decorator: Google::Apis::DatastreamV1::MysqlObjectIdentifier::Representation
      
          property :oracle_identifier, as: 'oracleIdentifier', class: Google::Apis::DatastreamV1::OracleObjectIdentifier, decorator: Google::Apis::DatastreamV1::OracleObjectIdentifier::Representation
      
          property :postgresql_identifier, as: 'postgresqlIdentifier', class: Google::Apis::DatastreamV1::PostgresqlObjectIdentifier, decorator: Google::Apis::DatastreamV1::PostgresqlObjectIdentifier::Representation
      
        end
      end
      
      class StartBackfillJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
          property :name, as: 'name'
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
