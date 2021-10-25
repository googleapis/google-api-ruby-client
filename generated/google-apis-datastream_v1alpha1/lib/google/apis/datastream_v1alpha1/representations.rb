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
    module DatastreamV1alpha1
      
      class AvroFileFormat
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackfillAllStrategy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackfillNoneStrategy
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
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Error
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchErrorsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchErrorsResponse
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
      
      class ListStreamsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
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
      
      class NoConnectivitySettings
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
      
      class SourceConfig
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
      
      class Stream
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
          property :mysql_excluded_objects, as: 'mysqlExcludedObjects', class: Google::Apis::DatastreamV1alpha1::MysqlRdbms, decorator: Google::Apis::DatastreamV1alpha1::MysqlRdbms::Representation
      
          property :oracle_excluded_objects, as: 'oracleExcludedObjects', class: Google::Apis::DatastreamV1alpha1::OracleRdbms, decorator: Google::Apis::DatastreamV1alpha1::OracleRdbms::Representation
      
        end
      end
      
      class BackfillNoneStrategy
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
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :forward_ssh_connectivity, as: 'forwardSshConnectivity', class: Google::Apis::DatastreamV1alpha1::ForwardSshTunnelConnectivity, decorator: Google::Apis::DatastreamV1alpha1::ForwardSshTunnelConnectivity::Representation
      
          property :gcs_profile, as: 'gcsProfile', class: Google::Apis::DatastreamV1alpha1::GcsProfile, decorator: Google::Apis::DatastreamV1alpha1::GcsProfile::Representation
      
          hash :labels, as: 'labels'
          property :mysql_profile, as: 'mysqlProfile', class: Google::Apis::DatastreamV1alpha1::MysqlProfile, decorator: Google::Apis::DatastreamV1alpha1::MysqlProfile::Representation
      
          property :name, as: 'name'
          property :no_connectivity, as: 'noConnectivity', class: Google::Apis::DatastreamV1alpha1::NoConnectivitySettings, decorator: Google::Apis::DatastreamV1alpha1::NoConnectivitySettings::Representation
      
          property :oracle_profile, as: 'oracleProfile', class: Google::Apis::DatastreamV1alpha1::OracleProfile, decorator: Google::Apis::DatastreamV1alpha1::OracleProfile::Representation
      
          property :private_connectivity, as: 'privateConnectivity', class: Google::Apis::DatastreamV1alpha1::PrivateConnectivity, decorator: Google::Apis::DatastreamV1alpha1::PrivateConnectivity::Representation
      
          property :static_service_ip_connectivity, as: 'staticServiceIpConnectivity', class: Google::Apis::DatastreamV1alpha1::StaticServiceIpConnectivity, decorator: Google::Apis::DatastreamV1alpha1::StaticServiceIpConnectivity::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class DestinationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination_connection_profile_name, as: 'destinationConnectionProfileName'
          property :gcs_destination_config, as: 'gcsDestinationConfig', class: Google::Apis::DatastreamV1alpha1::GcsDestinationConfig, decorator: Google::Apis::DatastreamV1alpha1::GcsDestinationConfig::Representation
      
        end
      end
      
      class DiscoverConnectionProfileRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connection_profile, as: 'connectionProfile', class: Google::Apis::DatastreamV1alpha1::ConnectionProfile, decorator: Google::Apis::DatastreamV1alpha1::ConnectionProfile::Representation
      
          property :connection_profile_name, as: 'connectionProfileName'
          property :mysql_rdbms, as: 'mysqlRdbms', class: Google::Apis::DatastreamV1alpha1::MysqlRdbms, decorator: Google::Apis::DatastreamV1alpha1::MysqlRdbms::Representation
      
          property :oracle_rdbms, as: 'oracleRdbms', class: Google::Apis::DatastreamV1alpha1::OracleRdbms, decorator: Google::Apis::DatastreamV1alpha1::OracleRdbms::Representation
      
          property :recursion_depth, as: 'recursionDepth'
          property :recursive, as: 'recursive'
        end
      end
      
      class DiscoverConnectionProfileResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mysql_rdbms, as: 'mysqlRdbms', class: Google::Apis::DatastreamV1alpha1::MysqlRdbms, decorator: Google::Apis::DatastreamV1alpha1::MysqlRdbms::Representation
      
          property :oracle_rdbms, as: 'oracleRdbms', class: Google::Apis::DatastreamV1alpha1::OracleRdbms, decorator: Google::Apis::DatastreamV1alpha1::OracleRdbms::Representation
      
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
      
      class FetchErrorsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class FetchErrorsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :errors, as: 'errors', class: Google::Apis::DatastreamV1alpha1::Error, decorator: Google::Apis::DatastreamV1alpha1::Error::Representation
      
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
          property :avro_file_format, as: 'avroFileFormat', class: Google::Apis::DatastreamV1alpha1::AvroFileFormat, decorator: Google::Apis::DatastreamV1alpha1::AvroFileFormat::Representation
      
          property :file_rotation_interval, as: 'fileRotationInterval'
          property :file_rotation_mb, as: 'fileRotationMb'
          property :gcs_file_format, as: 'gcsFileFormat'
          property :json_file_format, as: 'jsonFileFormat', class: Google::Apis::DatastreamV1alpha1::JsonFileFormat, decorator: Google::Apis::DatastreamV1alpha1::JsonFileFormat::Representation
      
          property :path, as: 'path'
        end
      end
      
      class GcsProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket_name, as: 'bucketName'
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
          collection :connection_profiles, as: 'connectionProfiles', class: Google::Apis::DatastreamV1alpha1::ConnectionProfile, decorator: Google::Apis::DatastreamV1alpha1::ConnectionProfile::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::DatastreamV1alpha1::Location, decorator: Google::Apis::DatastreamV1alpha1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::DatastreamV1alpha1::Operation, decorator: Google::Apis::DatastreamV1alpha1::Operation::Representation
      
        end
      end
      
      class ListPrivateConnectionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :private_connections, as: 'privateConnections', class: Google::Apis::DatastreamV1alpha1::PrivateConnection, decorator: Google::Apis::DatastreamV1alpha1::PrivateConnection::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListRoutesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :routes, as: 'routes', class: Google::Apis::DatastreamV1alpha1::Route, decorator: Google::Apis::DatastreamV1alpha1::Route::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListStreamsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :streams, as: 'streams', class: Google::Apis::DatastreamV1alpha1::Stream, decorator: Google::Apis::DatastreamV1alpha1::Stream::Representation
      
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
      
      class MysqlColumn
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :collation, as: 'collation'
          property :column_name, as: 'columnName'
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
          property :database_name, as: 'databaseName'
          collection :mysql_tables, as: 'mysqlTables', class: Google::Apis::DatastreamV1alpha1::MysqlTable, decorator: Google::Apis::DatastreamV1alpha1::MysqlTable::Representation
      
        end
      end
      
      class MysqlProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hostname, as: 'hostname'
          property :password, as: 'password'
          property :port, as: 'port'
          property :ssl_config, as: 'sslConfig', class: Google::Apis::DatastreamV1alpha1::MysqlSslConfig, decorator: Google::Apis::DatastreamV1alpha1::MysqlSslConfig::Representation
      
          property :username, as: 'username'
        end
      end
      
      class MysqlRdbms
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :mysql_databases, as: 'mysqlDatabases', class: Google::Apis::DatastreamV1alpha1::MysqlDatabase, decorator: Google::Apis::DatastreamV1alpha1::MysqlDatabase::Representation
      
        end
      end
      
      class MysqlSourceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allowlist, as: 'allowlist', class: Google::Apis::DatastreamV1alpha1::MysqlRdbms, decorator: Google::Apis::DatastreamV1alpha1::MysqlRdbms::Representation
      
          property :rejectlist, as: 'rejectlist', class: Google::Apis::DatastreamV1alpha1::MysqlRdbms, decorator: Google::Apis::DatastreamV1alpha1::MysqlRdbms::Representation
      
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
          collection :mysql_columns, as: 'mysqlColumns', class: Google::Apis::DatastreamV1alpha1::MysqlColumn, decorator: Google::Apis::DatastreamV1alpha1::MysqlColumn::Representation
      
          property :table_name, as: 'tableName'
        end
      end
      
      class NoConnectivitySettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::DatastreamV1alpha1::Status, decorator: Google::Apis::DatastreamV1alpha1::Status::Representation
      
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
          property :validation_result, as: 'validationResult', class: Google::Apis::DatastreamV1alpha1::ValidationResult, decorator: Google::Apis::DatastreamV1alpha1::ValidationResult::Representation
      
          property :verb, as: 'verb'
        end
      end
      
      class OracleColumn
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column_name, as: 'columnName'
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
          collection :oracle_schemas, as: 'oracleSchemas', class: Google::Apis::DatastreamV1alpha1::OracleSchema, decorator: Google::Apis::DatastreamV1alpha1::OracleSchema::Representation
      
        end
      end
      
      class OracleSchema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :oracle_tables, as: 'oracleTables', class: Google::Apis::DatastreamV1alpha1::OracleTable, decorator: Google::Apis::DatastreamV1alpha1::OracleTable::Representation
      
          property :schema_name, as: 'schemaName'
        end
      end
      
      class OracleSourceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allowlist, as: 'allowlist', class: Google::Apis::DatastreamV1alpha1::OracleRdbms, decorator: Google::Apis::DatastreamV1alpha1::OracleRdbms::Representation
      
          property :rejectlist, as: 'rejectlist', class: Google::Apis::DatastreamV1alpha1::OracleRdbms, decorator: Google::Apis::DatastreamV1alpha1::OracleRdbms::Representation
      
        end
      end
      
      class OracleTable
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :oracle_columns, as: 'oracleColumns', class: Google::Apis::DatastreamV1alpha1::OracleColumn, decorator: Google::Apis::DatastreamV1alpha1::OracleColumn::Representation
      
          property :table_name, as: 'tableName'
        end
      end
      
      class PrivateConnection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :error, as: 'error', class: Google::Apis::DatastreamV1alpha1::Error, decorator: Google::Apis::DatastreamV1alpha1::Error::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
          property :vpc_peering_config, as: 'vpcPeeringConfig', class: Google::Apis::DatastreamV1alpha1::VpcPeeringConfig, decorator: Google::Apis::DatastreamV1alpha1::VpcPeeringConfig::Representation
      
        end
      end
      
      class PrivateConnectivity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :private_connection_name, as: 'privateConnectionName'
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
      
      class SourceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mysql_source_config, as: 'mysqlSourceConfig', class: Google::Apis::DatastreamV1alpha1::MysqlSourceConfig, decorator: Google::Apis::DatastreamV1alpha1::MysqlSourceConfig::Representation
      
          property :oracle_source_config, as: 'oracleSourceConfig', class: Google::Apis::DatastreamV1alpha1::OracleSourceConfig, decorator: Google::Apis::DatastreamV1alpha1::OracleSourceConfig::Representation
      
          property :source_connection_profile_name, as: 'sourceConnectionProfileName'
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
      
      class Stream
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backfill_all, as: 'backfillAll', class: Google::Apis::DatastreamV1alpha1::BackfillAllStrategy, decorator: Google::Apis::DatastreamV1alpha1::BackfillAllStrategy::Representation
      
          property :backfill_none, as: 'backfillNone', class: Google::Apis::DatastreamV1alpha1::BackfillNoneStrategy, decorator: Google::Apis::DatastreamV1alpha1::BackfillNoneStrategy::Representation
      
          property :create_time, as: 'createTime'
          property :destination_config, as: 'destinationConfig', class: Google::Apis::DatastreamV1alpha1::DestinationConfig, decorator: Google::Apis::DatastreamV1alpha1::DestinationConfig::Representation
      
          property :display_name, as: 'displayName'
          collection :errors, as: 'errors', class: Google::Apis::DatastreamV1alpha1::Error, decorator: Google::Apis::DatastreamV1alpha1::Error::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :source_config, as: 'sourceConfig', class: Google::Apis::DatastreamV1alpha1::SourceConfig, decorator: Google::Apis::DatastreamV1alpha1::SourceConfig::Representation
      
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class Validation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :description, as: 'description'
          collection :message, as: 'message', class: Google::Apis::DatastreamV1alpha1::ValidationMessage, decorator: Google::Apis::DatastreamV1alpha1::ValidationMessage::Representation
      
          property :status, as: 'status'
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
          collection :validations, as: 'validations', class: Google::Apis::DatastreamV1alpha1::Validation, decorator: Google::Apis::DatastreamV1alpha1::Validation::Representation
      
        end
      end
      
      class VpcPeeringConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :subnet, as: 'subnet'
          property :vpc_name, as: 'vpcName'
        end
      end
    end
  end
end
