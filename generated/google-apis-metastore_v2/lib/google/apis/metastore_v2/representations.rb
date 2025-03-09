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
    module MetastoreV2
      
      class GoogleCloudMetastoreV1AlterMetadataResourceLocationResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMetastoreV1CustomRegionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMetastoreV1ErrorDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMetastoreV1HiveMetastoreVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMetastoreV1LocationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMetastoreV1MoveTableToDatabaseResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMetastoreV1MultiRegionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMetastoreV1OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMetastoreV1QueryMetadataResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMetastoreV1alphaAlterMetadataResourceLocationResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMetastoreV1alphaCancelMigrationResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMetastoreV1alphaCompleteMigrationResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMetastoreV1alphaCustomRegionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMetastoreV1alphaErrorDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMetastoreV1alphaHiveMetastoreVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMetastoreV1alphaLocationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMetastoreV1alphaMoveTableToDatabaseResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMetastoreV1alphaMultiRegionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMetastoreV1alphaOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMetastoreV1alphaQueryMetadataResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMetastoreV1betaAlterMetadataResourceLocationResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMetastoreV1betaCancelMigrationResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMetastoreV1betaCompleteMigrationResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMetastoreV1betaCustomRegionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMetastoreV1betaErrorDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMetastoreV1betaHiveMetastoreVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMetastoreV1betaLocationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMetastoreV1betaMoveTableToDatabaseResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMetastoreV1betaMultiRegionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMetastoreV1betaOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMetastoreV1betaQueryMetadataResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMetastoreV2AlterMetadataResourceLocationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMetastoreV2AlterTablePropertiesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMetastoreV2AuxiliaryVersionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMetastoreV2Backup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMetastoreV2DataCatalogConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMetastoreV2DatabaseDump
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMetastoreV2EncryptionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMetastoreV2Endpoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMetastoreV2ExportMetadataRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMetastoreV2HiveMetastoreConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMetastoreV2ImportMetadataRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMetastoreV2LatestBackup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMetastoreV2ListBackupsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMetastoreV2ListServicesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMetastoreV2MetadataIntegration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMetastoreV2MoveTableToDatabaseRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMetastoreV2QueryMetadataRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMetastoreV2RestoreServiceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMetastoreV2ScalingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMetastoreV2ScheduledBackup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMetastoreV2Service
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningOperation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleRpcStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudMetastoreV1AlterMetadataResourceLocationResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudMetastoreV1CustomRegionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :optional_read_only_regions, as: 'optionalReadOnlyRegions'
          collection :required_read_write_regions, as: 'requiredReadWriteRegions'
          property :witness_region, as: 'witnessRegion'
        end
      end
      
      class GoogleCloudMetastoreV1ErrorDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :details, as: 'details'
        end
      end
      
      class GoogleCloudMetastoreV1HiveMetastoreVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_default, as: 'isDefault'
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudMetastoreV1LocationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :custom_region_metadata, as: 'customRegionMetadata', class: Google::Apis::MetastoreV2::GoogleCloudMetastoreV1CustomRegionMetadata, decorator: Google::Apis::MetastoreV2::GoogleCloudMetastoreV1CustomRegionMetadata::Representation
      
          property :multi_region_metadata, as: 'multiRegionMetadata', class: Google::Apis::MetastoreV2::GoogleCloudMetastoreV1MultiRegionMetadata, decorator: Google::Apis::MetastoreV2::GoogleCloudMetastoreV1MultiRegionMetadata::Representation
      
          collection :supported_hive_metastore_versions, as: 'supportedHiveMetastoreVersions', class: Google::Apis::MetastoreV2::GoogleCloudMetastoreV1HiveMetastoreVersion, decorator: Google::Apis::MetastoreV2::GoogleCloudMetastoreV1HiveMetastoreVersion::Representation
      
        end
      end
      
      class GoogleCloudMetastoreV1MoveTableToDatabaseResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudMetastoreV1MultiRegionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :constituent_regions, as: 'constituentRegions'
          property :continent, as: 'continent'
          property :witness_region, as: 'witnessRegion'
        end
      end
      
      class GoogleCloudMetastoreV1OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :requested_cancellation, as: 'requestedCancellation'
          property :status_message, as: 'statusMessage'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class GoogleCloudMetastoreV1QueryMetadataResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :result_manifest_uri, as: 'resultManifestUri'
        end
      end
      
      class GoogleCloudMetastoreV1alphaAlterMetadataResourceLocationResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudMetastoreV1alphaCancelMigrationResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :migration_execution, as: 'migrationExecution'
        end
      end
      
      class GoogleCloudMetastoreV1alphaCompleteMigrationResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :migration_execution, as: 'migrationExecution'
        end
      end
      
      class GoogleCloudMetastoreV1alphaCustomRegionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :optional_read_only_regions, as: 'optionalReadOnlyRegions'
          collection :required_read_write_regions, as: 'requiredReadWriteRegions'
          property :witness_region, as: 'witnessRegion'
        end
      end
      
      class GoogleCloudMetastoreV1alphaErrorDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :details, as: 'details'
        end
      end
      
      class GoogleCloudMetastoreV1alphaHiveMetastoreVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_default, as: 'isDefault'
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudMetastoreV1alphaLocationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :custom_region_metadata, as: 'customRegionMetadata', class: Google::Apis::MetastoreV2::GoogleCloudMetastoreV1alphaCustomRegionMetadata, decorator: Google::Apis::MetastoreV2::GoogleCloudMetastoreV1alphaCustomRegionMetadata::Representation
      
          property :multi_region_metadata, as: 'multiRegionMetadata', class: Google::Apis::MetastoreV2::GoogleCloudMetastoreV1alphaMultiRegionMetadata, decorator: Google::Apis::MetastoreV2::GoogleCloudMetastoreV1alphaMultiRegionMetadata::Representation
      
          collection :supported_hive_metastore_versions, as: 'supportedHiveMetastoreVersions', class: Google::Apis::MetastoreV2::GoogleCloudMetastoreV1alphaHiveMetastoreVersion, decorator: Google::Apis::MetastoreV2::GoogleCloudMetastoreV1alphaHiveMetastoreVersion::Representation
      
        end
      end
      
      class GoogleCloudMetastoreV1alphaMoveTableToDatabaseResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudMetastoreV1alphaMultiRegionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :constituent_regions, as: 'constituentRegions'
          property :continent, as: 'continent'
          property :witness_region, as: 'witnessRegion'
        end
      end
      
      class GoogleCloudMetastoreV1alphaOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :requested_cancellation, as: 'requestedCancellation'
          property :status_message, as: 'statusMessage'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class GoogleCloudMetastoreV1alphaQueryMetadataResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :result_manifest_uri, as: 'resultManifestUri'
        end
      end
      
      class GoogleCloudMetastoreV1betaAlterMetadataResourceLocationResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudMetastoreV1betaCancelMigrationResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :migration_execution, as: 'migrationExecution'
        end
      end
      
      class GoogleCloudMetastoreV1betaCompleteMigrationResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :migration_execution, as: 'migrationExecution'
        end
      end
      
      class GoogleCloudMetastoreV1betaCustomRegionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :optional_read_only_regions, as: 'optionalReadOnlyRegions'
          collection :required_read_write_regions, as: 'requiredReadWriteRegions'
          property :witness_region, as: 'witnessRegion'
        end
      end
      
      class GoogleCloudMetastoreV1betaErrorDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :details, as: 'details'
        end
      end
      
      class GoogleCloudMetastoreV1betaHiveMetastoreVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_default, as: 'isDefault'
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudMetastoreV1betaLocationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :custom_region_metadata, as: 'customRegionMetadata', class: Google::Apis::MetastoreV2::GoogleCloudMetastoreV1betaCustomRegionMetadata, decorator: Google::Apis::MetastoreV2::GoogleCloudMetastoreV1betaCustomRegionMetadata::Representation
      
          property :multi_region_metadata, as: 'multiRegionMetadata', class: Google::Apis::MetastoreV2::GoogleCloudMetastoreV1betaMultiRegionMetadata, decorator: Google::Apis::MetastoreV2::GoogleCloudMetastoreV1betaMultiRegionMetadata::Representation
      
          collection :supported_hive_metastore_versions, as: 'supportedHiveMetastoreVersions', class: Google::Apis::MetastoreV2::GoogleCloudMetastoreV1betaHiveMetastoreVersion, decorator: Google::Apis::MetastoreV2::GoogleCloudMetastoreV1betaHiveMetastoreVersion::Representation
      
        end
      end
      
      class GoogleCloudMetastoreV1betaMoveTableToDatabaseResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudMetastoreV1betaMultiRegionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :constituent_regions, as: 'constituentRegions'
          property :continent, as: 'continent'
          property :witness_region, as: 'witnessRegion'
        end
      end
      
      class GoogleCloudMetastoreV1betaOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :requested_cancellation, as: 'requestedCancellation'
          property :status_message, as: 'statusMessage'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class GoogleCloudMetastoreV1betaQueryMetadataResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :result_manifest_uri, as: 'resultManifestUri'
        end
      end
      
      class GoogleCloudMetastoreV2AlterMetadataResourceLocationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location_uri, as: 'locationUri'
          property :resource_name, as: 'resourceName'
        end
      end
      
      class GoogleCloudMetastoreV2AlterTablePropertiesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :properties, as: 'properties'
          property :table_name, as: 'tableName'
          property :update_mask, as: 'updateMask'
        end
      end
      
      class GoogleCloudMetastoreV2AuxiliaryVersionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :config_overrides, as: 'configOverrides'
          collection :endpoints, as: 'endpoints', class: Google::Apis::MetastoreV2::GoogleCloudMetastoreV2Endpoint, decorator: Google::Apis::MetastoreV2::GoogleCloudMetastoreV2Endpoint::Representation
      
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudMetastoreV2Backup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :end_time, as: 'endTime'
          property :name, as: 'name'
          collection :restoring_services, as: 'restoringServices'
          property :service_revision, as: 'serviceRevision', class: Google::Apis::MetastoreV2::GoogleCloudMetastoreV2Service, decorator: Google::Apis::MetastoreV2::GoogleCloudMetastoreV2Service::Representation
      
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudMetastoreV2DataCatalogConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class GoogleCloudMetastoreV2DatabaseDump
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_uri, as: 'gcsUri'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudMetastoreV2EncryptionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudMetastoreV2Endpoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :endpoint_uri, as: 'endpointUri'
          property :region, as: 'region'
        end
      end
      
      class GoogleCloudMetastoreV2ExportMetadataRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :database_dump_type, as: 'databaseDumpType'
          property :destination_gcs_folder, as: 'destinationGcsFolder'
          property :request_id, as: 'requestId'
        end
      end
      
      class GoogleCloudMetastoreV2HiveMetastoreConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :auxiliary_versions, as: 'auxiliaryVersions', class: Google::Apis::MetastoreV2::GoogleCloudMetastoreV2AuxiliaryVersionConfig, decorator: Google::Apis::MetastoreV2::GoogleCloudMetastoreV2AuxiliaryVersionConfig::Representation
      
          hash :config_overrides, as: 'configOverrides'
          property :endpoint_protocol, as: 'endpointProtocol'
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudMetastoreV2ImportMetadataRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :database_dump, as: 'databaseDump', class: Google::Apis::MetastoreV2::GoogleCloudMetastoreV2DatabaseDump, decorator: Google::Apis::MetastoreV2::GoogleCloudMetastoreV2DatabaseDump::Representation
      
          property :description, as: 'description'
          property :request_id, as: 'requestId'
        end
      end
      
      class GoogleCloudMetastoreV2LatestBackup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_id, as: 'backupId'
          property :duration, as: 'duration'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudMetastoreV2ListBackupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :backups, as: 'backups', class: Google::Apis::MetastoreV2::GoogleCloudMetastoreV2Backup, decorator: Google::Apis::MetastoreV2::GoogleCloudMetastoreV2Backup::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class GoogleCloudMetastoreV2ListServicesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :services, as: 'services', class: Google::Apis::MetastoreV2::GoogleCloudMetastoreV2Service, decorator: Google::Apis::MetastoreV2::GoogleCloudMetastoreV2Service::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class GoogleCloudMetastoreV2MetadataIntegration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_catalog_config, as: 'dataCatalogConfig', class: Google::Apis::MetastoreV2::GoogleCloudMetastoreV2DataCatalogConfig, decorator: Google::Apis::MetastoreV2::GoogleCloudMetastoreV2DataCatalogConfig::Representation
      
        end
      end
      
      class GoogleCloudMetastoreV2MoveTableToDatabaseRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :db_name, as: 'dbName'
          property :destination_db_name, as: 'destinationDbName'
          property :table_name, as: 'tableName'
        end
      end
      
      class GoogleCloudMetastoreV2QueryMetadataRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query, as: 'query'
        end
      end
      
      class GoogleCloudMetastoreV2RestoreServiceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup, as: 'backup'
          property :backup_location, as: 'backupLocation'
          property :request_id, as: 'requestId'
          property :restore_type, as: 'restoreType'
        end
      end
      
      class GoogleCloudMetastoreV2ScalingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :scaling_factor, as: 'scalingFactor'
        end
      end
      
      class GoogleCloudMetastoreV2ScheduledBackup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_location, as: 'backupLocation'
          property :cron_schedule, as: 'cronSchedule'
          property :enabled, as: 'enabled'
          property :latest_backup, as: 'latestBackup', class: Google::Apis::MetastoreV2::GoogleCloudMetastoreV2LatestBackup, decorator: Google::Apis::MetastoreV2::GoogleCloudMetastoreV2LatestBackup::Representation
      
          property :next_scheduled_time, as: 'nextScheduledTime'
          property :time_zone, as: 'timeZone'
        end
      end
      
      class GoogleCloudMetastoreV2Service
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :encryption_config, as: 'encryptionConfig', class: Google::Apis::MetastoreV2::GoogleCloudMetastoreV2EncryptionConfig, decorator: Google::Apis::MetastoreV2::GoogleCloudMetastoreV2EncryptionConfig::Representation
      
          collection :endpoints, as: 'endpoints', class: Google::Apis::MetastoreV2::GoogleCloudMetastoreV2Endpoint, decorator: Google::Apis::MetastoreV2::GoogleCloudMetastoreV2Endpoint::Representation
      
          property :hive_metastore_config, as: 'hiveMetastoreConfig', class: Google::Apis::MetastoreV2::GoogleCloudMetastoreV2HiveMetastoreConfig, decorator: Google::Apis::MetastoreV2::GoogleCloudMetastoreV2HiveMetastoreConfig::Representation
      
          hash :labels, as: 'labels'
          property :metadata_integration, as: 'metadataIntegration', class: Google::Apis::MetastoreV2::GoogleCloudMetastoreV2MetadataIntegration, decorator: Google::Apis::MetastoreV2::GoogleCloudMetastoreV2MetadataIntegration::Representation
      
          property :name, as: 'name'
          property :scaling_config, as: 'scalingConfig', class: Google::Apis::MetastoreV2::GoogleCloudMetastoreV2ScalingConfig, decorator: Google::Apis::MetastoreV2::GoogleCloudMetastoreV2ScalingConfig::Representation
      
          property :scheduled_backup, as: 'scheduledBackup', class: Google::Apis::MetastoreV2::GoogleCloudMetastoreV2ScheduledBackup, decorator: Google::Apis::MetastoreV2::GoogleCloudMetastoreV2ScheduledBackup::Representation
      
          property :state, as: 'state'
          property :state_message, as: 'stateMessage'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
          property :warehouse_gcs_uri, as: 'warehouseGcsUri'
        end
      end
      
      class GoogleLongrunningOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::MetastoreV2::GoogleRpcStatus, decorator: Google::Apis::MetastoreV2::GoogleRpcStatus::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
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
    end
  end
end
