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
    module OracledatabaseV1
      
      class AllConnectionStrings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AmazonS3IcebergStorage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutonomousDatabase
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutonomousDatabaseApex
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutonomousDatabaseBackup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutonomousDatabaseBackupProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutonomousDatabaseCharacterSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutonomousDatabaseConnectionStrings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutonomousDatabaseConnectionUrls
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutonomousDatabaseProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutonomousDatabaseRefreshableClone
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutonomousDatabaseRefreshableClones
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutonomousDatabaseStandbySummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AutonomousDbVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AzureDataLakeStorageIcebergStorage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupDestinationDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudAccountDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudExadataInfrastructure
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudExadataInfrastructureProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudVmCluster
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudVmClusterProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigureExascaleCloudExadataInfrastructureRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomerContact
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataCollectionOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataCollectionOptionsCommon
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataCollectionOptionsDbSystem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Database
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatabaseCharacterSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatabaseConnectionStringProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatabaseManagementConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatabaseProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DbBackupConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DbHome
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DbNode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DbNodeProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DbServer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DbServerProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DbSystem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DbSystemInitialStorageSize
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DbSystemInitialStorageSizeProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DbSystemOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DbSystemProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DbSystemShape
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DbVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DbVersionProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DefinedTagValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeploymentDiagnosticData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EncryptionKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EncryptionKeyHistoryEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Entitlement
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExadbVmCluster
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExadbVmClusterProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExadbVmClusterStorageDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExascaleConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExascaleDbStorageDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExascaleDbStorageVault
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExascaleDbStorageVaultProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FailoverAutonomousDatabaseRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenerateAutonomousDatabaseWalletRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenerateAutonomousDatabaseWalletResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GiVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GlueIcebergCatalog
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoldengateAmazonKinesisConnectionProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoldengateAmazonRedshiftConnectionProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoldengateAmazonS3ConnectionProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoldengateAzureDataLakeStorageConnectionProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoldengateAzureSynapseAnalyticsConnectionProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoldengateBackupSchedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoldengateConnection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoldengateConnectionAssignment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoldengateConnectionAssignmentProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoldengateConnectionProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoldengateConnectionType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoldengateDatabricksConnectionProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoldengateDb2ConnectionProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoldengateDeployment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoldengateDeploymentEnvironment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoldengateDeploymentLock
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoldengateDeploymentProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoldengateDeploymentType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoldengateDeploymentVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoldengateDeploymentVersionProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoldengateElasticsearchConnectionProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoldengateGenericConnectionProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoldengateGoldengateConnectionProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoldengateGoogleBigQueryConnectionProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoldengateGoogleCloudStorageConnectionProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoldengateGooglePubsubConnectionProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoldengateGroupToRolesMapping
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoldengateHdfsConnectionProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoldengateIcebergConnectionProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoldengateJavaMessageServiceConnectionProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoldengateKafkaConnectionProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoldengateKafkaSchemaRegistryConnectionProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoldengateMaintenanceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoldengateMaintenanceWindow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoldengateMicrosoftFabricConnectionProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoldengateMicrosoftSqlserverConnectionProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoldengateMongodbConnectionProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoldengateMysqlConnectionProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoldengateOciObjectStorageConnectionProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoldengateOggDeployment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoldengateOracleAiDataPlatformConnectionProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoldengateOracleConnectionProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoldengateOracleNosqlConnectionProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoldengatePlacement
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoldengatePostgresqlConnectionProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoldengateRedisConnectionProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoldengateSnowflakeConnectionProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudStorageIcebergStorage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IcebergCatalog
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IcebergStorage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IdentityConnector
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IngressIp
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class KafkaBootstrapServer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAutonomousDatabaseBackupsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAutonomousDatabaseCharacterSetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAutonomousDatabasesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAutonomousDbVersionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCloudExadataInfrastructuresResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCloudVmClustersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDatabaseCharacterSetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDatabasesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDbNodesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDbServersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDbSystemInitialStorageSizesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDbSystemShapesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDbSystemsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDbVersionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListEntitlementsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListExadbVmClustersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListExascaleDbStorageVaultsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListGiVersionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListGoldengateConnectionAssignmentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListGoldengateConnectionTypesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListGoldengateConnectionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListGoldengateDeploymentEnvironmentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListGoldengateDeploymentTypesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListGoldengateDeploymentVersionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListGoldengateDeploymentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListMinorVersionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOdbNetworksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOdbSubnetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListPluggableDatabasesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MaintenanceWindow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MinorVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NameValuePair
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NessieIcebergCatalog
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OdbNetwork
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OdbSubnet
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
      
      class PluggableDatabase
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PluggableDatabaseConnectionStrings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PluggableDatabaseNodeLevelDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PluggableDatabaseProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PolarisIcebergCatalog
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RefreshAutonomousDatabaseRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RemoveVirtualMachineExadbVmClusterRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RestIcebergCatalog
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RestartAutonomousDatabaseRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RestoreAutonomousDatabaseRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ScheduledOperationDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StartAutonomousDatabaseRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StartGoldengateDeploymentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StopAutonomousDatabaseRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StopGoldengateDeploymentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StorageSizeDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SwitchoverAutonomousDatabaseRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestConnectionAssignmentError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestGoldengateConnectionAssignmentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestGoldengateConnectionAssignmentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeOfDay
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeZone
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AllConnectionStrings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :high, as: 'high'
          property :low, as: 'low'
          property :medium, as: 'medium'
        end
      end
      
      class AmazonS3IcebergStorage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_key_id, as: 'accessKeyId'
          property :bucket, as: 'bucket'
          property :endpoint, as: 'endpoint'
          property :region, as: 'region'
          property :scheme_type, as: 'schemeType'
          property :secret_access_key_secret, as: 'secretAccessKeySecret'
        end
      end
      
      class AutonomousDatabase
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :admin_password, as: 'adminPassword'
          property :admin_password_secret_version, as: 'adminPasswordSecretVersion'
          property :cidr, as: 'cidr'
          property :create_time, as: 'createTime'
          property :database, as: 'database'
          collection :disaster_recovery_supported_locations, as: 'disasterRecoverySupportedLocations'
          property :display_name, as: 'displayName'
          property :entitlement_id, as: 'entitlementId'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :network, as: 'network'
          property :odb_network, as: 'odbNetwork'
          property :odb_subnet, as: 'odbSubnet'
          collection :peer_autonomous_databases, as: 'peerAutonomousDatabases'
          property :properties, as: 'properties', class: Google::Apis::OracledatabaseV1::AutonomousDatabaseProperties, decorator: Google::Apis::OracledatabaseV1::AutonomousDatabaseProperties::Representation
      
          property :source_config, as: 'sourceConfig', class: Google::Apis::OracledatabaseV1::SourceConfig, decorator: Google::Apis::OracledatabaseV1::SourceConfig::Representation
      
        end
      end
      
      class AutonomousDatabaseApex
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :apex_version, as: 'apexVersion'
          property :ords_version, as: 'ordsVersion'
        end
      end
      
      class AutonomousDatabaseBackup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :autonomous_database, as: 'autonomousDatabase'
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :properties, as: 'properties', class: Google::Apis::OracledatabaseV1::AutonomousDatabaseBackupProperties, decorator: Google::Apis::OracledatabaseV1::AutonomousDatabaseBackupProperties::Representation
      
        end
      end
      
      class AutonomousDatabaseBackupProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :available_till_time, as: 'availableTillTime'
          property :compartment_id, as: 'compartmentId'
          property :database_size_tb, as: 'databaseSizeTb'
          property :db_version, as: 'dbVersion'
          property :end_time, as: 'endTime'
          property :is_automatic_backup, as: 'isAutomaticBackup'
          property :is_long_term_backup, as: 'isLongTermBackup'
          property :is_restorable, as: 'isRestorable'
          property :key_store_id, as: 'keyStoreId'
          property :key_store_wallet, as: 'keyStoreWallet'
          property :kms_key_id, as: 'kmsKeyId'
          property :kms_key_version_id, as: 'kmsKeyVersionId'
          property :lifecycle_details, as: 'lifecycleDetails'
          property :lifecycle_state, as: 'lifecycleState'
          property :ocid, as: 'ocid'
          property :retention_period_days, as: 'retentionPeriodDays'
          property :size_tb, as: 'sizeTb'
          property :start_time, as: 'startTime'
          property :type, as: 'type'
          property :vault_id, as: 'vaultId'
        end
      end
      
      class AutonomousDatabaseCharacterSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :character_set, as: 'characterSet'
          property :character_set_type, as: 'characterSetType'
          property :name, as: 'name'
        end
      end
      
      class AutonomousDatabaseConnectionStrings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :all_connection_strings, as: 'allConnectionStrings', class: Google::Apis::OracledatabaseV1::AllConnectionStrings, decorator: Google::Apis::OracledatabaseV1::AllConnectionStrings::Representation
      
          property :dedicated, as: 'dedicated'
          property :high, as: 'high'
          property :low, as: 'low'
          property :medium, as: 'medium'
          collection :profiles, as: 'profiles', class: Google::Apis::OracledatabaseV1::DatabaseConnectionStringProfile, decorator: Google::Apis::OracledatabaseV1::DatabaseConnectionStringProfile::Representation
      
        end
      end
      
      class AutonomousDatabaseConnectionUrls
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :apex_uri, as: 'apexUri'
          property :database_transforms_uri, as: 'databaseTransformsUri'
          property :graph_studio_uri, as: 'graphStudioUri'
          property :machine_learning_notebook_uri, as: 'machineLearningNotebookUri'
          property :machine_learning_user_management_uri, as: 'machineLearningUserManagementUri'
          property :mongo_db_uri, as: 'mongoDbUri'
          property :ords_uri, as: 'ordsUri'
          property :sql_dev_web_uri, as: 'sqlDevWebUri'
        end
      end
      
      class AutonomousDatabaseProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :actual_used_data_storage_size_tb, as: 'actualUsedDataStorageSizeTb'
          property :allocated_storage_size_tb, as: 'allocatedStorageSizeTb'
          collection :allowlisted_ips, as: 'allowlistedIps'
          property :apex_details, as: 'apexDetails', class: Google::Apis::OracledatabaseV1::AutonomousDatabaseApex, decorator: Google::Apis::OracledatabaseV1::AutonomousDatabaseApex::Representation
      
          property :are_primary_allowlisted_ips_used, as: 'arePrimaryAllowlistedIpsUsed'
          property :autonomous_container_database_id, as: 'autonomousContainerDatabaseId'
          collection :available_upgrade_versions, as: 'availableUpgradeVersions'
          property :backup_retention_period_days, as: 'backupRetentionPeriodDays'
          property :character_set, as: 'characterSet'
          property :compute_count, as: 'computeCount'
          property :connection_strings, as: 'connectionStrings', class: Google::Apis::OracledatabaseV1::AutonomousDatabaseConnectionStrings, decorator: Google::Apis::OracledatabaseV1::AutonomousDatabaseConnectionStrings::Representation
      
          property :connection_urls, as: 'connectionUrls', class: Google::Apis::OracledatabaseV1::AutonomousDatabaseConnectionUrls, decorator: Google::Apis::OracledatabaseV1::AutonomousDatabaseConnectionUrls::Representation
      
          property :cpu_core_count, as: 'cpuCoreCount'
          collection :customer_contacts, as: 'customerContacts', class: Google::Apis::OracledatabaseV1::CustomerContact, decorator: Google::Apis::OracledatabaseV1::CustomerContact::Representation
      
          property :data_guard_role_changed_time, as: 'dataGuardRoleChangedTime'
          property :data_safe_state, as: 'dataSafeState'
          property :data_storage_size_gb, as: 'dataStorageSizeGb'
          property :data_storage_size_tb, as: 'dataStorageSizeTb'
          property :database_management_state, as: 'databaseManagementState'
          property :db_edition, as: 'dbEdition'
          property :db_version, as: 'dbVersion'
          property :db_workload, as: 'dbWorkload'
          property :disaster_recovery_role_changed_time, as: 'disasterRecoveryRoleChangedTime'
          property :encryption_key, as: 'encryptionKey', class: Google::Apis::OracledatabaseV1::EncryptionKey, decorator: Google::Apis::OracledatabaseV1::EncryptionKey::Representation
      
          collection :encryption_key_history_entries, as: 'encryptionKeyHistoryEntries', class: Google::Apis::OracledatabaseV1::EncryptionKeyHistoryEntry, decorator: Google::Apis::OracledatabaseV1::EncryptionKeyHistoryEntry::Representation
      
          property :failed_data_recovery_duration, as: 'failedDataRecoveryDuration'
          property :is_auto_scaling_enabled, as: 'isAutoScalingEnabled'
          property :is_local_data_guard_enabled, as: 'isLocalDataGuardEnabled'
          property :is_storage_auto_scaling_enabled, as: 'isStorageAutoScalingEnabled'
          property :license_type, as: 'licenseType'
          property :lifecycle_details, as: 'lifecycleDetails'
          property :local_adg_auto_failover_max_data_loss_limit, as: 'localAdgAutoFailoverMaxDataLossLimit'
          property :local_adg_auto_failover_max_data_loss_limit_duration, as: 'localAdgAutoFailoverMaxDataLossLimitDuration'
          property :local_data_guard_enabled, as: 'localDataGuardEnabled'
          property :local_disaster_recovery_type, as: 'localDisasterRecoveryType'
          property :local_standby_db, as: 'localStandbyDb', class: Google::Apis::OracledatabaseV1::AutonomousDatabaseStandbySummary, decorator: Google::Apis::OracledatabaseV1::AutonomousDatabaseStandbySummary::Representation
      
          property :maintenance_begin_time, as: 'maintenanceBeginTime'
          property :maintenance_end_time, as: 'maintenanceEndTime'
          property :maintenance_schedule_type, as: 'maintenanceScheduleType'
          property :memory_per_oracle_compute_unit_gbs, as: 'memoryPerOracleComputeUnitGbs'
          property :memory_table_gbs, as: 'memoryTableGbs'
          property :mtls_connection_required, as: 'mtlsConnectionRequired'
          property :n_character_set, as: 'nCharacterSet'
          property :next_long_term_backup_time, as: 'nextLongTermBackupTime'
          property :oci_url, as: 'ociUrl'
          property :ocid, as: 'ocid'
          property :open_mode, as: 'openMode'
          property :operations_insights_state, as: 'operationsInsightsState'
          collection :peer_db_ids, as: 'peerDbIds'
          property :permission_level, as: 'permissionLevel'
          property :private_endpoint, as: 'privateEndpoint'
          property :private_endpoint_ip, as: 'privateEndpointIp'
          property :private_endpoint_label, as: 'privateEndpointLabel'
          property :refreshable_clone, as: 'refreshableClone'
          property :refreshable_mode, as: 'refreshableMode'
          property :refreshable_state, as: 'refreshableState'
          property :role, as: 'role'
          collection :scheduled_operation_details, as: 'scheduledOperationDetails', class: Google::Apis::OracledatabaseV1::ScheduledOperationDetails, decorator: Google::Apis::OracledatabaseV1::ScheduledOperationDetails::Representation
      
          property :secret_id, as: 'secretId'
          property :service_agent_email, as: 'serviceAgentEmail'
          property :sql_web_developer_url, as: 'sqlWebDeveloperUrl'
          property :state, as: 'state'
          collection :supported_clone_regions, as: 'supportedCloneRegions'
          property :total_auto_backup_storage_size_gbs, as: 'totalAutoBackupStorageSizeGbs'
          property :used_data_storage_size_tbs, as: 'usedDataStorageSizeTbs'
          property :vault_id, as: 'vaultId'
        end
      end
      
      class AutonomousDatabaseRefreshableClone
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :region, as: 'region'
        end
      end
      
      class AutonomousDatabaseRefreshableClones
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :autonomous_database_refreshable_clones, as: 'autonomousDatabaseRefreshableClones', class: Google::Apis::OracledatabaseV1::AutonomousDatabaseRefreshableClone, decorator: Google::Apis::OracledatabaseV1::AutonomousDatabaseRefreshableClone::Representation
      
        end
      end
      
      class AutonomousDatabaseStandbySummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_guard_role_changed_time, as: 'dataGuardRoleChangedTime'
          property :disaster_recovery_role_changed_time, as: 'disasterRecoveryRoleChangedTime'
          property :lag_time_duration, as: 'lagTimeDuration'
          property :lifecycle_details, as: 'lifecycleDetails'
          property :state, as: 'state'
        end
      end
      
      class AutonomousDbVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :db_workload, as: 'dbWorkload'
          property :name, as: 'name'
          property :version, as: 'version'
          property :workload_uri, as: 'workloadUri'
        end
      end
      
      class AzureDataLakeStorageIcebergStorage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_key_secret, as: 'accountKeySecret'
          property :azure_account, as: 'azureAccount'
          property :container, as: 'container'
          property :endpoint, as: 'endpoint'
        end
      end
      
      class BackupDestinationDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CloudAccountDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_creation_uri, as: 'accountCreationUri'
          property :cloud_account, as: 'cloudAccount'
          property :cloud_account_home_region, as: 'cloudAccountHomeRegion'
          property :link_existing_account_uri, as: 'linkExistingAccountUri'
        end
      end
      
      class CloudExadataInfrastructure
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :entitlement_id, as: 'entitlementId'
          property :gcp_oracle_zone, as: 'gcpOracleZone'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :properties, as: 'properties', class: Google::Apis::OracledatabaseV1::CloudExadataInfrastructureProperties, decorator: Google::Apis::OracledatabaseV1::CloudExadataInfrastructureProperties::Representation
      
        end
      end
      
      class CloudExadataInfrastructureProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :activated_storage_count, as: 'activatedStorageCount'
          property :additional_storage_count, as: 'additionalStorageCount'
          property :available_storage_size_gb, as: 'availableStorageSizeGb'
          property :compute_count, as: 'computeCount'
          property :compute_model, as: 'computeModel'
          property :cpu_count, as: 'cpuCount'
          collection :customer_contacts, as: 'customerContacts', class: Google::Apis::OracledatabaseV1::CustomerContact, decorator: Google::Apis::OracledatabaseV1::CustomerContact::Representation
      
          property :data_storage_size_tb, as: 'dataStorageSizeTb'
          property :database_server_type, as: 'databaseServerType'
          property :db_node_storage_size_gb, as: 'dbNodeStorageSizeGb'
          property :db_server_version, as: 'dbServerVersion'
          property :exascale_config, as: 'exascaleConfig', class: Google::Apis::OracledatabaseV1::ExascaleConfig, decorator: Google::Apis::OracledatabaseV1::ExascaleConfig::Representation
      
          property :maintenance_window, as: 'maintenanceWindow', class: Google::Apis::OracledatabaseV1::MaintenanceWindow, decorator: Google::Apis::OracledatabaseV1::MaintenanceWindow::Representation
      
          property :max_cpu_count, as: 'maxCpuCount'
          property :max_data_storage_tb, as: 'maxDataStorageTb'
          property :max_db_node_storage_size_gb, as: 'maxDbNodeStorageSizeGb'
          property :max_memory_gb, as: 'maxMemoryGb'
          property :memory_size_gb, as: 'memorySizeGb'
          property :monthly_db_server_version, as: 'monthlyDbServerVersion'
          property :monthly_storage_server_version, as: 'monthlyStorageServerVersion'
          property :next_maintenance_run_id, as: 'nextMaintenanceRunId'
          property :next_maintenance_run_time, as: 'nextMaintenanceRunTime'
          property :next_security_maintenance_run_time, as: 'nextSecurityMaintenanceRunTime'
          property :oci_url, as: 'ociUrl'
          property :ocid, as: 'ocid'
          property :shape, as: 'shape'
          property :state, as: 'state'
          property :storage_count, as: 'storageCount'
          property :storage_server_type, as: 'storageServerType'
          property :storage_server_version, as: 'storageServerVersion'
          property :total_storage_size_gb, as: 'totalStorageSizeGb'
        end
      end
      
      class CloudVmCluster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_odb_subnet, as: 'backupOdbSubnet'
          property :backup_subnet_cidr, as: 'backupSubnetCidr'
          property :cidr, as: 'cidr'
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :exadata_infrastructure, as: 'exadataInfrastructure'
          property :exascale_db_storage_vault, as: 'exascaleDbStorageVault'
          property :gcp_oracle_zone, as: 'gcpOracleZone'
          property :identity_connector, as: 'identityConnector', class: Google::Apis::OracledatabaseV1::IdentityConnector, decorator: Google::Apis::OracledatabaseV1::IdentityConnector::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :network, as: 'network'
          property :odb_network, as: 'odbNetwork'
          property :odb_subnet, as: 'odbSubnet'
          property :properties, as: 'properties', class: Google::Apis::OracledatabaseV1::CloudVmClusterProperties, decorator: Google::Apis::OracledatabaseV1::CloudVmClusterProperties::Representation
      
        end
      end
      
      class CloudVmClusterProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_name, as: 'clusterName'
          property :compartment_id, as: 'compartmentId'
          property :compute_model, as: 'computeModel'
          property :cpu_core_count, as: 'cpuCoreCount'
          property :data_storage_size_tb, as: 'dataStorageSizeTb'
          property :db_node_storage_size_gb, as: 'dbNodeStorageSizeGb'
          collection :db_server_ocids, as: 'dbServerOcids'
          property :diagnostics_data_collection_options, as: 'diagnosticsDataCollectionOptions', class: Google::Apis::OracledatabaseV1::DataCollectionOptions, decorator: Google::Apis::OracledatabaseV1::DataCollectionOptions::Representation
      
          property :disk_redundancy, as: 'diskRedundancy'
          property :dns_listener_ip, as: 'dnsListenerIp'
          property :domain, as: 'domain'
          property :gi_version, as: 'giVersion'
          property :hostname, as: 'hostname'
          property :hostname_prefix, as: 'hostnamePrefix'
          property :license_type, as: 'licenseType'
          property :local_backup_enabled, as: 'localBackupEnabled'
          property :memory_size_gb, as: 'memorySizeGb'
          property :node_count, as: 'nodeCount'
          property :oci_url, as: 'ociUrl'
          property :ocid, as: 'ocid'
          property :ocpu_count, as: 'ocpuCount'
          property :scan_dns, as: 'scanDns'
          property :scan_dns_record_id, as: 'scanDnsRecordId'
          collection :scan_ip_ids, as: 'scanIpIds'
          property :scan_listener_port_tcp, as: 'scanListenerPortTcp'
          property :scan_listener_port_tcp_ssl, as: 'scanListenerPortTcpSsl'
          property :shape, as: 'shape'
          property :sparse_diskgroup_enabled, as: 'sparseDiskgroupEnabled'
          collection :ssh_public_keys, as: 'sshPublicKeys'
          property :state, as: 'state'
          property :storage_management_type, as: 'storageManagementType'
          property :storage_size_gb, as: 'storageSizeGb'
          property :system_version, as: 'systemVersion'
          property :time_zone, as: 'timeZone', class: Google::Apis::OracledatabaseV1::TimeZone, decorator: Google::Apis::OracledatabaseV1::TimeZone::Representation
      
        end
      end
      
      class ConfigureExascaleCloudExadataInfrastructureRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_id, as: 'requestId'
          property :total_storage_size_gb, as: 'totalStorageSizeGb'
        end
      end
      
      class CustomerContact
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
        end
      end
      
      class DataCollectionOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :diagnostics_events_enabled, as: 'diagnosticsEventsEnabled'
          property :health_monitoring_enabled, as: 'healthMonitoringEnabled'
          property :incident_logs_enabled, as: 'incidentLogsEnabled'
        end
      end
      
      class DataCollectionOptionsCommon
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_diagnostics_events_enabled, as: 'isDiagnosticsEventsEnabled'
          property :is_health_monitoring_enabled, as: 'isHealthMonitoringEnabled'
          property :is_incident_logs_enabled, as: 'isIncidentLogsEnabled'
        end
      end
      
      class DataCollectionOptionsDbSystem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_diagnostics_events_enabled, as: 'isDiagnosticsEventsEnabled'
          property :is_incident_logs_enabled, as: 'isIncidentLogsEnabled'
        end
      end
      
      class Database
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :admin_password, as: 'adminPassword'
          property :admin_password_secret_version, as: 'adminPasswordSecretVersion'
          property :character_set, as: 'characterSet'
          property :create_time, as: 'createTime'
          property :database_id, as: 'databaseId'
          property :db_home_name, as: 'dbHomeName'
          property :db_name, as: 'dbName'
          property :db_unique_name, as: 'dbUniqueName'
          property :gcp_oracle_zone, as: 'gcpOracleZone'
          property :name, as: 'name'
          property :ncharacter_set, as: 'ncharacterSet'
          property :oci_url, as: 'ociUrl'
          property :ops_insights_status, as: 'opsInsightsStatus'
          property :pluggable_database_id, as: 'pluggableDatabaseId'
          property :pluggable_database_name, as: 'pluggableDatabaseName'
          property :properties, as: 'properties', class: Google::Apis::OracledatabaseV1::DatabaseProperties, decorator: Google::Apis::OracledatabaseV1::DatabaseProperties::Representation
      
          property :tde_wallet_password, as: 'tdeWalletPassword'
          property :tde_wallet_password_secret_version, as: 'tdeWalletPasswordSecretVersion'
        end
      end
      
      class DatabaseCharacterSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :character_set, as: 'characterSet'
          property :character_set_type, as: 'characterSetType'
          property :name, as: 'name'
        end
      end
      
      class DatabaseConnectionStringProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :consumer_group, as: 'consumerGroup'
          property :display_name, as: 'displayName'
          property :host_format, as: 'hostFormat'
          property :is_regional, as: 'isRegional'
          property :protocol, as: 'protocol'
          property :session_mode, as: 'sessionMode'
          property :syntax_format, as: 'syntaxFormat'
          property :tls_authentication, as: 'tlsAuthentication'
          property :value, as: 'value'
        end
      end
      
      class DatabaseManagementConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :management_state, as: 'managementState'
          property :management_type, as: 'managementType'
        end
      end
      
      class DatabaseProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :database_management_config, as: 'databaseManagementConfig', class: Google::Apis::OracledatabaseV1::DatabaseManagementConfig, decorator: Google::Apis::OracledatabaseV1::DatabaseManagementConfig::Representation
      
          property :db_backup_config, as: 'dbBackupConfig', class: Google::Apis::OracledatabaseV1::DbBackupConfig, decorator: Google::Apis::OracledatabaseV1::DbBackupConfig::Representation
      
          property :db_version, as: 'dbVersion'
          property :state, as: 'state'
        end
      end
      
      class DbBackupConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_backup_enabled, as: 'autoBackupEnabled'
          property :auto_full_backup_day, as: 'autoFullBackupDay'
          property :auto_full_backup_window, as: 'autoFullBackupWindow'
          property :auto_incremental_backup_window, as: 'autoIncrementalBackupWindow'
          property :backup_deletion_policy, as: 'backupDeletionPolicy'
          collection :backup_destination_details, as: 'backupDestinationDetails', class: Google::Apis::OracledatabaseV1::BackupDestinationDetails, decorator: Google::Apis::OracledatabaseV1::BackupDestinationDetails::Representation
      
          property :retention_period_days, as: 'retentionPeriodDays'
        end
      end
      
      class DbHome
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :database, as: 'database', class: Google::Apis::OracledatabaseV1::Database, decorator: Google::Apis::OracledatabaseV1::Database::Representation
      
          property :db_version, as: 'dbVersion'
          property :display_name, as: 'displayName'
          property :is_unified_auditing_enabled, as: 'isUnifiedAuditingEnabled'
        end
      end
      
      class DbNode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :properties, as: 'properties', class: Google::Apis::OracledatabaseV1::DbNodeProperties, decorator: Google::Apis::OracledatabaseV1::DbNodeProperties::Representation
      
        end
      end
      
      class DbNodeProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :db_node_storage_size_gb, as: 'dbNodeStorageSizeGb'
          property :db_server_ocid, as: 'dbServerOcid'
          property :hostname, as: 'hostname'
          property :memory_size_gb, as: 'memorySizeGb'
          property :ocid, as: 'ocid'
          property :ocpu_count, as: 'ocpuCount'
          property :state, as: 'state'
          property :total_cpu_core_count, as: 'totalCpuCoreCount'
        end
      end
      
      class DbServer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :properties, as: 'properties', class: Google::Apis::OracledatabaseV1::DbServerProperties, decorator: Google::Apis::OracledatabaseV1::DbServerProperties::Representation
      
        end
      end
      
      class DbServerProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :db_node_ids, as: 'dbNodeIds'
          property :db_node_storage_size_gb, as: 'dbNodeStorageSizeGb'
          property :max_db_node_storage_size_gb, as: 'maxDbNodeStorageSizeGb'
          property :max_memory_size_gb, as: 'maxMemorySizeGb'
          property :max_ocpu_count, as: 'maxOcpuCount'
          property :memory_size_gb, as: 'memorySizeGb'
          property :ocid, as: 'ocid'
          property :ocpu_count, as: 'ocpuCount'
          property :state, as: 'state'
          property :vm_count, as: 'vmCount'
        end
      end
      
      class DbSystem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :entitlement_id, as: 'entitlementId'
          property :gcp_oracle_zone, as: 'gcpOracleZone'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :oci_url, as: 'ociUrl'
          property :odb_network, as: 'odbNetwork'
          property :odb_subnet, as: 'odbSubnet'
          property :properties, as: 'properties', class: Google::Apis::OracledatabaseV1::DbSystemProperties, decorator: Google::Apis::OracledatabaseV1::DbSystemProperties::Representation
      
        end
      end
      
      class DbSystemInitialStorageSize
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :properties, as: 'properties', class: Google::Apis::OracledatabaseV1::DbSystemInitialStorageSizeProperties, decorator: Google::Apis::OracledatabaseV1::DbSystemInitialStorageSizeProperties::Representation
      
        end
      end
      
      class DbSystemInitialStorageSizeProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :launch_from_backup_storage_size_details, as: 'launchFromBackupStorageSizeDetails', class: Google::Apis::OracledatabaseV1::StorageSizeDetails, decorator: Google::Apis::OracledatabaseV1::StorageSizeDetails::Representation
      
          property :shape_type, as: 'shapeType'
          property :storage_management, as: 'storageManagement'
          collection :storage_size_details, as: 'storageSizeDetails', class: Google::Apis::OracledatabaseV1::StorageSizeDetails, decorator: Google::Apis::OracledatabaseV1::StorageSizeDetails::Representation
      
        end
      end
      
      class DbSystemOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :storage_management, as: 'storageManagement'
        end
      end
      
      class DbSystemProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compute_count, as: 'computeCount'
          property :compute_model, as: 'computeModel'
          property :data_collection_options, as: 'dataCollectionOptions', class: Google::Apis::OracledatabaseV1::DataCollectionOptionsDbSystem, decorator: Google::Apis::OracledatabaseV1::DataCollectionOptionsDbSystem::Representation
      
          property :data_storage_size_gb, as: 'dataStorageSizeGb'
          property :database_edition, as: 'databaseEdition'
          property :db_home, as: 'dbHome', class: Google::Apis::OracledatabaseV1::DbHome, decorator: Google::Apis::OracledatabaseV1::DbHome::Representation
      
          property :db_system_options, as: 'dbSystemOptions', class: Google::Apis::OracledatabaseV1::DbSystemOptions, decorator: Google::Apis::OracledatabaseV1::DbSystemOptions::Representation
      
          property :domain, as: 'domain'
          property :hostname, as: 'hostname'
          property :hostname_prefix, as: 'hostnamePrefix'
          property :initial_data_storage_size_gb, as: 'initialDataStorageSizeGb'
          property :license_model, as: 'licenseModel'
          property :lifecycle_state, as: 'lifecycleState'
          property :memory_size_gb, as: 'memorySizeGb'
          property :node_count, as: 'nodeCount'
          property :ocid, as: 'ocid'
          property :private_ip, as: 'privateIp'
          property :reco_storage_size_gb, as: 'recoStorageSizeGb'
          property :shape, as: 'shape'
          collection :ssh_public_keys, as: 'sshPublicKeys'
          property :time_zone, as: 'timeZone', class: Google::Apis::OracledatabaseV1::TimeZone, decorator: Google::Apis::OracledatabaseV1::TimeZone::Representation
      
        end
      end
      
      class DbSystemShape
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :available_core_count_per_node, as: 'availableCoreCountPerNode'
          property :available_data_storage_tb, as: 'availableDataStorageTb'
          property :available_memory_per_node_gb, as: 'availableMemoryPerNodeGb'
          property :max_node_count, as: 'maxNodeCount'
          property :max_storage_count, as: 'maxStorageCount'
          property :min_core_count_per_node, as: 'minCoreCountPerNode'
          property :min_db_node_storage_per_node_gb, as: 'minDbNodeStoragePerNodeGb'
          property :min_memory_per_node_gb, as: 'minMemoryPerNodeGb'
          property :min_node_count, as: 'minNodeCount'
          property :min_storage_count, as: 'minStorageCount'
          property :name, as: 'name'
          property :shape, as: 'shape'
        end
      end
      
      class DbVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :properties, as: 'properties', class: Google::Apis::OracledatabaseV1::DbVersionProperties, decorator: Google::Apis::OracledatabaseV1::DbVersionProperties::Representation
      
        end
      end
      
      class DbVersionProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_latest_for_major_version, as: 'isLatestForMajorVersion'
          property :is_preview_db_version, as: 'isPreviewDbVersion'
          property :is_upgrade_supported, as: 'isUpgradeSupported'
          property :supports_pdb, as: 'supportsPdb'
          property :version, as: 'version'
        end
      end
      
      class DefinedTagValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :tags, as: 'tags'
        end
      end
      
      class DeploymentDiagnosticData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket, as: 'bucket'
          property :diagnostic_end_time, as: 'diagnosticEndTime'
          property :diagnostic_start_time, as: 'diagnosticStartTime'
          property :diagnostic_state, as: 'diagnosticState'
          property :namespace, as: 'namespace'
          property :object, as: 'object'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class EncryptionKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_key, as: 'kmsKey'
          property :provider, as: 'provider'
        end
      end
      
      class EncryptionKeyHistoryEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :activation_time, as: 'activationTime'
          property :encryption_key, as: 'encryptionKey', class: Google::Apis::OracledatabaseV1::EncryptionKey, decorator: Google::Apis::OracledatabaseV1::EncryptionKey::Representation
      
        end
      end
      
      class Entitlement
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_account_details, as: 'cloudAccountDetails', class: Google::Apis::OracledatabaseV1::CloudAccountDetails, decorator: Google::Apis::OracledatabaseV1::CloudAccountDetails::Representation
      
          property :entitlement_id, as: 'entitlementId'
          property :name, as: 'name'
          property :state, as: 'state'
        end
      end
      
      class ExadbVmCluster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_odb_subnet, as: 'backupOdbSubnet'
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :entitlement_id, as: 'entitlementId'
          property :gcp_oracle_zone, as: 'gcpOracleZone'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :odb_network, as: 'odbNetwork'
          property :odb_subnet, as: 'odbSubnet'
          property :properties, as: 'properties', class: Google::Apis::OracledatabaseV1::ExadbVmClusterProperties, decorator: Google::Apis::OracledatabaseV1::ExadbVmClusterProperties::Representation
      
        end
      end
      
      class ExadbVmClusterProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :additional_ecpu_count_per_node, as: 'additionalEcpuCountPerNode'
          property :cluster_name, as: 'clusterName'
          property :data_collection_options, as: 'dataCollectionOptions', class: Google::Apis::OracledatabaseV1::DataCollectionOptionsCommon, decorator: Google::Apis::OracledatabaseV1::DataCollectionOptionsCommon::Representation
      
          property :enabled_ecpu_count_per_node, as: 'enabledEcpuCountPerNode'
          property :exascale_db_storage_vault, as: 'exascaleDbStorageVault'
          property :gi_version, as: 'giVersion'
          property :grid_image_id, as: 'gridImageId'
          property :hostname, as: 'hostname'
          property :hostname_prefix, as: 'hostnamePrefix'
          property :license_model, as: 'licenseModel'
          property :lifecycle_state, as: 'lifecycleState'
          property :memory_size_gb, as: 'memorySizeGb'
          property :node_count, as: 'nodeCount'
          property :oci_uri, as: 'ociUri'
          property :scan_listener_port_tcp, as: 'scanListenerPortTcp'
          property :shape_attribute, as: 'shapeAttribute'
          collection :ssh_public_keys, as: 'sshPublicKeys'
          property :time_zone, as: 'timeZone', class: Google::Apis::OracledatabaseV1::TimeZone, decorator: Google::Apis::OracledatabaseV1::TimeZone::Representation
      
          property :vm_file_system_storage, as: 'vmFileSystemStorage', class: Google::Apis::OracledatabaseV1::ExadbVmClusterStorageDetails, decorator: Google::Apis::OracledatabaseV1::ExadbVmClusterStorageDetails::Representation
      
        end
      end
      
      class ExadbVmClusterStorageDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :size_in_gbs_per_node, as: 'sizeInGbsPerNode'
        end
      end
      
      class ExascaleConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :available_storage_size_gb, as: 'availableStorageSizeGb'
          property :total_storage_size_gb, as: 'totalStorageSizeGb'
        end
      end
      
      class ExascaleDbStorageDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :available_size_gbs, as: 'availableSizeGbs'
          property :total_size_gbs, as: 'totalSizeGbs'
        end
      end
      
      class ExascaleDbStorageVault
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :entitlement_id, as: 'entitlementId'
          property :exadata_infrastructure, as: 'exadataInfrastructure'
          property :gcp_oracle_zone, as: 'gcpOracleZone'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :properties, as: 'properties', class: Google::Apis::OracledatabaseV1::ExascaleDbStorageVaultProperties, decorator: Google::Apis::OracledatabaseV1::ExascaleDbStorageVaultProperties::Representation
      
        end
      end
      
      class ExascaleDbStorageVaultProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :additional_flash_cache_percent, as: 'additionalFlashCachePercent'
          collection :attached_shape_attributes, as: 'attachedShapeAttributes'
          collection :available_shape_attributes, as: 'availableShapeAttributes'
          property :description, as: 'description'
          property :exascale_db_storage_details, as: 'exascaleDbStorageDetails', class: Google::Apis::OracledatabaseV1::ExascaleDbStorageDetails, decorator: Google::Apis::OracledatabaseV1::ExascaleDbStorageDetails::Representation
      
          property :oci_uri, as: 'ociUri'
          property :ocid, as: 'ocid'
          property :state, as: 'state'
          property :time_zone, as: 'timeZone', class: Google::Apis::OracledatabaseV1::TimeZone, decorator: Google::Apis::OracledatabaseV1::TimeZone::Representation
      
          property :vm_cluster_count, as: 'vmClusterCount'
          collection :vm_cluster_ids, as: 'vmClusterIds'
        end
      end
      
      class FailoverAutonomousDatabaseRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :peer_autonomous_database, as: 'peerAutonomousDatabase'
        end
      end
      
      class GenerateAutonomousDatabaseWalletRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_regional, as: 'isRegional'
          property :password, as: 'password'
          property :type, as: 'type'
        end
      end
      
      class GenerateAutonomousDatabaseWalletResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :archive_content, :base64 => true, as: 'archiveContent'
        end
      end
      
      class GiVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :version, as: 'version'
        end
      end
      
      class GlueIcebergCatalog
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :glue_id, as: 'glueId'
        end
      end
      
      class GoldengateAmazonKinesisConnectionProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_key_id, as: 'accessKeyId'
          property :aws_region, as: 'awsRegion'
          property :endpoint, as: 'endpoint'
          property :secret_access_key_secret, as: 'secretAccessKeySecret'
          property :technology_type, as: 'technologyType'
        end
      end
      
      class GoldengateAmazonRedshiftConnectionProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connection_url, as: 'connectionUrl'
          property :password, as: 'password'
          property :password_secret_version, as: 'passwordSecretVersion'
          property :technology_type, as: 'technologyType'
          property :username, as: 'username'
        end
      end
      
      class GoldengateAmazonS3ConnectionProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_key_id, as: 'accessKeyId'
          property :endpoint, as: 'endpoint'
          property :region, as: 'region'
          property :secret_access_key_secret, as: 'secretAccessKeySecret'
          property :technology_type, as: 'technologyType'
        end
      end
      
      class GoldengateAzureDataLakeStorageConnectionProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account, as: 'account'
          property :account_key_secret, as: 'accountKeySecret'
          property :authentication_type, as: 'authenticationType'
          property :azure_authority_host, as: 'azureAuthorityHost'
          property :azure_tenant_id, as: 'azureTenantId'
          property :client_id, as: 'clientId'
          property :client_secret, as: 'clientSecret'
          property :endpoint, as: 'endpoint'
          property :sas_token_secret, as: 'sasTokenSecret'
          property :technology_type, as: 'technologyType'
        end
      end
      
      class GoldengateAzureSynapseAnalyticsConnectionProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connection_string, as: 'connectionString'
          property :password, as: 'password'
          property :password_secret_version, as: 'passwordSecretVersion'
          property :technology_type, as: 'technologyType'
          property :username, as: 'username'
        end
      end
      
      class GoldengateBackupSchedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_scheduled_time, as: 'backupScheduledTime'
          property :bucket, as: 'bucket'
          property :compartment_id, as: 'compartmentId'
          property :frequency_backup_scheduled, as: 'frequencyBackupScheduled'
          property :metadata_only, as: 'metadataOnly'
          property :namespace, as: 'namespace'
        end
      end
      
      class GoldengateConnection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :entitlement_id, as: 'entitlementId'
          property :gcp_oracle_zone, as: 'gcpOracleZone'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :oci_url, as: 'ociUrl'
          property :odb_network, as: 'odbNetwork'
          property :odb_subnet, as: 'odbSubnet'
          property :properties, as: 'properties', class: Google::Apis::OracledatabaseV1::GoldengateConnectionProperties, decorator: Google::Apis::OracledatabaseV1::GoldengateConnectionProperties::Representation
      
        end
      end
      
      class GoldengateConnectionAssignment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :entitlement_id, as: 'entitlementId'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :properties, as: 'properties', class: Google::Apis::OracledatabaseV1::GoldengateConnectionAssignmentProperties, decorator: Google::Apis::OracledatabaseV1::GoldengateConnectionAssignmentProperties::Representation
      
        end
      end
      
      class GoldengateConnectionAssignmentProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alias, as: 'alias'
          property :goldengate_connection, as: 'goldengateConnection'
          property :goldengate_deployment, as: 'goldengateDeployment'
          property :ocid, as: 'ocid'
          property :state, as: 'state'
        end
      end
      
      class GoldengateConnectionProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :amazon_kinesis_connection_properties, as: 'amazonKinesisConnectionProperties', class: Google::Apis::OracledatabaseV1::GoldengateAmazonKinesisConnectionProperties, decorator: Google::Apis::OracledatabaseV1::GoldengateAmazonKinesisConnectionProperties::Representation
      
          property :amazon_redshift_connection_properties, as: 'amazonRedshiftConnectionProperties', class: Google::Apis::OracledatabaseV1::GoldengateAmazonRedshiftConnectionProperties, decorator: Google::Apis::OracledatabaseV1::GoldengateAmazonRedshiftConnectionProperties::Representation
      
          property :amazon_s3_connection_properties, as: 'amazonS3ConnectionProperties', class: Google::Apis::OracledatabaseV1::GoldengateAmazonS3ConnectionProperties, decorator: Google::Apis::OracledatabaseV1::GoldengateAmazonS3ConnectionProperties::Representation
      
          property :azure_data_lake_storage_connection_properties, as: 'azureDataLakeStorageConnectionProperties', class: Google::Apis::OracledatabaseV1::GoldengateAzureDataLakeStorageConnectionProperties, decorator: Google::Apis::OracledatabaseV1::GoldengateAzureDataLakeStorageConnectionProperties::Representation
      
          property :azure_synapse_analytics_connection_properties, as: 'azureSynapseAnalyticsConnectionProperties', class: Google::Apis::OracledatabaseV1::GoldengateAzureSynapseAnalyticsConnectionProperties, decorator: Google::Apis::OracledatabaseV1::GoldengateAzureSynapseAnalyticsConnectionProperties::Representation
      
          property :connection_type, as: 'connectionType'
          property :databricks_connection_properties, as: 'databricksConnectionProperties', class: Google::Apis::OracledatabaseV1::GoldengateDatabricksConnectionProperties, decorator: Google::Apis::OracledatabaseV1::GoldengateDatabricksConnectionProperties::Representation
      
          property :db2_connection_properties, as: 'db2ConnectionProperties', class: Google::Apis::OracledatabaseV1::GoldengateDb2ConnectionProperties, decorator: Google::Apis::OracledatabaseV1::GoldengateDb2ConnectionProperties::Representation
      
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :elasticsearch_connection_properties, as: 'elasticsearchConnectionProperties', class: Google::Apis::OracledatabaseV1::GoldengateElasticsearchConnectionProperties, decorator: Google::Apis::OracledatabaseV1::GoldengateElasticsearchConnectionProperties::Representation
      
          property :generic_connection_properties, as: 'genericConnectionProperties', class: Google::Apis::OracledatabaseV1::GoldengateGenericConnectionProperties, decorator: Google::Apis::OracledatabaseV1::GoldengateGenericConnectionProperties::Representation
      
          property :goldengate_connection_properties, as: 'goldengateConnectionProperties', class: Google::Apis::OracledatabaseV1::GoldengateGoldengateConnectionProperties, decorator: Google::Apis::OracledatabaseV1::GoldengateGoldengateConnectionProperties::Representation
      
          property :google_big_query_connection_properties, as: 'googleBigQueryConnectionProperties', class: Google::Apis::OracledatabaseV1::GoldengateGoogleBigQueryConnectionProperties, decorator: Google::Apis::OracledatabaseV1::GoldengateGoogleBigQueryConnectionProperties::Representation
      
          property :google_cloud_storage_connection_properties, as: 'googleCloudStorageConnectionProperties', class: Google::Apis::OracledatabaseV1::GoldengateGoogleCloudStorageConnectionProperties, decorator: Google::Apis::OracledatabaseV1::GoldengateGoogleCloudStorageConnectionProperties::Representation
      
          property :google_pubsub_connection_properties, as: 'googlePubsubConnectionProperties', class: Google::Apis::OracledatabaseV1::GoldengateGooglePubsubConnectionProperties, decorator: Google::Apis::OracledatabaseV1::GoldengateGooglePubsubConnectionProperties::Representation
      
          property :hdfs_connection_properties, as: 'hdfsConnectionProperties', class: Google::Apis::OracledatabaseV1::GoldengateHdfsConnectionProperties, decorator: Google::Apis::OracledatabaseV1::GoldengateHdfsConnectionProperties::Representation
      
          property :iceberg_connection_properties, as: 'icebergConnectionProperties', class: Google::Apis::OracledatabaseV1::GoldengateIcebergConnectionProperties, decorator: Google::Apis::OracledatabaseV1::GoldengateIcebergConnectionProperties::Representation
      
          collection :ingress_ip_addresses, as: 'ingressIpAddresses'
          property :java_message_service_connection_properties, as: 'javaMessageServiceConnectionProperties', class: Google::Apis::OracledatabaseV1::GoldengateJavaMessageServiceConnectionProperties, decorator: Google::Apis::OracledatabaseV1::GoldengateJavaMessageServiceConnectionProperties::Representation
      
          property :kafka_connection_properties, as: 'kafkaConnectionProperties', class: Google::Apis::OracledatabaseV1::GoldengateKafkaConnectionProperties, decorator: Google::Apis::OracledatabaseV1::GoldengateKafkaConnectionProperties::Representation
      
          property :kafka_schema_registry_connection_properties, as: 'kafkaSchemaRegistryConnectionProperties', class: Google::Apis::OracledatabaseV1::GoldengateKafkaSchemaRegistryConnectionProperties, decorator: Google::Apis::OracledatabaseV1::GoldengateKafkaSchemaRegistryConnectionProperties::Representation
      
          property :lifecycle_details, as: 'lifecycleDetails'
          property :lifecycle_state, as: 'lifecycleState'
          property :microsoft_fabric_connection_properties, as: 'microsoftFabricConnectionProperties', class: Google::Apis::OracledatabaseV1::GoldengateMicrosoftFabricConnectionProperties, decorator: Google::Apis::OracledatabaseV1::GoldengateMicrosoftFabricConnectionProperties::Representation
      
          property :microsoft_sqlserver_connection_properties, as: 'microsoftSqlserverConnectionProperties', class: Google::Apis::OracledatabaseV1::GoldengateMicrosoftSqlserverConnectionProperties, decorator: Google::Apis::OracledatabaseV1::GoldengateMicrosoftSqlserverConnectionProperties::Representation
      
          property :mongodb_connection_properties, as: 'mongodbConnectionProperties', class: Google::Apis::OracledatabaseV1::GoldengateMongodbConnectionProperties, decorator: Google::Apis::OracledatabaseV1::GoldengateMongodbConnectionProperties::Representation
      
          property :mysql_connection_properties, as: 'mysqlConnectionProperties', class: Google::Apis::OracledatabaseV1::GoldengateMysqlConnectionProperties, decorator: Google::Apis::OracledatabaseV1::GoldengateMysqlConnectionProperties::Representation
      
          property :oci_object_storage_connection_properties, as: 'ociObjectStorageConnectionProperties', class: Google::Apis::OracledatabaseV1::GoldengateOciObjectStorageConnectionProperties, decorator: Google::Apis::OracledatabaseV1::GoldengateOciObjectStorageConnectionProperties::Representation
      
          property :ocid, as: 'ocid'
          property :oracle_ai_data_platform_connection_properties, as: 'oracleAiDataPlatformConnectionProperties', class: Google::Apis::OracledatabaseV1::GoldengateOracleAiDataPlatformConnectionProperties, decorator: Google::Apis::OracledatabaseV1::GoldengateOracleAiDataPlatformConnectionProperties::Representation
      
          property :oracle_connection_properties, as: 'oracleConnectionProperties', class: Google::Apis::OracledatabaseV1::GoldengateOracleConnectionProperties, decorator: Google::Apis::OracledatabaseV1::GoldengateOracleConnectionProperties::Representation
      
          property :oracle_nosql_connection_properties, as: 'oracleNosqlConnectionProperties', class: Google::Apis::OracledatabaseV1::GoldengateOracleNosqlConnectionProperties, decorator: Google::Apis::OracledatabaseV1::GoldengateOracleNosqlConnectionProperties::Representation
      
          property :postgresql_connection_properties, as: 'postgresqlConnectionProperties', class: Google::Apis::OracledatabaseV1::GoldengatePostgresqlConnectionProperties, decorator: Google::Apis::OracledatabaseV1::GoldengatePostgresqlConnectionProperties::Representation
      
          property :redis_connection_properties, as: 'redisConnectionProperties', class: Google::Apis::OracledatabaseV1::GoldengateRedisConnectionProperties, decorator: Google::Apis::OracledatabaseV1::GoldengateRedisConnectionProperties::Representation
      
          property :routing_method, as: 'routingMethod'
          property :snowflake_connection_properties, as: 'snowflakeConnectionProperties', class: Google::Apis::OracledatabaseV1::GoldengateSnowflakeConnectionProperties, decorator: Google::Apis::OracledatabaseV1::GoldengateSnowflakeConnectionProperties::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoldengateConnectionType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connection_type, as: 'connectionType'
          property :name, as: 'name'
          collection :technology_types, as: 'technologyTypes'
        end
      end
      
      class GoldengateDatabricksConnectionProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authentication_type, as: 'authenticationType'
          property :client_id, as: 'clientId'
          property :client_secret, as: 'clientSecret'
          property :connection_url, as: 'connectionUrl'
          property :password, as: 'password'
          property :password_secret_version, as: 'passwordSecretVersion'
          property :storage_credential, as: 'storageCredential'
          property :technology_type, as: 'technologyType'
        end
      end
      
      class GoldengateDb2ConnectionProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_attributes, as: 'additionalAttributes', class: Google::Apis::OracledatabaseV1::NameValuePair, decorator: Google::Apis::OracledatabaseV1::NameValuePair::Representation
      
          property :database, as: 'database'
          property :host, as: 'host'
          property :password, as: 'password'
          property :password_secret_version, as: 'passwordSecretVersion'
          property :port, as: 'port'
          property :security_protocol, as: 'securityProtocol'
          property :ssl_client_keystash_file, as: 'sslClientKeystashFile'
          property :ssl_client_keystoredb_file, as: 'sslClientKeystoredbFile'
          property :ssl_server_certificate_file, as: 'sslServerCertificateFile'
          property :technology_type, as: 'technologyType'
          property :username, as: 'username'
        end
      end
      
      class GoldengateDeployment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :entitlement_id, as: 'entitlementId'
          property :gcp_oracle_zone, as: 'gcpOracleZone'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :oci_url, as: 'ociUrl'
          property :odb_network, as: 'odbNetwork'
          property :odb_subnet, as: 'odbSubnet'
          property :properties, as: 'properties', class: Google::Apis::OracledatabaseV1::GoldengateDeploymentProperties, decorator: Google::Apis::OracledatabaseV1::GoldengateDeploymentProperties::Representation
      
        end
      end
      
      class GoldengateDeploymentEnvironment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_scaling_enabled, as: 'autoScalingEnabled'
          property :category, as: 'category'
          property :default_cpu_core_count, as: 'defaultCpuCoreCount'
          property :display_name, as: 'displayName'
          property :environment_type, as: 'environmentType'
          property :max_cpu_core_count, as: 'maxCpuCoreCount'
          property :memory_gb_per_cpu_core, as: 'memoryGbPerCpuCore'
          property :min_cpu_core_count, as: 'minCpuCoreCount'
          property :name, as: 'name'
          property :network_bandwidth_gbps_per_cpu_core, as: 'networkBandwidthGbpsPerCpuCore'
          property :storage_usage_limit_gb_per_cpu_core, as: 'storageUsageLimitGbPerCpuCore'
        end
      end
      
      class GoldengateDeploymentLock
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compartment_id, as: 'compartmentId'
          property :create_time, as: 'createTime'
          property :message, as: 'message'
          property :related_resource_id, as: 'relatedResourceId'
          property :type, as: 'type'
        end
      end
      
      class GoldengateDeploymentProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_schedule, as: 'backupSchedule', class: Google::Apis::OracledatabaseV1::GoldengateBackupSchedule, decorator: Google::Apis::OracledatabaseV1::GoldengateBackupSchedule::Representation
      
          property :category, as: 'category'
          property :cpu_core_count, as: 'cpuCoreCount'
          property :deployment_backup_id, as: 'deploymentBackupId'
          property :deployment_diagnostic_data, as: 'deploymentDiagnosticData', class: Google::Apis::OracledatabaseV1::DeploymentDiagnosticData, decorator: Google::Apis::OracledatabaseV1::DeploymentDiagnosticData::Representation
      
          property :deployment_role, as: 'deploymentRole'
          property :deployment_type, as: 'deploymentType'
          property :deployment_url, as: 'deploymentUrl'
          property :description, as: 'description'
          property :environment_type, as: 'environmentType'
          property :fqdn, as: 'fqdn'
          property :healthy, as: 'healthy'
          collection :ingress_ips, as: 'ingressIps', class: Google::Apis::OracledatabaseV1::IngressIp, decorator: Google::Apis::OracledatabaseV1::IngressIp::Representation
      
          property :is_auto_scaling_enabled, as: 'isAutoScalingEnabled'
          property :is_latest_version, as: 'isLatestVersion'
          property :is_public, as: 'isPublic'
          property :is_storage_utilization_limit_exceeded, as: 'isStorageUtilizationLimitExceeded'
          property :last_backup_schedule_time, as: 'lastBackupScheduleTime'
          property :license_model, as: 'licenseModel'
          property :lifecycle_details, as: 'lifecycleDetails'
          property :lifecycle_state, as: 'lifecycleState'
          property :lifecycle_sub_state, as: 'lifecycleSubState'
          property :load_balancer_id, as: 'loadBalancerId'
          property :load_balancer_subnet_id, as: 'loadBalancerSubnetId'
          collection :locks, as: 'locks', class: Google::Apis::OracledatabaseV1::GoldengateDeploymentLock, decorator: Google::Apis::OracledatabaseV1::GoldengateDeploymentLock::Representation
      
          property :maintenance_config, as: 'maintenanceConfig', class: Google::Apis::OracledatabaseV1::GoldengateMaintenanceConfig, decorator: Google::Apis::OracledatabaseV1::GoldengateMaintenanceConfig::Representation
      
          property :maintenance_window, as: 'maintenanceWindow', class: Google::Apis::OracledatabaseV1::GoldengateMaintenanceWindow, decorator: Google::Apis::OracledatabaseV1::GoldengateMaintenanceWindow::Representation
      
          property :next_backup_schedule_time, as: 'nextBackupScheduleTime'
          property :next_maintenance_action_type, as: 'nextMaintenanceActionType'
          property :next_maintenance_description, as: 'nextMaintenanceDescription'
          property :next_maintenance_time, as: 'nextMaintenanceTime'
          collection :nsg_ids, as: 'nsgIds'
          property :ocid, as: 'ocid'
          property :ogg_data, as: 'oggData', class: Google::Apis::OracledatabaseV1::GoldengateOggDeployment, decorator: Google::Apis::OracledatabaseV1::GoldengateOggDeployment::Representation
      
          property :ogg_version_support_end_time, as: 'oggVersionSupportEndTime'
          collection :placements, as: 'placements', class: Google::Apis::OracledatabaseV1::GoldengatePlacement, decorator: Google::Apis::OracledatabaseV1::GoldengatePlacement::Representation
      
          property :private_ip_address, as: 'privateIpAddress'
          property :public_ip_address, as: 'publicIpAddress'
          property :role_change_time, as: 'roleChangeTime'
          property :storage_utilization_bytes, :numeric_string => true, as: 'storageUtilizationBytes'
          property :update_time, as: 'updateTime'
          property :upgrade_required_time, as: 'upgradeRequiredTime'
        end
      end
      
      class GoldengateDeploymentType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :category, as: 'category'
          collection :connection_types, as: 'connectionTypes'
          property :default_username, as: 'defaultUsername'
          property :deployment_type, as: 'deploymentType'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :ogg_version, as: 'oggVersion'
          collection :source_technologies, as: 'sourceTechnologies'
          collection :supported_capabilities, as: 'supportedCapabilities'
          property :supported_technologies_url, as: 'supportedTechnologiesUrl'
          collection :target_technologies, as: 'targetTechnologies'
        end
      end
      
      class GoldengateDeploymentVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :ocid, as: 'ocid'
          property :properties, as: 'properties', class: Google::Apis::OracledatabaseV1::GoldengateDeploymentVersionProperties, decorator: Google::Apis::OracledatabaseV1::GoldengateDeploymentVersionProperties::Representation
      
        end
      end
      
      class GoldengateDeploymentVersionProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deployment_type, as: 'deploymentType'
          property :ogg_version, as: 'oggVersion'
          property :release_time, as: 'releaseTime'
          property :release_type, as: 'releaseType'
          property :security_fix, as: 'securityFix'
          property :support_end_time, as: 'supportEndTime'
        end
      end
      
      class GoldengateElasticsearchConnectionProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authentication_type, as: 'authenticationType'
          property :fingerprint, as: 'fingerprint'
          property :password, as: 'password'
          property :password_secret_version, as: 'passwordSecretVersion'
          property :security_protocol, as: 'securityProtocol'
          property :servers, as: 'servers'
          property :technology_type, as: 'technologyType'
          property :username, as: 'username'
        end
      end
      
      class GoldengateGenericConnectionProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :host, as: 'host'
          property :technology_type, as: 'technologyType'
        end
      end
      
      class GoldengateGoldengateConnectionProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :goldengate_deployment_id, as: 'goldengateDeploymentId'
          property :host, as: 'host'
          property :password, as: 'password'
          property :password_secret_version, as: 'passwordSecretVersion'
          property :port, as: 'port'
          property :technology_type, as: 'technologyType'
          property :username, as: 'username'
        end
      end
      
      class GoldengateGoogleBigQueryConnectionProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service_account_key_file, as: 'serviceAccountKeyFile'
          property :technology_type, as: 'technologyType'
        end
      end
      
      class GoldengateGoogleCloudStorageConnectionProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service_account_key_file, as: 'serviceAccountKeyFile'
          property :technology_type, as: 'technologyType'
        end
      end
      
      class GoldengateGooglePubsubConnectionProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service_account_key_file, as: 'serviceAccountKeyFile'
          property :technology_type, as: 'technologyType'
        end
      end
      
      class GoldengateGroupToRolesMapping
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :administrator_group_id, as: 'administratorGroupId'
          property :operator_group_id, as: 'operatorGroupId'
          property :security_group_id, as: 'securityGroupId'
          property :user_group_id, as: 'userGroupId'
        end
      end
      
      class GoldengateHdfsConnectionProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :core_site_xml, as: 'coreSiteXml'
          property :technology_type, as: 'technologyType'
        end
      end
      
      class GoldengateIcebergConnectionProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :catalog, as: 'catalog', class: Google::Apis::OracledatabaseV1::IcebergCatalog, decorator: Google::Apis::OracledatabaseV1::IcebergCatalog::Representation
      
          property :storage, as: 'storage', class: Google::Apis::OracledatabaseV1::IcebergStorage, decorator: Google::Apis::OracledatabaseV1::IcebergStorage::Representation
      
          property :technology_type, as: 'technologyType'
        end
      end
      
      class GoldengateJavaMessageServiceConnectionProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authentication_type, as: 'authenticationType'
          property :connection_factory, as: 'connectionFactory'
          property :connection_url, as: 'connectionUrl'
          property :jndi_connection_factory, as: 'jndiConnectionFactory'
          property :jndi_initial_context_factory, as: 'jndiInitialContextFactory'
          property :jndi_provider_url, as: 'jndiProviderUrl'
          property :jndi_security_credentials_secret, as: 'jndiSecurityCredentialsSecret'
          property :jndi_security_principal, as: 'jndiSecurityPrincipal'
          property :key_store_file, as: 'keyStoreFile'
          property :key_store_password, as: 'keyStorePassword'
          property :key_store_password_secret_version, as: 'keyStorePasswordSecretVersion'
          property :password, as: 'password'
          property :password_secret_version, as: 'passwordSecretVersion'
          property :security_protocol, as: 'securityProtocol'
          property :ssl_key_password, as: 'sslKeyPassword'
          property :ssl_key_password_secret_version, as: 'sslKeyPasswordSecretVersion'
          property :technology_type, as: 'technologyType'
          property :trust_store_file, as: 'trustStoreFile'
          property :trust_store_password, as: 'trustStorePassword'
          property :trust_store_password_secret_version, as: 'trustStorePasswordSecretVersion'
          property :use_jndi, as: 'useJndi'
          property :username, as: 'username'
        end
      end
      
      class GoldengateKafkaConnectionProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bootstrap_servers, as: 'bootstrapServers', class: Google::Apis::OracledatabaseV1::KafkaBootstrapServer, decorator: Google::Apis::OracledatabaseV1::KafkaBootstrapServer::Representation
      
          property :cluster_id, as: 'clusterId'
          property :consumer_properties_file, as: 'consumerPropertiesFile'
          property :key_store_file, as: 'keyStoreFile'
          property :key_store_password, as: 'keyStorePassword'
          property :key_store_password_secret_version, as: 'keyStorePasswordSecretVersion'
          property :password, as: 'password'
          property :password_secret_version, as: 'passwordSecretVersion'
          property :producer_properties_file, as: 'producerPropertiesFile'
          property :security_protocol, as: 'securityProtocol'
          property :ssl_key_password, as: 'sslKeyPassword'
          property :ssl_key_password_secret_version, as: 'sslKeyPasswordSecretVersion'
          property :stream_pool_id, as: 'streamPoolId'
          property :technology_type, as: 'technologyType'
          property :trust_store_file, as: 'trustStoreFile'
          property :trust_store_password, as: 'trustStorePassword'
          property :trust_store_password_secret_version, as: 'trustStorePasswordSecretVersion'
          property :use_resource_principal, as: 'useResourcePrincipal'
          property :username, as: 'username'
        end
      end
      
      class GoldengateKafkaSchemaRegistryConnectionProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authentication_type, as: 'authenticationType'
          property :key_store_file, as: 'keyStoreFile'
          property :key_store_password, as: 'keyStorePassword'
          property :key_store_password_secret_version, as: 'keyStorePasswordSecretVersion'
          property :password, as: 'password'
          property :password_secret_version, as: 'passwordSecretVersion'
          property :ssl_key_password, as: 'sslKeyPassword'
          property :ssl_key_password_secret_version, as: 'sslKeyPasswordSecretVersion'
          property :technology_type, as: 'technologyType'
          property :trust_store_file, as: 'trustStoreFile'
          property :trust_store_password, as: 'trustStorePassword'
          property :trust_store_password_secret_version, as: 'trustStorePasswordSecretVersion'
          property :url, as: 'url'
          property :username, as: 'username'
        end
      end
      
      class GoldengateMaintenanceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bundle_release_upgrade_period_days, as: 'bundleReleaseUpgradePeriodDays'
          property :interim_release_upgrade_period_days, as: 'interimReleaseUpgradePeriodDays'
          property :is_interim_release_auto_upgrade_enabled, as: 'isInterimReleaseAutoUpgradeEnabled'
          property :major_release_upgrade_period_days, as: 'majorReleaseUpgradePeriodDays'
          property :security_patch_upgrade_period_days, as: 'securityPatchUpgradePeriodDays'
        end
      end
      
      class GoldengateMaintenanceWindow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :start_hour, as: 'startHour'
        end
      end
      
      class GoldengateMicrosoftFabricConnectionProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_id, as: 'clientId'
          property :client_secret, as: 'clientSecret'
          property :endpoint, as: 'endpoint'
          property :technology_type, as: 'technologyType'
          property :tenant_id, as: 'tenantId'
        end
      end
      
      class GoldengateMicrosoftSqlserverConnectionProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_attributes, as: 'additionalAttributes', class: Google::Apis::OracledatabaseV1::NameValuePair, decorator: Google::Apis::OracledatabaseV1::NameValuePair::Representation
      
          property :database, as: 'database'
          property :host, as: 'host'
          property :password, as: 'password'
          property :password_secret_version, as: 'passwordSecretVersion'
          property :port, as: 'port'
          property :security_protocol, as: 'securityProtocol'
          property :server_certificate_validation_required, as: 'serverCertificateValidationRequired'
          property :ssl_ca_file, as: 'sslCaFile'
          property :technology_type, as: 'technologyType'
          property :username, as: 'username'
        end
      end
      
      class GoldengateMongodbConnectionProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connection_string, as: 'connectionString'
          property :database_id, as: 'databaseId'
          property :password, as: 'password'
          property :password_secret_version, as: 'passwordSecretVersion'
          property :security_protocol, as: 'securityProtocol'
          property :technology_type, as: 'technologyType'
          property :tls_ca_file, as: 'tlsCaFile'
          property :tls_certificate_key_file, as: 'tlsCertificateKeyFile'
          property :tls_certificate_key_file_password, as: 'tlsCertificateKeyFilePassword'
          property :tls_certificate_key_file_password_secret_version, as: 'tlsCertificateKeyFilePasswordSecretVersion'
          property :username, as: 'username'
        end
      end
      
      class GoldengateMysqlConnectionProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_attributes, as: 'additionalAttributes', class: Google::Apis::OracledatabaseV1::NameValuePair, decorator: Google::Apis::OracledatabaseV1::NameValuePair::Representation
      
          property :database, as: 'database'
          property :db_system_id, as: 'dbSystemId'
          property :host, as: 'host'
          property :password, as: 'password'
          property :password_secret_version, as: 'passwordSecretVersion'
          property :port, as: 'port'
          property :security_protocol, as: 'securityProtocol'
          property :ssl_ca_file, as: 'sslCaFile'
          property :ssl_cert_file, as: 'sslCertFile'
          property :ssl_crl_file, as: 'sslCrlFile'
          property :ssl_key_file, as: 'sslKeyFile'
          property :ssl_mode, as: 'sslMode'
          property :technology_type, as: 'technologyType'
          property :username, as: 'username'
        end
      end
      
      class GoldengateOciObjectStorageConnectionProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :private_key_file, as: 'privateKeyFile'
          property :private_key_passphrase_secret, as: 'privateKeyPassphraseSecret'
          property :public_key_fingerprint, as: 'publicKeyFingerprint'
          property :region, as: 'region'
          property :technology_type, as: 'technologyType'
          property :tenancy_id, as: 'tenancyId'
          property :use_resource_principal, as: 'useResourcePrincipal'
          property :user_id, as: 'userId'
        end
      end
      
      class GoldengateOggDeployment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :admin_password, as: 'adminPassword'
          property :admin_password_secret_version, as: 'adminPasswordSecretVersion'
          property :admin_username, as: 'adminUsername'
          property :certificate, as: 'certificate'
          property :credential_store, as: 'credentialStore'
          property :deployment, as: 'deployment'
          property :group_roles_mapping, as: 'groupRolesMapping', class: Google::Apis::OracledatabaseV1::GoldengateGroupToRolesMapping, decorator: Google::Apis::OracledatabaseV1::GoldengateGroupToRolesMapping::Representation
      
          property :identity_domain_id, as: 'identityDomainId'
          property :ogg_version, as: 'oggVersion'
          property :password_secret_id, as: 'passwordSecretId'
        end
      end
      
      class GoldengateOracleAiDataPlatformConnectionProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connection_url, as: 'connectionUrl'
          property :private_key_file, as: 'privateKeyFile'
          property :private_key_passphrase_secret, as: 'privateKeyPassphraseSecret'
          property :public_key_fingerprint, as: 'publicKeyFingerprint'
          property :region, as: 'region'
          property :technology_type, as: 'technologyType'
          property :tenancy_id, as: 'tenancyId'
          property :use_resource_principal, as: 'useResourcePrincipal'
          property :user_id, as: 'userId'
        end
      end
      
      class GoldengateOracleConnectionProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authentication_mode, as: 'authenticationMode'
          property :connection_string, as: 'connectionString'
          property :gcp_oracle_database_id, as: 'gcpOracleDatabaseId'
          property :password, as: 'password'
          property :password_secret_version, as: 'passwordSecretVersion'
          property :session_mode, as: 'sessionMode'
          property :technology_type, as: 'technologyType'
          property :username, as: 'username'
          property :wallet_file, as: 'walletFile'
        end
      end
      
      class GoldengateOracleNosqlConnectionProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :private_key_file, as: 'privateKeyFile'
          property :private_key_passphrase_secret, as: 'privateKeyPassphraseSecret'
          property :public_key_fingerprint, as: 'publicKeyFingerprint'
          property :region, as: 'region'
          property :technology_type, as: 'technologyType'
          property :tenancy_id, as: 'tenancyId'
          property :use_resource_principal, as: 'useResourcePrincipal'
          property :user_id, as: 'userId'
        end
      end
      
      class GoldengatePlacement
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :availability_domain, as: 'availabilityDomain'
          property :fault_domain, as: 'faultDomain'
        end
      end
      
      class GoldengatePostgresqlConnectionProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_attributes, as: 'additionalAttributes', class: Google::Apis::OracledatabaseV1::NameValuePair, decorator: Google::Apis::OracledatabaseV1::NameValuePair::Representation
      
          property :database, as: 'database'
          property :db_system_id, as: 'dbSystemId'
          property :host, as: 'host'
          property :password, as: 'password'
          property :password_secret_version, as: 'passwordSecretVersion'
          property :port, as: 'port'
          property :security_protocol, as: 'securityProtocol'
          property :ssl_ca_file, as: 'sslCaFile'
          property :ssl_cert_file, as: 'sslCertFile'
          property :ssl_crl_file, as: 'sslCrlFile'
          property :ssl_key_file, as: 'sslKeyFile'
          property :ssl_mode, as: 'sslMode'
          property :technology_type, as: 'technologyType'
          property :username, as: 'username'
        end
      end
      
      class GoldengateRedisConnectionProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authentication_type, as: 'authenticationType'
          property :key_store_file, as: 'keyStoreFile'
          property :key_store_password, as: 'keyStorePassword'
          property :key_store_password_secret_version, as: 'keyStorePasswordSecretVersion'
          property :password, as: 'password'
          property :password_secret_version, as: 'passwordSecretVersion'
          property :redis_cluster_id, as: 'redisClusterId'
          property :security_protocol, as: 'securityProtocol'
          property :servers, as: 'servers'
          property :technology_type, as: 'technologyType'
          property :trust_store_file, as: 'trustStoreFile'
          property :trust_store_password, as: 'trustStorePassword'
          property :trust_store_password_secret_version, as: 'trustStorePasswordSecretVersion'
          property :username, as: 'username'
        end
      end
      
      class GoldengateSnowflakeConnectionProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authentication_type, as: 'authenticationType'
          property :connection_url, as: 'connectionUrl'
          property :password, as: 'password'
          property :password_secret_version, as: 'passwordSecretVersion'
          property :private_key_file, as: 'privateKeyFile'
          property :private_key_passphrase_secret, as: 'privateKeyPassphraseSecret'
          property :technology_type, as: 'technologyType'
          property :username, as: 'username'
        end
      end
      
      class GoogleCloudStorageIcebergStorage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket, as: 'bucket'
          property :project_id, as: 'projectId'
          property :service_account_key_file, as: 'serviceAccountKeyFile'
        end
      end
      
      class IcebergCatalog
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :catalog_type, as: 'catalogType'
          property :glue_iceberg_catalog, as: 'glueIcebergCatalog', class: Google::Apis::OracledatabaseV1::GlueIcebergCatalog, decorator: Google::Apis::OracledatabaseV1::GlueIcebergCatalog::Representation
      
          property :nessie_iceberg_catalog, as: 'nessieIcebergCatalog', class: Google::Apis::OracledatabaseV1::NessieIcebergCatalog, decorator: Google::Apis::OracledatabaseV1::NessieIcebergCatalog::Representation
      
          property :polaris_iceberg_catalog, as: 'polarisIcebergCatalog', class: Google::Apis::OracledatabaseV1::PolarisIcebergCatalog, decorator: Google::Apis::OracledatabaseV1::PolarisIcebergCatalog::Representation
      
          property :rest_iceberg_catalog, as: 'restIcebergCatalog', class: Google::Apis::OracledatabaseV1::RestIcebergCatalog, decorator: Google::Apis::OracledatabaseV1::RestIcebergCatalog::Representation
      
        end
      end
      
      class IcebergStorage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :amazon_s3_iceberg_storage, as: 'amazonS3IcebergStorage', class: Google::Apis::OracledatabaseV1::AmazonS3IcebergStorage, decorator: Google::Apis::OracledatabaseV1::AmazonS3IcebergStorage::Representation
      
          property :azure_data_lake_storage_iceberg_storage, as: 'azureDataLakeStorageIcebergStorage', class: Google::Apis::OracledatabaseV1::AzureDataLakeStorageIcebergStorage, decorator: Google::Apis::OracledatabaseV1::AzureDataLakeStorageIcebergStorage::Representation
      
          property :google_cloud_storage_iceberg_storage, as: 'googleCloudStorageIcebergStorage', class: Google::Apis::OracledatabaseV1::GoogleCloudStorageIcebergStorage, decorator: Google::Apis::OracledatabaseV1::GoogleCloudStorageIcebergStorage::Representation
      
          property :storage_type, as: 'storageType'
        end
      end
      
      class IdentityConnector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connection_state, as: 'connectionState'
          property :service_agent_email, as: 'serviceAgentEmail'
        end
      end
      
      class IngressIp
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ingress_ip_address, as: 'ingressIpAddress'
        end
      end
      
      class KafkaBootstrapServer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :host, as: 'host'
          property :port, as: 'port'
          property :private_ip_address, as: 'privateIpAddress'
        end
      end
      
      class ListAutonomousDatabaseBackupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :autonomous_database_backups, as: 'autonomousDatabaseBackups', class: Google::Apis::OracledatabaseV1::AutonomousDatabaseBackup, decorator: Google::Apis::OracledatabaseV1::AutonomousDatabaseBackup::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListAutonomousDatabaseCharacterSetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :autonomous_database_character_sets, as: 'autonomousDatabaseCharacterSets', class: Google::Apis::OracledatabaseV1::AutonomousDatabaseCharacterSet, decorator: Google::Apis::OracledatabaseV1::AutonomousDatabaseCharacterSet::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListAutonomousDatabasesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :autonomous_databases, as: 'autonomousDatabases', class: Google::Apis::OracledatabaseV1::AutonomousDatabase, decorator: Google::Apis::OracledatabaseV1::AutonomousDatabase::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListAutonomousDbVersionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :autonomous_db_versions, as: 'autonomousDbVersions', class: Google::Apis::OracledatabaseV1::AutonomousDbVersion, decorator: Google::Apis::OracledatabaseV1::AutonomousDbVersion::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListCloudExadataInfrastructuresResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cloud_exadata_infrastructures, as: 'cloudExadataInfrastructures', class: Google::Apis::OracledatabaseV1::CloudExadataInfrastructure, decorator: Google::Apis::OracledatabaseV1::CloudExadataInfrastructure::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListCloudVmClustersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cloud_vm_clusters, as: 'cloudVmClusters', class: Google::Apis::OracledatabaseV1::CloudVmCluster, decorator: Google::Apis::OracledatabaseV1::CloudVmCluster::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListDatabaseCharacterSetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :database_character_sets, as: 'databaseCharacterSets', class: Google::Apis::OracledatabaseV1::DatabaseCharacterSet, decorator: Google::Apis::OracledatabaseV1::DatabaseCharacterSet::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListDatabasesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :databases, as: 'databases', class: Google::Apis::OracledatabaseV1::Database, decorator: Google::Apis::OracledatabaseV1::Database::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListDbNodesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :db_nodes, as: 'dbNodes', class: Google::Apis::OracledatabaseV1::DbNode, decorator: Google::Apis::OracledatabaseV1::DbNode::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListDbServersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :db_servers, as: 'dbServers', class: Google::Apis::OracledatabaseV1::DbServer, decorator: Google::Apis::OracledatabaseV1::DbServer::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListDbSystemInitialStorageSizesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :db_system_initial_storage_sizes, as: 'dbSystemInitialStorageSizes', class: Google::Apis::OracledatabaseV1::DbSystemInitialStorageSize, decorator: Google::Apis::OracledatabaseV1::DbSystemInitialStorageSize::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListDbSystemShapesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :db_system_shapes, as: 'dbSystemShapes', class: Google::Apis::OracledatabaseV1::DbSystemShape, decorator: Google::Apis::OracledatabaseV1::DbSystemShape::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListDbSystemsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :db_systems, as: 'dbSystems', class: Google::Apis::OracledatabaseV1::DbSystem, decorator: Google::Apis::OracledatabaseV1::DbSystem::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListDbVersionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :db_versions, as: 'dbVersions', class: Google::Apis::OracledatabaseV1::DbVersion, decorator: Google::Apis::OracledatabaseV1::DbVersion::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListEntitlementsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entitlements, as: 'entitlements', class: Google::Apis::OracledatabaseV1::Entitlement, decorator: Google::Apis::OracledatabaseV1::Entitlement::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListExadbVmClustersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :exadb_vm_clusters, as: 'exadbVmClusters', class: Google::Apis::OracledatabaseV1::ExadbVmCluster, decorator: Google::Apis::OracledatabaseV1::ExadbVmCluster::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListExascaleDbStorageVaultsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :exascale_db_storage_vaults, as: 'exascaleDbStorageVaults', class: Google::Apis::OracledatabaseV1::ExascaleDbStorageVault, decorator: Google::Apis::OracledatabaseV1::ExascaleDbStorageVault::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListGiVersionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :gi_versions, as: 'giVersions', class: Google::Apis::OracledatabaseV1::GiVersion, decorator: Google::Apis::OracledatabaseV1::GiVersion::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListGoldengateConnectionAssignmentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :goldengate_connection_assignments, as: 'goldengateConnectionAssignments', class: Google::Apis::OracledatabaseV1::GoldengateConnectionAssignment, decorator: Google::Apis::OracledatabaseV1::GoldengateConnectionAssignment::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListGoldengateConnectionTypesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :goldengate_connection_types, as: 'goldengateConnectionTypes', class: Google::Apis::OracledatabaseV1::GoldengateConnectionType, decorator: Google::Apis::OracledatabaseV1::GoldengateConnectionType::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListGoldengateConnectionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :goldengate_connections, as: 'goldengateConnections', class: Google::Apis::OracledatabaseV1::GoldengateConnection, decorator: Google::Apis::OracledatabaseV1::GoldengateConnection::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListGoldengateDeploymentEnvironmentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :goldengate_deployment_environments, as: 'goldengateDeploymentEnvironments', class: Google::Apis::OracledatabaseV1::GoldengateDeploymentEnvironment, decorator: Google::Apis::OracledatabaseV1::GoldengateDeploymentEnvironment::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListGoldengateDeploymentTypesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :goldengate_deployment_types, as: 'goldengateDeploymentTypes', class: Google::Apis::OracledatabaseV1::GoldengateDeploymentType, decorator: Google::Apis::OracledatabaseV1::GoldengateDeploymentType::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListGoldengateDeploymentVersionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :goldengate_deployment_versions, as: 'goldengateDeploymentVersions', class: Google::Apis::OracledatabaseV1::GoldengateDeploymentVersion, decorator: Google::Apis::OracledatabaseV1::GoldengateDeploymentVersion::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListGoldengateDeploymentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :goldengate_deployments, as: 'goldengateDeployments', class: Google::Apis::OracledatabaseV1::GoldengateDeployment, decorator: Google::Apis::OracledatabaseV1::GoldengateDeployment::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::OracledatabaseV1::Location, decorator: Google::Apis::OracledatabaseV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListMinorVersionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :minor_versions, as: 'minorVersions', class: Google::Apis::OracledatabaseV1::MinorVersion, decorator: Google::Apis::OracledatabaseV1::MinorVersion::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOdbNetworksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :odb_networks, as: 'odbNetworks', class: Google::Apis::OracledatabaseV1::OdbNetwork, decorator: Google::Apis::OracledatabaseV1::OdbNetwork::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListOdbSubnetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :odb_subnets, as: 'odbSubnets', class: Google::Apis::OracledatabaseV1::OdbSubnet, decorator: Google::Apis::OracledatabaseV1::OdbSubnet::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::OracledatabaseV1::Operation, decorator: Google::Apis::OracledatabaseV1::Operation::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListPluggableDatabasesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :pluggable_databases, as: 'pluggableDatabases', class: Google::Apis::OracledatabaseV1::PluggableDatabase, decorator: Google::Apis::OracledatabaseV1::PluggableDatabase::Representation
      
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
      
      class LocationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :gcp_oracle_zones, as: 'gcpOracleZones'
        end
      end
      
      class MaintenanceWindow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_action_timeout_mins, as: 'customActionTimeoutMins'
          collection :days_of_week, as: 'daysOfWeek'
          collection :hours_of_day, as: 'hoursOfDay'
          property :is_custom_action_timeout_enabled, as: 'isCustomActionTimeoutEnabled'
          property :lead_time_week, as: 'leadTimeWeek'
          collection :months, as: 'months'
          property :patching_mode, as: 'patchingMode'
          property :preference, as: 'preference'
          collection :weeks_of_month, as: 'weeksOfMonth'
        end
      end
      
      class MinorVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :grid_image_id, as: 'gridImageId'
          property :name, as: 'name'
          property :version, as: 'version'
        end
      end
      
      class NameValuePair
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :value, as: 'value'
        end
      end
      
      class NessieIcebergCatalog
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :branch, as: 'branch'
          property :uri, as: 'uri'
        end
      end
      
      class OdbNetwork
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :entitlement_id, as: 'entitlementId'
          property :gcp_oracle_zone, as: 'gcpOracleZone'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :network, as: 'network'
          property :state, as: 'state'
        end
      end
      
      class OdbSubnet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cidr_range, as: 'cidrRange'
          property :create_time, as: 'createTime'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :purpose, as: 'purpose'
          property :state, as: 'state'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::OracledatabaseV1::Status, decorator: Google::Apis::OracledatabaseV1::Status::Representation
      
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
          property :percent_complete, as: 'percentComplete'
          property :requested_cancellation, as: 'requestedCancellation'
          property :status_message, as: 'statusMessage'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class PluggableDatabase
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :name, as: 'name'
          property :oci_url, as: 'ociUrl'
          property :properties, as: 'properties', class: Google::Apis::OracledatabaseV1::PluggableDatabaseProperties, decorator: Google::Apis::OracledatabaseV1::PluggableDatabaseProperties::Representation
      
        end
      end
      
      class PluggableDatabaseConnectionStrings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :all_connection_strings, as: 'allConnectionStrings'
          property :pdb_default, as: 'pdbDefault'
          property :pdb_ip_default, as: 'pdbIpDefault'
        end
      end
      
      class PluggableDatabaseNodeLevelDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :node_name, as: 'nodeName'
          property :open_mode, as: 'openMode'
          property :pluggable_database_id, as: 'pluggableDatabaseId'
        end
      end
      
      class PluggableDatabaseProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compartment_id, as: 'compartmentId'
          property :connection_strings, as: 'connectionStrings', class: Google::Apis::OracledatabaseV1::PluggableDatabaseConnectionStrings, decorator: Google::Apis::OracledatabaseV1::PluggableDatabaseConnectionStrings::Representation
      
          property :container_database_ocid, as: 'containerDatabaseOcid'
          property :database_management_config, as: 'databaseManagementConfig', class: Google::Apis::OracledatabaseV1::DatabaseManagementConfig, decorator: Google::Apis::OracledatabaseV1::DatabaseManagementConfig::Representation
      
          hash :defined_tags, as: 'definedTags', class: Google::Apis::OracledatabaseV1::DefinedTagValue, decorator: Google::Apis::OracledatabaseV1::DefinedTagValue::Representation
      
          hash :freeform_tags, as: 'freeformTags'
          property :is_restricted, as: 'isRestricted'
          property :lifecycle_details, as: 'lifecycleDetails'
          property :lifecycle_state, as: 'lifecycleState'
          property :ocid, as: 'ocid'
          property :operations_insights_state, as: 'operationsInsightsState'
          property :pdb_name, as: 'pdbName'
          collection :pdb_node_level_details, as: 'pdbNodeLevelDetails', class: Google::Apis::OracledatabaseV1::PluggableDatabaseNodeLevelDetails, decorator: Google::Apis::OracledatabaseV1::PluggableDatabaseNodeLevelDetails::Representation
      
        end
      end
      
      class PolarisIcebergCatalog
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_id, as: 'clientId'
          property :client_secret, as: 'clientSecret'
          property :polaris_catalog, as: 'polarisCatalog'
          property :principal_role, as: 'principalRole'
          property :uri, as: 'uri'
        end
      end
      
      class RefreshAutonomousDatabaseRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :refresh_cutoff_time, as: 'refreshCutoffTime'
        end
      end
      
      class RemoveVirtualMachineExadbVmClusterRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :hostnames, as: 'hostnames'
          property :request_id, as: 'requestId'
        end
      end
      
      class RestIcebergCatalog
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :properties, as: 'properties'
          property :uri, as: 'uri'
        end
      end
      
      class RestartAutonomousDatabaseRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class RestoreAutonomousDatabaseRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :restore_time, as: 'restoreTime'
        end
      end
      
      class ScheduledOperationDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day_of_week, as: 'dayOfWeek'
          property :start_time, as: 'startTime', class: Google::Apis::OracledatabaseV1::TimeOfDay, decorator: Google::Apis::OracledatabaseV1::TimeOfDay::Representation
      
          property :stop_time, as: 'stopTime', class: Google::Apis::OracledatabaseV1::TimeOfDay, decorator: Google::Apis::OracledatabaseV1::TimeOfDay::Representation
      
        end
      end
      
      class SourceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_refresh_frequency_seconds, as: 'autoRefreshFrequencySeconds'
          property :auto_refresh_point_lag_seconds, as: 'autoRefreshPointLagSeconds'
          property :auto_refresh_start_time, as: 'autoRefreshStartTime'
          property :automatic_backups_replication_enabled, as: 'automaticBackupsReplicationEnabled'
          property :autonomous_database, as: 'autonomousDatabase'
          property :autonomous_database_backup, as: 'autonomousDatabaseBackup'
          property :backup_time, as: 'backupTime'
          property :clone_type, as: 'cloneType'
          property :refreshable_mode, as: 'refreshableMode'
          property :source_type, as: 'sourceType'
          property :use_latest_available_backup, as: 'useLatestAvailableBackup'
        end
      end
      
      class StartAutonomousDatabaseRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class StartGoldengateDeploymentRequest
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
      
      class StopAutonomousDatabaseRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class StopGoldengateDeploymentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class StorageSizeDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_storage_size_in_gbs, as: 'dataStorageSizeInGbs'
          property :reco_storage_size_in_gbs, as: 'recoStorageSizeInGbs'
        end
      end
      
      class SwitchoverAutonomousDatabaseRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :peer_autonomous_database, as: 'peerAutonomousDatabase'
        end
      end
      
      class TestConnectionAssignmentError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :code, as: 'code'
          property :issue, as: 'issue'
          property :message, as: 'message'
        end
      end
      
      class TestGoldengateConnectionAssignmentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
        end
      end
      
      class TestGoldengateConnectionAssignmentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::OracledatabaseV1::TestConnectionAssignmentError, decorator: Google::Apis::OracledatabaseV1::TestConnectionAssignmentError::Representation
      
          collection :errors, as: 'errors', class: Google::Apis::OracledatabaseV1::TestConnectionAssignmentError, decorator: Google::Apis::OracledatabaseV1::TestConnectionAssignmentError::Representation
      
          property :result_type, as: 'resultType'
        end
      end
      
      class TimeOfDay
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hours, as: 'hours'
          property :minutes, as: 'minutes'
          property :nanos, as: 'nanos'
          property :seconds, as: 'seconds'
        end
      end
      
      class TimeZone
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :version, as: 'version'
        end
      end
    end
  end
end
