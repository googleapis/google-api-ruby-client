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
    module MigrationcenterV1alpha1
      
      class AddAssetsToGroupRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AggregateAssetsValuesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AggregateAssetsValuesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Aggregation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AggregationCount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AggregationFrequency
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AggregationHistogram
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AggregationResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AggregationResultCount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AggregationResultFrequency
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AggregationResultHistogram
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AggregationResultHistogramBucket
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AggregationResultSum
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AggregationSum
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Asset
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AssetFrame
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AssetList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AssetPerformanceData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AssetsExportJob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AssetsExportJobExecution
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AssetsExportJobExecutionResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AssetsExportJobExportCondition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AssetsExportJobInventory
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AssetsExportJobNetworkDependencies
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AssetsExportJobPerformanceData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AwsEc2PlatformDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AwsRds
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AzureVmPlatformDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchDeleteAssetsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchUpdateAssetsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchUpdateAssetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BiosDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CascadeLogicalDBsRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CascadingRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudDatabaseMigrationTarget
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudSqlForMySqlShape
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudSqlForPostgreSqlShape
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudSqlForSqlServerShape
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComputeEngineMigrationTarget
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComputeEnginePreferences
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComputeEngineShapeDescriptor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComputeEngineSoleTenantMigrationTarget
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComputeStorageDescriptor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CpuUsageSample
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CsvOutputFile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DailyResourceUsageAggregation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DailyResourceUsageAggregationCpu
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DailyResourceUsageAggregationDisk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DailyResourceUsageAggregationMemory
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DailyResourceUsageAggregationNetwork
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DailyResourceUsageAggregationStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatabaseDeploymentDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatabaseDeploymentDetailsAggregatedStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatabaseDeploymentTopology
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatabaseDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatabaseDetailsParentDatabaseDeployment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatabaseInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatabaseInstanceNetwork
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatabaseObjects
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatabasePreferences
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatabasePreferencesCloudSqlCommon
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatabasePreferencesCloudSqlCommonBackup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatabasePreferencesCloudSqlMySql
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatabasePreferencesCloudSqlPostgreSql
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatabasePreferencesCloudSqlSqlServer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatabaseSchema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DateTime
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DetectedSoftware
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiscoveryClient
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiscoveryClientDiscoveryClientRecommendedVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiskEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiskEntryList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiskPartition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiskPartitionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiskPartitionList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiskUsageSample
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ErrorFrame
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExecutionReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FileValidationReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FitDescriptor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FrameViolationEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Frames
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FstabEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FstabEntryList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GcsPayloadInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenericInsight
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenericPlatformDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleKubernetesEngineMigrationTarget
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Group
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GuestConfigDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GuestInstalledApplication
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GuestInstalledApplicationList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GuestOsDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GuestRuntimeDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HostsEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HostsEntryList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportDataFile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportJob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportRowError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportRowErrorArchiveErrorDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportRowErrorCsvErrorDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportRowErrorXlsxErrorDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InlinePayloadInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Insight
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InsightList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Issue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IssueCompatibilityIssue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAssetsExportJobsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAssetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDiscoveryClientsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListErrorFramesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListGroupsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListImportDataFilesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListImportJobsResponse
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
      
      class ListPreferenceSetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListRelationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListReportConfigsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListReportsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSourcesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MachineArchitectureDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MachineDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MachineDiskDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MachineNetworkDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MachinePreferences
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MachineSeries
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MemoryUsageSample
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MigrationInsight
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Money
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MySqlPlugin
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MySqlProperty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MySqlSchemaDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MySqlStorageEngineDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MySqlVariable
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MysqlDatabaseDeployment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkAdapterDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkAdapterList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkAddress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkAddressList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkConnection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkConnectionList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkUsageSample
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NfsExport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NfsExportList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OpenFileDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OpenFileList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperatingSystemPricingPreferences
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperatingSystemPricingPreferencesOperatingSystemPricing
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
      
      class OutputFile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OutputFileList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PayloadFile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PerformanceSample
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PhysicalPlatformDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PlatformDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PostgreSqlDatabaseDeployment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PostgreSqlExtension
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PostgreSqlProperty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PostgreSqlSchemaDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PostgreSqlSetting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PreferenceSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionPreferences
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Relation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RemoveAssetsFromGroupRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Report
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportAssetFramesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportConfigGroupPreferenceSetAssignment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportSummaryAssetAggregateStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportSummaryChartData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportSummaryChartDataDataPoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportSummaryDatabaseFinding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportSummaryGroupFinding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportSummaryGroupPreferenceSetFinding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportSummaryHistogramChartData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportSummaryHistogramChartDataBucket
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportSummaryMachineFinding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportSummaryMachineSeriesAllocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportSummarySoleTenantFinding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportSummarySoleTenantNodeAllocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportSummaryUtilizationChartData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportSummaryVmWareEngineFinding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportSummaryVmWareNode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportSummaryVmWareNodeAllocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RunAssetsExportJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RunAssetsExportJobResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RunImportJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RunningProcess
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RunningProcessList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RunningService
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RunningServiceList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RuntimeNetworkInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Selinux
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SendDiscoveryClientHeartbeatRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Settings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SignedUri
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SignedUriDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SignedUris
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SoftwareInsight
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SoleTenancyPreferences
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SoleTenantNodeType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Source
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SqlServerDatabaseDeployment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SqlServerFeature
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SqlServerSchemaDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SqlServerServerFlag
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SqlServerTraceFlag
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeZone
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateAssetRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UploadFileInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VMwareEngineMachinePreferences
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ValidateImportJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ValidationReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VirtualMachineArchitectureDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VirtualMachineDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VirtualMachineDiskDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VirtualMachineNetworkDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VirtualMachinePreferences
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VirtualMachinePreferencesNetworkCostParameters
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VirtualMachinePreferencesSizingOptimizationCustomParameters
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwareEngineMigrationTarget
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwareEnginePreferences
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwarePlatformDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XlsxOutputFile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AddAssetsToGroupRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_existing, as: 'allowExisting'
          property :assets, as: 'assets', class: Google::Apis::MigrationcenterV1alpha1::AssetList, decorator: Google::Apis::MigrationcenterV1alpha1::AssetList::Representation
      
          property :request_id, as: 'requestId'
        end
      end
      
      class AggregateAssetsValuesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :aggregations, as: 'aggregations', class: Google::Apis::MigrationcenterV1alpha1::Aggregation, decorator: Google::Apis::MigrationcenterV1alpha1::Aggregation::Representation
      
          property :filter, as: 'filter'
          property :show_hidden, as: 'showHidden'
        end
      end
      
      class AggregateAssetsValuesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :results, as: 'results', class: Google::Apis::MigrationcenterV1alpha1::AggregationResult, decorator: Google::Apis::MigrationcenterV1alpha1::AggregationResult::Representation
      
        end
      end
      
      class Aggregation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, as: 'count', class: Google::Apis::MigrationcenterV1alpha1::AggregationCount, decorator: Google::Apis::MigrationcenterV1alpha1::AggregationCount::Representation
      
          property :field, as: 'field'
          property :frequency, as: 'frequency', class: Google::Apis::MigrationcenterV1alpha1::AggregationFrequency, decorator: Google::Apis::MigrationcenterV1alpha1::AggregationFrequency::Representation
      
          property :histogram, as: 'histogram', class: Google::Apis::MigrationcenterV1alpha1::AggregationHistogram, decorator: Google::Apis::MigrationcenterV1alpha1::AggregationHistogram::Representation
      
          property :sum, as: 'sum', class: Google::Apis::MigrationcenterV1alpha1::AggregationSum, decorator: Google::Apis::MigrationcenterV1alpha1::AggregationSum::Representation
      
        end
      end
      
      class AggregationCount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class AggregationFrequency
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class AggregationHistogram
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :lower_bounds, as: 'lowerBounds'
        end
      end
      
      class AggregationResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, as: 'count', class: Google::Apis::MigrationcenterV1alpha1::AggregationResultCount, decorator: Google::Apis::MigrationcenterV1alpha1::AggregationResultCount::Representation
      
          property :field, as: 'field'
          property :frequency, as: 'frequency', class: Google::Apis::MigrationcenterV1alpha1::AggregationResultFrequency, decorator: Google::Apis::MigrationcenterV1alpha1::AggregationResultFrequency::Representation
      
          property :histogram, as: 'histogram', class: Google::Apis::MigrationcenterV1alpha1::AggregationResultHistogram, decorator: Google::Apis::MigrationcenterV1alpha1::AggregationResultHistogram::Representation
      
          property :sum, as: 'sum', class: Google::Apis::MigrationcenterV1alpha1::AggregationResultSum, decorator: Google::Apis::MigrationcenterV1alpha1::AggregationResultSum::Representation
      
        end
      end
      
      class AggregationResultCount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, :numeric_string => true, as: 'value'
        end
      end
      
      class AggregationResultFrequency
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :values, as: 'values'
        end
      end
      
      class AggregationResultHistogram
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :buckets, as: 'buckets', class: Google::Apis::MigrationcenterV1alpha1::AggregationResultHistogramBucket, decorator: Google::Apis::MigrationcenterV1alpha1::AggregationResultHistogramBucket::Representation
      
        end
      end
      
      class AggregationResultHistogramBucket
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, :numeric_string => true, as: 'count'
          property :lower_bound, as: 'lowerBound'
          property :upper_bound, as: 'upperBound'
        end
      end
      
      class AggregationResultSum
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, as: 'value'
        end
      end
      
      class AggregationSum
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Asset
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :assigned_groups, as: 'assignedGroups'
          hash :attributes, as: 'attributes'
          property :create_time, as: 'createTime'
          property :database_deployment_details, as: 'databaseDeploymentDetails', class: Google::Apis::MigrationcenterV1alpha1::DatabaseDeploymentDetails, decorator: Google::Apis::MigrationcenterV1alpha1::DatabaseDeploymentDetails::Representation
      
          property :database_details, as: 'databaseDetails', class: Google::Apis::MigrationcenterV1alpha1::DatabaseDetails, decorator: Google::Apis::MigrationcenterV1alpha1::DatabaseDetails::Representation
      
          property :hidden, as: 'hidden'
          property :hide_reason, as: 'hideReason'
          property :hide_time, as: 'hideTime'
          property :insight_list, as: 'insightList', class: Google::Apis::MigrationcenterV1alpha1::InsightList, decorator: Google::Apis::MigrationcenterV1alpha1::InsightList::Representation
      
          hash :labels, as: 'labels'
          property :machine_details, as: 'machineDetails', class: Google::Apis::MigrationcenterV1alpha1::MachineDetails, decorator: Google::Apis::MigrationcenterV1alpha1::MachineDetails::Representation
      
          property :name, as: 'name'
          property :performance_data, as: 'performanceData', class: Google::Apis::MigrationcenterV1alpha1::AssetPerformanceData, decorator: Google::Apis::MigrationcenterV1alpha1::AssetPerformanceData::Representation
      
          collection :sources, as: 'sources'
          property :title, as: 'title'
          property :update_time, as: 'updateTime'
          property :virtual_machine_details, as: 'virtualMachineDetails', class: Google::Apis::MigrationcenterV1alpha1::VirtualMachineDetails, decorator: Google::Apis::MigrationcenterV1alpha1::VirtualMachineDetails::Representation
      
        end
      end
      
      class AssetFrame
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attributes, as: 'attributes'
          property :collection_type, as: 'collectionType'
          property :database_deployment_details, as: 'databaseDeploymentDetails', class: Google::Apis::MigrationcenterV1alpha1::DatabaseDeploymentDetails, decorator: Google::Apis::MigrationcenterV1alpha1::DatabaseDeploymentDetails::Representation
      
          property :database_details, as: 'databaseDetails', class: Google::Apis::MigrationcenterV1alpha1::DatabaseDetails, decorator: Google::Apis::MigrationcenterV1alpha1::DatabaseDetails::Representation
      
          hash :labels, as: 'labels'
          property :machine_details, as: 'machineDetails', class: Google::Apis::MigrationcenterV1alpha1::MachineDetails, decorator: Google::Apis::MigrationcenterV1alpha1::MachineDetails::Representation
      
          collection :performance_samples, as: 'performanceSamples', class: Google::Apis::MigrationcenterV1alpha1::PerformanceSample, decorator: Google::Apis::MigrationcenterV1alpha1::PerformanceSample::Representation
      
          property :report_time, as: 'reportTime'
          property :trace_token, as: 'traceToken'
          property :virtual_machine_details, as: 'virtualMachineDetails', class: Google::Apis::MigrationcenterV1alpha1::VirtualMachineDetails, decorator: Google::Apis::MigrationcenterV1alpha1::VirtualMachineDetails::Representation
      
        end
      end
      
      class AssetList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :asset_ids, as: 'assetIds'
        end
      end
      
      class AssetPerformanceData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :daily_resource_usage_aggregations, as: 'dailyResourceUsageAggregations', class: Google::Apis::MigrationcenterV1alpha1::DailyResourceUsageAggregation, decorator: Google::Apis::MigrationcenterV1alpha1::DailyResourceUsageAggregation::Representation
      
        end
      end
      
      class AssetsExportJob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::MigrationcenterV1alpha1::AssetsExportJobExportCondition, decorator: Google::Apis::MigrationcenterV1alpha1::AssetsExportJobExportCondition::Representation
      
          property :create_time, as: 'createTime'
          property :inventory, as: 'inventory', class: Google::Apis::MigrationcenterV1alpha1::AssetsExportJobInventory, decorator: Google::Apis::MigrationcenterV1alpha1::AssetsExportJobInventory::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :network_dependencies, as: 'networkDependencies', class: Google::Apis::MigrationcenterV1alpha1::AssetsExportJobNetworkDependencies, decorator: Google::Apis::MigrationcenterV1alpha1::AssetsExportJobNetworkDependencies::Representation
      
          property :performance_data, as: 'performanceData', class: Google::Apis::MigrationcenterV1alpha1::AssetsExportJobPerformanceData, decorator: Google::Apis::MigrationcenterV1alpha1::AssetsExportJobPerformanceData::Representation
      
          collection :recent_executions, as: 'recentExecutions', class: Google::Apis::MigrationcenterV1alpha1::AssetsExportJobExecution, decorator: Google::Apis::MigrationcenterV1alpha1::AssetsExportJobExecution::Representation
      
          property :show_hidden, as: 'showHidden'
          property :signed_uri_destination, as: 'signedUriDestination', class: Google::Apis::MigrationcenterV1alpha1::SignedUriDestination, decorator: Google::Apis::MigrationcenterV1alpha1::SignedUriDestination::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class AssetsExportJobExecution
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :execution_id, as: 'executionId'
          property :expire_time, as: 'expireTime'
          property :requested_asset_count, as: 'requestedAssetCount'
          property :result, as: 'result', class: Google::Apis::MigrationcenterV1alpha1::AssetsExportJobExecutionResult, decorator: Google::Apis::MigrationcenterV1alpha1::AssetsExportJobExecutionResult::Representation
      
          property :start_time, as: 'startTime'
        end
      end
      
      class AssetsExportJobExecutionResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::MigrationcenterV1alpha1::Status, decorator: Google::Apis::MigrationcenterV1alpha1::Status::Representation
      
          property :output_files, as: 'outputFiles', class: Google::Apis::MigrationcenterV1alpha1::OutputFileList, decorator: Google::Apis::MigrationcenterV1alpha1::OutputFileList::Representation
      
          property :signed_uris, as: 'signedUris', class: Google::Apis::MigrationcenterV1alpha1::SignedUris, decorator: Google::Apis::MigrationcenterV1alpha1::SignedUris::Representation
      
        end
      end
      
      class AssetsExportJobExportCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
        end
      end
      
      class AssetsExportJobInventory
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class AssetsExportJobNetworkDependencies
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_days, as: 'maxDays'
        end
      end
      
      class AssetsExportJobPerformanceData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_days, as: 'maxDays'
        end
      end
      
      class AwsEc2PlatformDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hyperthreading, as: 'hyperthreading'
          property :location, as: 'location'
          property :machine_type_label, as: 'machineTypeLabel'
        end
      end
      
      class AwsRds
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class AzureVmPlatformDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hyperthreading, as: 'hyperthreading'
          property :location, as: 'location'
          property :machine_type_label, as: 'machineTypeLabel'
          property :provisioning_state, as: 'provisioningState'
        end
      end
      
      class BatchDeleteAssetsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_missing, as: 'allowMissing'
          collection :cascading_rules, as: 'cascadingRules', class: Google::Apis::MigrationcenterV1alpha1::CascadingRule, decorator: Google::Apis::MigrationcenterV1alpha1::CascadingRule::Representation
      
          collection :names, as: 'names'
        end
      end
      
      class BatchUpdateAssetsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :requests, as: 'requests', class: Google::Apis::MigrationcenterV1alpha1::UpdateAssetRequest, decorator: Google::Apis::MigrationcenterV1alpha1::UpdateAssetRequest::Representation
      
        end
      end
      
      class BatchUpdateAssetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :assets, as: 'assets', class: Google::Apis::MigrationcenterV1alpha1::Asset, decorator: Google::Apis::MigrationcenterV1alpha1::Asset::Representation
      
        end
      end
      
      class BiosDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bios_manufacturer, as: 'biosManufacturer'
          property :bios_name, as: 'biosName'
          property :bios_release_date, as: 'biosReleaseDate'
          property :bios_version, as: 'biosVersion'
          property :smbios_uuid, as: 'smbiosUuid'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CascadeLogicalDBsRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CascadingRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cascade_logical_dbs, as: 'cascadeLogicalDbs', class: Google::Apis::MigrationcenterV1alpha1::CascadeLogicalDBsRule, decorator: Google::Apis::MigrationcenterV1alpha1::CascadeLogicalDBsRule::Representation
      
        end
      end
      
      class CloudDatabaseMigrationTarget
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_sql_for_mysql_shape, as: 'cloudSqlForMysqlShape', class: Google::Apis::MigrationcenterV1alpha1::CloudSqlForMySqlShape, decorator: Google::Apis::MigrationcenterV1alpha1::CloudSqlForMySqlShape::Representation
      
          property :cloud_sql_for_postgresql_shape, as: 'cloudSqlForPostgresqlShape', class: Google::Apis::MigrationcenterV1alpha1::CloudSqlForPostgreSqlShape, decorator: Google::Apis::MigrationcenterV1alpha1::CloudSqlForPostgreSqlShape::Representation
      
          property :cloud_sql_shape, as: 'cloudSqlShape', class: Google::Apis::MigrationcenterV1alpha1::CloudSqlForSqlServerShape, decorator: Google::Apis::MigrationcenterV1alpha1::CloudSqlForSqlServerShape::Representation
      
        end
      end
      
      class CloudSqlForMySqlShape
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_storage_gb, as: 'backupStorageGb'
          property :edition, as: 'edition'
          property :egress_gb_per_month, :numeric_string => true, as: 'egressGbPerMonth'
          property :logical_core_count, as: 'logicalCoreCount'
          property :memory_mb, as: 'memoryMb'
          property :storage, as: 'storage', class: Google::Apis::MigrationcenterV1alpha1::ComputeStorageDescriptor, decorator: Google::Apis::MigrationcenterV1alpha1::ComputeStorageDescriptor::Representation
      
          property :version, as: 'version'
          property :zone_availability, as: 'zoneAvailability'
        end
      end
      
      class CloudSqlForPostgreSqlShape
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_storage_gb, as: 'backupStorageGb'
          property :edition, as: 'edition'
          property :egress_gb_per_month, :numeric_string => true, as: 'egressGbPerMonth'
          property :logical_core_count, as: 'logicalCoreCount'
          property :memory_mb, as: 'memoryMb'
          property :storage, as: 'storage', class: Google::Apis::MigrationcenterV1alpha1::ComputeStorageDescriptor, decorator: Google::Apis::MigrationcenterV1alpha1::ComputeStorageDescriptor::Representation
      
          property :version, as: 'version'
          property :zone_availability, as: 'zoneAvailability'
        end
      end
      
      class CloudSqlForSqlServerShape
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_storage_gb, as: 'backupStorageGb'
          property :edition, as: 'edition'
          property :egress_gb_per_month, :numeric_string => true, as: 'egressGbPerMonth'
          property :logical_core_count, as: 'logicalCoreCount'
          property :memory_mb, as: 'memoryMb'
          property :smt_enabled, as: 'smtEnabled'
          property :storage, as: 'storage', class: Google::Apis::MigrationcenterV1alpha1::ComputeStorageDescriptor, decorator: Google::Apis::MigrationcenterV1alpha1::ComputeStorageDescriptor::Representation
      
          property :version, as: 'version'
          property :zone_availability, as: 'zoneAvailability'
        end
      end
      
      class ComputeEngineMigrationTarget
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :shape, as: 'shape', class: Google::Apis::MigrationcenterV1alpha1::ComputeEngineShapeDescriptor, decorator: Google::Apis::MigrationcenterV1alpha1::ComputeEngineShapeDescriptor::Representation
      
        end
      end
      
      class ComputeEnginePreferences
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :license_type, as: 'licenseType'
          property :machine_preferences, as: 'machinePreferences', class: Google::Apis::MigrationcenterV1alpha1::MachinePreferences, decorator: Google::Apis::MigrationcenterV1alpha1::MachinePreferences::Representation
      
          property :multithreading, as: 'multithreading'
          property :os_pricing_preferences, as: 'osPricingPreferences', class: Google::Apis::MigrationcenterV1alpha1::OperatingSystemPricingPreferences, decorator: Google::Apis::MigrationcenterV1alpha1::OperatingSystemPricingPreferences::Representation
      
          property :persistent_disk_type, as: 'persistentDiskType'
        end
      end
      
      class ComputeEngineShapeDescriptor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :logical_core_count, as: 'logicalCoreCount'
          property :machine_type, as: 'machineType'
          property :memory_mb, as: 'memoryMb'
          property :physical_core_count, as: 'physicalCoreCount'
          property :series, as: 'series'
          property :smt_enabled, as: 'smtEnabled'
          collection :storage, as: 'storage', class: Google::Apis::MigrationcenterV1alpha1::ComputeStorageDescriptor, decorator: Google::Apis::MigrationcenterV1alpha1::ComputeStorageDescriptor::Representation
      
        end
      end
      
      class ComputeEngineSoleTenantMigrationTarget
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ComputeStorageDescriptor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :size_gb, as: 'sizeGb'
          property :type, as: 'type'
        end
      end
      
      class CpuUsageSample
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :utilized_percentage, as: 'utilizedPercentage'
        end
      end
      
      class CsvOutputFile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :columns_count, as: 'columnsCount'
          property :row_count, as: 'rowCount'
          property :signed_uri, as: 'signedUri', class: Google::Apis::MigrationcenterV1alpha1::SignedUri, decorator: Google::Apis::MigrationcenterV1alpha1::SignedUri::Representation
      
        end
      end
      
      class DailyResourceUsageAggregation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cpu, as: 'cpu', class: Google::Apis::MigrationcenterV1alpha1::DailyResourceUsageAggregationCpu, decorator: Google::Apis::MigrationcenterV1alpha1::DailyResourceUsageAggregationCpu::Representation
      
          property :date, as: 'date', class: Google::Apis::MigrationcenterV1alpha1::Date, decorator: Google::Apis::MigrationcenterV1alpha1::Date::Representation
      
          property :disk, as: 'disk', class: Google::Apis::MigrationcenterV1alpha1::DailyResourceUsageAggregationDisk, decorator: Google::Apis::MigrationcenterV1alpha1::DailyResourceUsageAggregationDisk::Representation
      
          property :memory, as: 'memory', class: Google::Apis::MigrationcenterV1alpha1::DailyResourceUsageAggregationMemory, decorator: Google::Apis::MigrationcenterV1alpha1::DailyResourceUsageAggregationMemory::Representation
      
          property :network, as: 'network', class: Google::Apis::MigrationcenterV1alpha1::DailyResourceUsageAggregationNetwork, decorator: Google::Apis::MigrationcenterV1alpha1::DailyResourceUsageAggregationNetwork::Representation
      
        end
      end
      
      class DailyResourceUsageAggregationCpu
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :utilization_percentage, as: 'utilizationPercentage', class: Google::Apis::MigrationcenterV1alpha1::DailyResourceUsageAggregationStats, decorator: Google::Apis::MigrationcenterV1alpha1::DailyResourceUsageAggregationStats::Representation
      
        end
      end
      
      class DailyResourceUsageAggregationDisk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :iops, as: 'iops', class: Google::Apis::MigrationcenterV1alpha1::DailyResourceUsageAggregationStats, decorator: Google::Apis::MigrationcenterV1alpha1::DailyResourceUsageAggregationStats::Representation
      
          property :read_iops, as: 'readIops', class: Google::Apis::MigrationcenterV1alpha1::DailyResourceUsageAggregationStats, decorator: Google::Apis::MigrationcenterV1alpha1::DailyResourceUsageAggregationStats::Representation
      
          property :write_iops, as: 'writeIops', class: Google::Apis::MigrationcenterV1alpha1::DailyResourceUsageAggregationStats, decorator: Google::Apis::MigrationcenterV1alpha1::DailyResourceUsageAggregationStats::Representation
      
        end
      end
      
      class DailyResourceUsageAggregationMemory
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :utilization_percentage, as: 'utilizationPercentage', class: Google::Apis::MigrationcenterV1alpha1::DailyResourceUsageAggregationStats, decorator: Google::Apis::MigrationcenterV1alpha1::DailyResourceUsageAggregationStats::Representation
      
        end
      end
      
      class DailyResourceUsageAggregationNetwork
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :egress_bps, as: 'egressBps', class: Google::Apis::MigrationcenterV1alpha1::DailyResourceUsageAggregationStats, decorator: Google::Apis::MigrationcenterV1alpha1::DailyResourceUsageAggregationStats::Representation
      
          property :ingress_bps, as: 'ingressBps', class: Google::Apis::MigrationcenterV1alpha1::DailyResourceUsageAggregationStats, decorator: Google::Apis::MigrationcenterV1alpha1::DailyResourceUsageAggregationStats::Representation
      
        end
      end
      
      class DailyResourceUsageAggregationStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :average, as: 'average'
          property :median, as: 'median'
          property :nintey_fifth_percentile, as: 'ninteyFifthPercentile'
          property :peak, as: 'peak'
        end
      end
      
      class DatabaseDeploymentDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aggregated_stats, as: 'aggregatedStats', class: Google::Apis::MigrationcenterV1alpha1::DatabaseDeploymentDetailsAggregatedStats, decorator: Google::Apis::MigrationcenterV1alpha1::DatabaseDeploymentDetailsAggregatedStats::Representation
      
          property :aws_rds, as: 'awsRds', class: Google::Apis::MigrationcenterV1alpha1::AwsRds, decorator: Google::Apis::MigrationcenterV1alpha1::AwsRds::Representation
      
          property :edition, as: 'edition'
          property :generated_id, as: 'generatedId'
          property :manual_unique_id, as: 'manualUniqueId'
          property :mysql, as: 'mysql', class: Google::Apis::MigrationcenterV1alpha1::MysqlDatabaseDeployment, decorator: Google::Apis::MigrationcenterV1alpha1::MysqlDatabaseDeployment::Representation
      
          property :postgresql, as: 'postgresql', class: Google::Apis::MigrationcenterV1alpha1::PostgreSqlDatabaseDeployment, decorator: Google::Apis::MigrationcenterV1alpha1::PostgreSqlDatabaseDeployment::Representation
      
          property :sql_server, as: 'sqlServer', class: Google::Apis::MigrationcenterV1alpha1::SqlServerDatabaseDeployment, decorator: Google::Apis::MigrationcenterV1alpha1::SqlServerDatabaseDeployment::Representation
      
          property :topology, as: 'topology', class: Google::Apis::MigrationcenterV1alpha1::DatabaseDeploymentTopology, decorator: Google::Apis::MigrationcenterV1alpha1::DatabaseDeploymentTopology::Representation
      
          property :version, as: 'version'
        end
      end
      
      class DatabaseDeploymentDetailsAggregatedStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :database_count, as: 'databaseCount'
        end
      end
      
      class DatabaseDeploymentTopology
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :core_count, as: 'coreCount'
          property :core_limit, as: 'coreLimit'
          property :disk_allocated_bytes, :numeric_string => true, as: 'diskAllocatedBytes'
          property :disk_used_bytes, :numeric_string => true, as: 'diskUsedBytes'
          collection :instances, as: 'instances', class: Google::Apis::MigrationcenterV1alpha1::DatabaseInstance, decorator: Google::Apis::MigrationcenterV1alpha1::DatabaseInstance::Representation
      
          property :memory_bytes, :numeric_string => true, as: 'memoryBytes'
          property :memory_limit_bytes, :numeric_string => true, as: 'memoryLimitBytes'
          property :physical_core_count, as: 'physicalCoreCount'
          property :physical_core_limit, as: 'physicalCoreLimit'
        end
      end
      
      class DatabaseDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allocated_storage_bytes, :numeric_string => true, as: 'allocatedStorageBytes'
          property :database_name, as: 'databaseName'
          property :parent_database_deployment, as: 'parentDatabaseDeployment', class: Google::Apis::MigrationcenterV1alpha1::DatabaseDetailsParentDatabaseDeployment, decorator: Google::Apis::MigrationcenterV1alpha1::DatabaseDetailsParentDatabaseDeployment::Representation
      
          collection :schemas, as: 'schemas', class: Google::Apis::MigrationcenterV1alpha1::DatabaseSchema, decorator: Google::Apis::MigrationcenterV1alpha1::DatabaseSchema::Representation
      
        end
      end
      
      class DatabaseDetailsParentDatabaseDeployment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generated_id, as: 'generatedId'
          property :manual_unique_id, as: 'manualUniqueId'
        end
      end
      
      class DatabaseInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance_name, as: 'instanceName'
          property :network, as: 'network', class: Google::Apis::MigrationcenterV1alpha1::DatabaseInstanceNetwork, decorator: Google::Apis::MigrationcenterV1alpha1::DatabaseInstanceNetwork::Representation
      
          property :role, as: 'role'
        end
      end
      
      class DatabaseInstanceNetwork
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :host_names, as: 'hostNames'
          collection :ip_addresses, as: 'ipAddresses'
          property :primary_mac_address, as: 'primaryMacAddress'
        end
      end
      
      class DatabaseObjects
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :category, as: 'category'
          property :count, :numeric_string => true, as: 'count'
        end
      end
      
      class DatabasePreferences
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mssql_to_cloud_sql_for_sql_server_preferences, as: 'mssqlToCloudSqlForSqlServerPreferences', class: Google::Apis::MigrationcenterV1alpha1::DatabasePreferencesCloudSqlSqlServer, decorator: Google::Apis::MigrationcenterV1alpha1::DatabasePreferencesCloudSqlSqlServer::Representation
      
          property :mysql_to_cloud_sql_for_mysql_preferences, as: 'mysqlToCloudSqlForMysqlPreferences', class: Google::Apis::MigrationcenterV1alpha1::DatabasePreferencesCloudSqlMySql, decorator: Google::Apis::MigrationcenterV1alpha1::DatabasePreferencesCloudSqlMySql::Representation
      
          property :postgresql_to_cloud_sql_for_postgresql_preferences, as: 'postgresqlToCloudSqlForPostgresqlPreferences', class: Google::Apis::MigrationcenterV1alpha1::DatabasePreferencesCloudSqlPostgreSql, decorator: Google::Apis::MigrationcenterV1alpha1::DatabasePreferencesCloudSqlPostgreSql::Representation
      
        end
      end
      
      class DatabasePreferencesCloudSqlCommon
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup, as: 'backup', class: Google::Apis::MigrationcenterV1alpha1::DatabasePreferencesCloudSqlCommonBackup, decorator: Google::Apis::MigrationcenterV1alpha1::DatabasePreferencesCloudSqlCommonBackup::Representation
      
          property :commitment_plan, as: 'commitmentPlan'
          property :edition, as: 'edition'
          property :persistent_disk_type, as: 'persistentDiskType'
          property :sizing_optimization_strategy, as: 'sizingOptimizationStrategy'
          property :zone_availability, as: 'zoneAvailability'
        end
      end
      
      class DatabasePreferencesCloudSqlCommonBackup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_mode, as: 'backupMode'
        end
      end
      
      class DatabasePreferencesCloudSqlMySql
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common, as: 'common', class: Google::Apis::MigrationcenterV1alpha1::DatabasePreferencesCloudSqlCommon, decorator: Google::Apis::MigrationcenterV1alpha1::DatabasePreferencesCloudSqlCommon::Representation
      
        end
      end
      
      class DatabasePreferencesCloudSqlPostgreSql
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common, as: 'common', class: Google::Apis::MigrationcenterV1alpha1::DatabasePreferencesCloudSqlCommon, decorator: Google::Apis::MigrationcenterV1alpha1::DatabasePreferencesCloudSqlCommon::Representation
      
        end
      end
      
      class DatabasePreferencesCloudSqlSqlServer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common, as: 'common', class: Google::Apis::MigrationcenterV1alpha1::DatabasePreferencesCloudSqlCommon, decorator: Google::Apis::MigrationcenterV1alpha1::DatabasePreferencesCloudSqlCommon::Representation
      
          property :multithreading, as: 'multithreading'
          property :version_type, as: 'versionType'
        end
      end
      
      class DatabaseSchema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mysql, as: 'mysql', class: Google::Apis::MigrationcenterV1alpha1::MySqlSchemaDetails, decorator: Google::Apis::MigrationcenterV1alpha1::MySqlSchemaDetails::Representation
      
          collection :objects, as: 'objects', class: Google::Apis::MigrationcenterV1alpha1::DatabaseObjects, decorator: Google::Apis::MigrationcenterV1alpha1::DatabaseObjects::Representation
      
          property :postgresql, as: 'postgresql', class: Google::Apis::MigrationcenterV1alpha1::PostgreSqlSchemaDetails, decorator: Google::Apis::MigrationcenterV1alpha1::PostgreSqlSchemaDetails::Representation
      
          property :schema_name, as: 'schemaName'
          property :sql_server, as: 'sqlServer', class: Google::Apis::MigrationcenterV1alpha1::SqlServerSchemaDetails, decorator: Google::Apis::MigrationcenterV1alpha1::SqlServerSchemaDetails::Representation
      
          property :tables_size_bytes, :numeric_string => true, as: 'tablesSizeBytes'
        end
      end
      
      class Date
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :month, as: 'month'
          property :year, as: 'year'
        end
      end
      
      class DateTime
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :hours, as: 'hours'
          property :minutes, as: 'minutes'
          property :month, as: 'month'
          property :nanos, as: 'nanos'
          property :seconds, as: 'seconds'
          property :time_zone, as: 'timeZone', class: Google::Apis::MigrationcenterV1alpha1::TimeZone, decorator: Google::Apis::MigrationcenterV1alpha1::TimeZone::Representation
      
          property :utc_offset, as: 'utcOffset'
          property :year, as: 'year'
        end
      end
      
      class DetectedSoftware
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :software_family, as: 'softwareFamily'
          property :software_name, as: 'softwareName'
        end
      end
      
      class DiscoveryClient
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          collection :errors, as: 'errors', class: Google::Apis::MigrationcenterV1alpha1::Status, decorator: Google::Apis::MigrationcenterV1alpha1::Status::Representation
      
          property :expire_time, as: 'expireTime'
          property :heartbeat_time, as: 'heartbeatTime'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          collection :recommended_versions, as: 'recommendedVersions', class: Google::Apis::MigrationcenterV1alpha1::DiscoveryClientDiscoveryClientRecommendedVersion, decorator: Google::Apis::MigrationcenterV1alpha1::DiscoveryClientDiscoveryClientRecommendedVersion::Representation
      
          property :service_account, as: 'serviceAccount'
          property :signals_endpoint, as: 'signalsEndpoint'
          property :source, as: 'source'
          property :state, as: 'state'
          property :ttl, as: 'ttl'
          property :update_time, as: 'updateTime'
          property :version, as: 'version'
        end
      end
      
      class DiscoveryClientDiscoveryClientRecommendedVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri, as: 'uri'
          property :version, as: 'version'
        end
      end
      
      class DiskEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disk_label, as: 'diskLabel'
          property :disk_label_type, as: 'diskLabelType'
          property :hw_address, as: 'hwAddress'
          property :interface_type, as: 'interfaceType'
          property :partitions, as: 'partitions', class: Google::Apis::MigrationcenterV1alpha1::DiskPartitionList, decorator: Google::Apis::MigrationcenterV1alpha1::DiskPartitionList::Representation
      
          property :status, as: 'status'
          property :total_capacity_bytes, :numeric_string => true, as: 'totalCapacityBytes'
          property :total_free_bytes, :numeric_string => true, as: 'totalFreeBytes'
        end
      end
      
      class DiskEntryList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::MigrationcenterV1alpha1::DiskEntry, decorator: Google::Apis::MigrationcenterV1alpha1::DiskEntry::Representation
      
        end
      end
      
      class DiskPartition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :capacity_bytes, :numeric_string => true, as: 'capacityBytes'
          property :file_system, as: 'fileSystem'
          property :free_bytes, :numeric_string => true, as: 'freeBytes'
          property :mount_point, as: 'mountPoint'
          property :sub_partitions, as: 'subPartitions', class: Google::Apis::MigrationcenterV1alpha1::DiskPartitionList, decorator: Google::Apis::MigrationcenterV1alpha1::DiskPartitionList::Representation
      
          property :type, as: 'type'
          property :uuid, as: 'uuid'
        end
      end
      
      class DiskPartitionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :free_space_bytes, :numeric_string => true, as: 'freeSpaceBytes'
          property :partitions, as: 'partitions', class: Google::Apis::MigrationcenterV1alpha1::DiskPartitionList, decorator: Google::Apis::MigrationcenterV1alpha1::DiskPartitionList::Representation
      
          property :total_capacity_bytes, :numeric_string => true, as: 'totalCapacityBytes'
        end
      end
      
      class DiskPartitionList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::MigrationcenterV1alpha1::DiskPartition, decorator: Google::Apis::MigrationcenterV1alpha1::DiskPartition::Representation
      
        end
      end
      
      class DiskUsageSample
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :average_iops, as: 'averageIops'
          property :average_read_iops, as: 'averageReadIops'
          property :average_write_iops, as: 'averageWriteIops'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ErrorFrame
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ingestion_time, as: 'ingestionTime'
          property :name, as: 'name'
          property :original_frame, as: 'originalFrame', class: Google::Apis::MigrationcenterV1alpha1::AssetFrame, decorator: Google::Apis::MigrationcenterV1alpha1::AssetFrame::Representation
      
          collection :violations, as: 'violations', class: Google::Apis::MigrationcenterV1alpha1::FrameViolationEntry, decorator: Google::Apis::MigrationcenterV1alpha1::FrameViolationEntry::Representation
      
        end
      end
      
      class ExecutionReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :execution_errors, as: 'executionErrors', class: Google::Apis::MigrationcenterV1alpha1::ValidationReport, decorator: Google::Apis::MigrationcenterV1alpha1::ValidationReport::Representation
      
          property :frames_reported, as: 'framesReported'
          collection :job_errors, as: 'jobErrors', class: Google::Apis::MigrationcenterV1alpha1::ImportError, decorator: Google::Apis::MigrationcenterV1alpha1::ImportError::Representation
      
          property :total_rows_count, as: 'totalRowsCount'
        end
      end
      
      class FileValidationReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :file_errors, as: 'fileErrors', class: Google::Apis::MigrationcenterV1alpha1::ImportError, decorator: Google::Apis::MigrationcenterV1alpha1::ImportError::Representation
      
          property :file_name, as: 'fileName'
          property :partial_report, as: 'partialReport'
          collection :row_errors, as: 'rowErrors', class: Google::Apis::MigrationcenterV1alpha1::ImportRowError, decorator: Google::Apis::MigrationcenterV1alpha1::ImportRowError::Representation
      
        end
      end
      
      class FitDescriptor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fit_level, as: 'fitLevel'
        end
      end
      
      class FrameViolationEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field, as: 'field'
          property :violation, as: 'violation'
        end
      end
      
      class Frames
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :frames_data, as: 'framesData', class: Google::Apis::MigrationcenterV1alpha1::AssetFrame, decorator: Google::Apis::MigrationcenterV1alpha1::AssetFrame::Representation
      
        end
      end
      
      class FstabEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file, as: 'file'
          property :freq, as: 'freq'
          property :mntops, as: 'mntops'
          property :passno, as: 'passno'
          property :spec, as: 'spec'
          property :vfstype, as: 'vfstype'
        end
      end
      
      class FstabEntryList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::MigrationcenterV1alpha1::FstabEntry, decorator: Google::Apis::MigrationcenterV1alpha1::FstabEntry::Representation
      
        end
      end
      
      class GcsPayloadInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :format, as: 'format'
          property :path, as: 'path'
        end
      end
      
      class GenericInsight
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_information, as: 'additionalInformation'
          property :default_message, as: 'defaultMessage'
          property :message_id, :numeric_string => true, as: 'messageId'
        end
      end
      
      class GenericPlatformDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hyperthreading, as: 'hyperthreading'
          property :location, as: 'location'
        end
      end
      
      class GoogleKubernetesEngineMigrationTarget
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Group
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GuestConfigDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fstab, as: 'fstab', class: Google::Apis::MigrationcenterV1alpha1::FstabEntryList, decorator: Google::Apis::MigrationcenterV1alpha1::FstabEntryList::Representation
      
          property :hosts, as: 'hosts', class: Google::Apis::MigrationcenterV1alpha1::HostsEntryList, decorator: Google::Apis::MigrationcenterV1alpha1::HostsEntryList::Representation
      
          property :issue, as: 'issue'
          property :nfs_exports, as: 'nfsExports', class: Google::Apis::MigrationcenterV1alpha1::NfsExportList, decorator: Google::Apis::MigrationcenterV1alpha1::NfsExportList::Representation
      
          property :selinux, as: 'selinux', class: Google::Apis::MigrationcenterV1alpha1::Selinux, decorator: Google::Apis::MigrationcenterV1alpha1::Selinux::Representation
      
        end
      end
      
      class GuestInstalledApplication
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :licenses, as: 'licenses'
          property :name, as: 'name'
          property :path, as: 'path'
          property :time, as: 'time'
          property :vendor, as: 'vendor'
          property :version, as: 'version'
        end
      end
      
      class GuestInstalledApplicationList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::MigrationcenterV1alpha1::GuestInstalledApplication, decorator: Google::Apis::MigrationcenterV1alpha1::GuestInstalledApplication::Representation
      
        end
      end
      
      class GuestOsDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config, as: 'config', class: Google::Apis::MigrationcenterV1alpha1::GuestConfigDetails, decorator: Google::Apis::MigrationcenterV1alpha1::GuestConfigDetails::Representation
      
          property :runtime, as: 'runtime', class: Google::Apis::MigrationcenterV1alpha1::GuestRuntimeDetails, decorator: Google::Apis::MigrationcenterV1alpha1::GuestRuntimeDetails::Representation
      
        end
      end
      
      class GuestRuntimeDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :domain, as: 'domain'
          property :installed_apps, as: 'installedApps', class: Google::Apis::MigrationcenterV1alpha1::GuestInstalledApplicationList, decorator: Google::Apis::MigrationcenterV1alpha1::GuestInstalledApplicationList::Representation
      
          property :last_uptime, as: 'lastUptime', class: Google::Apis::MigrationcenterV1alpha1::Date, decorator: Google::Apis::MigrationcenterV1alpha1::Date::Representation
      
          property :machine_name, as: 'machineName'
          property :network_info, as: 'networkInfo', class: Google::Apis::MigrationcenterV1alpha1::RuntimeNetworkInfo, decorator: Google::Apis::MigrationcenterV1alpha1::RuntimeNetworkInfo::Representation
      
          property :open_file_list, as: 'openFileList', class: Google::Apis::MigrationcenterV1alpha1::OpenFileList, decorator: Google::Apis::MigrationcenterV1alpha1::OpenFileList::Representation
      
          property :processes, as: 'processes', class: Google::Apis::MigrationcenterV1alpha1::RunningProcessList, decorator: Google::Apis::MigrationcenterV1alpha1::RunningProcessList::Representation
      
          property :services, as: 'services', class: Google::Apis::MigrationcenterV1alpha1::RunningServiceList, decorator: Google::Apis::MigrationcenterV1alpha1::RunningServiceList::Representation
      
        end
      end
      
      class HostsEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :host_names, as: 'hostNames'
          property :ip, as: 'ip'
        end
      end
      
      class HostsEntryList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::MigrationcenterV1alpha1::HostsEntry, decorator: Google::Apis::MigrationcenterV1alpha1::HostsEntry::Representation
      
        end
      end
      
      class ImportDataFile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :format, as: 'format'
          property :name, as: 'name'
          property :state, as: 'state'
          property :upload_file_info, as: 'uploadFileInfo', class: Google::Apis::MigrationcenterV1alpha1::UploadFileInfo, decorator: Google::Apis::MigrationcenterV1alpha1::UploadFileInfo::Representation
      
        end
      end
      
      class ImportError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_details, as: 'errorDetails'
          property :severity, as: 'severity'
        end
      end
      
      class ImportJob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :asset_source, as: 'assetSource'
          property :complete_time, as: 'completeTime'
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :execution_report, as: 'executionReport', class: Google::Apis::MigrationcenterV1alpha1::ExecutionReport, decorator: Google::Apis::MigrationcenterV1alpha1::ExecutionReport::Representation
      
          property :gcs_payload, as: 'gcsPayload', class: Google::Apis::MigrationcenterV1alpha1::GcsPayloadInfo, decorator: Google::Apis::MigrationcenterV1alpha1::GcsPayloadInfo::Representation
      
          property :inline_payload, as: 'inlinePayload', class: Google::Apis::MigrationcenterV1alpha1::InlinePayloadInfo, decorator: Google::Apis::MigrationcenterV1alpha1::InlinePayloadInfo::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
          property :validation_report, as: 'validationReport', class: Google::Apis::MigrationcenterV1alpha1::ValidationReport, decorator: Google::Apis::MigrationcenterV1alpha1::ValidationReport::Representation
      
        end
      end
      
      class ImportRowError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :archive_error, as: 'archiveError', class: Google::Apis::MigrationcenterV1alpha1::ImportRowErrorArchiveErrorDetails, decorator: Google::Apis::MigrationcenterV1alpha1::ImportRowErrorArchiveErrorDetails::Representation
      
          property :asset_title, as: 'assetTitle'
          property :csv_error, as: 'csvError', class: Google::Apis::MigrationcenterV1alpha1::ImportRowErrorCsvErrorDetails, decorator: Google::Apis::MigrationcenterV1alpha1::ImportRowErrorCsvErrorDetails::Representation
      
          collection :errors, as: 'errors', class: Google::Apis::MigrationcenterV1alpha1::ImportError, decorator: Google::Apis::MigrationcenterV1alpha1::ImportError::Representation
      
          property :row_number, as: 'rowNumber'
          property :vm_name, as: 'vmName'
          property :vm_uuid, as: 'vmUuid'
          property :xlsx_error, as: 'xlsxError', class: Google::Apis::MigrationcenterV1alpha1::ImportRowErrorXlsxErrorDetails, decorator: Google::Apis::MigrationcenterV1alpha1::ImportRowErrorXlsxErrorDetails::Representation
      
        end
      end
      
      class ImportRowErrorArchiveErrorDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :csv_error, as: 'csvError', class: Google::Apis::MigrationcenterV1alpha1::ImportRowErrorCsvErrorDetails, decorator: Google::Apis::MigrationcenterV1alpha1::ImportRowErrorCsvErrorDetails::Representation
      
          property :file_path, as: 'filePath'
        end
      end
      
      class ImportRowErrorCsvErrorDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :row_number, as: 'rowNumber'
        end
      end
      
      class ImportRowErrorXlsxErrorDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :row_number, as: 'rowNumber'
          property :sheet, as: 'sheet'
        end
      end
      
      class InlinePayloadInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :format, as: 'format'
          collection :payload, as: 'payload', class: Google::Apis::MigrationcenterV1alpha1::PayloadFile, decorator: Google::Apis::MigrationcenterV1alpha1::PayloadFile::Representation
      
        end
      end
      
      class Insight
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_insight, as: 'genericInsight', class: Google::Apis::MigrationcenterV1alpha1::GenericInsight, decorator: Google::Apis::MigrationcenterV1alpha1::GenericInsight::Representation
      
          property :migration_insight, as: 'migrationInsight', class: Google::Apis::MigrationcenterV1alpha1::MigrationInsight, decorator: Google::Apis::MigrationcenterV1alpha1::MigrationInsight::Representation
      
          property :software_insight, as: 'softwareInsight', class: Google::Apis::MigrationcenterV1alpha1::SoftwareInsight, decorator: Google::Apis::MigrationcenterV1alpha1::SoftwareInsight::Representation
      
        end
      end
      
      class InsightList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :insights, as: 'insights', class: Google::Apis::MigrationcenterV1alpha1::Insight, decorator: Google::Apis::MigrationcenterV1alpha1::Insight::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class Issue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compatibility_issue, as: 'compatibilityIssue', class: Google::Apis::MigrationcenterV1alpha1::IssueCompatibilityIssue, decorator: Google::Apis::MigrationcenterV1alpha1::IssueCompatibilityIssue::Representation
      
          property :description, as: 'description'
          property :issue_code, as: 'issueCode'
        end
      end
      
      class IssueCompatibilityIssue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :associated_object, as: 'associatedObject'
          property :associated_object_type, as: 'associatedObjectType'
          property :associated_value, as: 'associatedValue'
          property :category, as: 'category'
        end
      end
      
      class ListAssetsExportJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :assets_export_jobs, as: 'assetsExportJobs', class: Google::Apis::MigrationcenterV1alpha1::AssetsExportJob, decorator: Google::Apis::MigrationcenterV1alpha1::AssetsExportJob::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListAssetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :assets, as: 'assets', class: Google::Apis::MigrationcenterV1alpha1::Asset, decorator: Google::Apis::MigrationcenterV1alpha1::Asset::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListDiscoveryClientsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :discovery_clients, as: 'discoveryClients', class: Google::Apis::MigrationcenterV1alpha1::DiscoveryClient, decorator: Google::Apis::MigrationcenterV1alpha1::DiscoveryClient::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListErrorFramesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_frames, as: 'errorFrames', class: Google::Apis::MigrationcenterV1alpha1::ErrorFrame, decorator: Google::Apis::MigrationcenterV1alpha1::ErrorFrame::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListGroupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :groups, as: 'groups', class: Google::Apis::MigrationcenterV1alpha1::Group, decorator: Google::Apis::MigrationcenterV1alpha1::Group::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListImportDataFilesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :import_data_files, as: 'importDataFiles', class: Google::Apis::MigrationcenterV1alpha1::ImportDataFile, decorator: Google::Apis::MigrationcenterV1alpha1::ImportDataFile::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListImportJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :import_jobs, as: 'importJobs', class: Google::Apis::MigrationcenterV1alpha1::ImportJob, decorator: Google::Apis::MigrationcenterV1alpha1::ImportJob::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::MigrationcenterV1alpha1::Location, decorator: Google::Apis::MigrationcenterV1alpha1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::MigrationcenterV1alpha1::Operation, decorator: Google::Apis::MigrationcenterV1alpha1::Operation::Representation
      
        end
      end
      
      class ListPreferenceSetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :preference_sets, as: 'preferenceSets', class: Google::Apis::MigrationcenterV1alpha1::PreferenceSet, decorator: Google::Apis::MigrationcenterV1alpha1::PreferenceSet::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListRelationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :relations, as: 'relations', class: Google::Apis::MigrationcenterV1alpha1::Relation, decorator: Google::Apis::MigrationcenterV1alpha1::Relation::Representation
      
        end
      end
      
      class ListReportConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :report_configs, as: 'reportConfigs', class: Google::Apis::MigrationcenterV1alpha1::ReportConfig, decorator: Google::Apis::MigrationcenterV1alpha1::ReportConfig::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListReportsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :reports, as: 'reports', class: Google::Apis::MigrationcenterV1alpha1::Report, decorator: Google::Apis::MigrationcenterV1alpha1::Report::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListSourcesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :sources, as: 'sources', class: Google::Apis::MigrationcenterV1alpha1::Source, decorator: Google::Apis::MigrationcenterV1alpha1::Source::Representation
      
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
      
      class MachineArchitectureDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bios, as: 'bios', class: Google::Apis::MigrationcenterV1alpha1::BiosDetails, decorator: Google::Apis::MigrationcenterV1alpha1::BiosDetails::Representation
      
          property :cpu_architecture, as: 'cpuArchitecture'
          property :cpu_manufacturer, as: 'cpuManufacturer'
          property :cpu_name, as: 'cpuName'
          property :cpu_socket_count, as: 'cpuSocketCount'
          property :firmware_type, as: 'firmwareType'
          property :hyperthreading, as: 'hyperthreading'
          property :vendor, as: 'vendor'
        end
      end
      
      class MachineDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :architecture, as: 'architecture', class: Google::Apis::MigrationcenterV1alpha1::MachineArchitectureDetails, decorator: Google::Apis::MigrationcenterV1alpha1::MachineArchitectureDetails::Representation
      
          property :core_count, as: 'coreCount'
          property :create_time, as: 'createTime'
          property :disk_partitions, as: 'diskPartitions', class: Google::Apis::MigrationcenterV1alpha1::DiskPartitionDetails, decorator: Google::Apis::MigrationcenterV1alpha1::DiskPartitionDetails::Representation
      
          property :disks, as: 'disks', class: Google::Apis::MigrationcenterV1alpha1::MachineDiskDetails, decorator: Google::Apis::MigrationcenterV1alpha1::MachineDiskDetails::Representation
      
          property :guest_os, as: 'guestOs', class: Google::Apis::MigrationcenterV1alpha1::GuestOsDetails, decorator: Google::Apis::MigrationcenterV1alpha1::GuestOsDetails::Representation
      
          property :machine_name, as: 'machineName'
          property :memory_mb, as: 'memoryMb'
          property :network, as: 'network', class: Google::Apis::MigrationcenterV1alpha1::MachineNetworkDetails, decorator: Google::Apis::MigrationcenterV1alpha1::MachineNetworkDetails::Representation
      
          property :platform, as: 'platform', class: Google::Apis::MigrationcenterV1alpha1::PlatformDetails, decorator: Google::Apis::MigrationcenterV1alpha1::PlatformDetails::Representation
      
          property :power_state, as: 'powerState'
          property :uuid, as: 'uuid'
        end
      end
      
      class MachineDiskDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disks, as: 'disks', class: Google::Apis::MigrationcenterV1alpha1::DiskEntryList, decorator: Google::Apis::MigrationcenterV1alpha1::DiskEntryList::Representation
      
          property :raw_scan_result, as: 'rawScanResult'
          property :total_capacity_bytes, :numeric_string => true, as: 'totalCapacityBytes'
          property :total_free_bytes, :numeric_string => true, as: 'totalFreeBytes'
        end
      end
      
      class MachineNetworkDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_gateway, as: 'defaultGateway'
          property :network_adapters, as: 'networkAdapters', class: Google::Apis::MigrationcenterV1alpha1::NetworkAdapterList, decorator: Google::Apis::MigrationcenterV1alpha1::NetworkAdapterList::Representation
      
          property :primary_ip_address, as: 'primaryIpAddress'
          property :primary_mac_address, as: 'primaryMacAddress'
          property :public_ip_address, as: 'publicIpAddress'
        end
      end
      
      class MachinePreferences
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_machine_series, as: 'allowedMachineSeries', class: Google::Apis::MigrationcenterV1alpha1::MachineSeries, decorator: Google::Apis::MigrationcenterV1alpha1::MachineSeries::Representation
      
        end
      end
      
      class MachineSeries
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
        end
      end
      
      class MemoryUsageSample
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :utilized_percentage, as: 'utilizedPercentage'
        end
      end
      
      class MigrationInsight
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_database_target, as: 'cloudDatabaseTarget', class: Google::Apis::MigrationcenterV1alpha1::CloudDatabaseMigrationTarget, decorator: Google::Apis::MigrationcenterV1alpha1::CloudDatabaseMigrationTarget::Representation
      
          property :compute_engine_sole_tenant_target, as: 'computeEngineSoleTenantTarget', class: Google::Apis::MigrationcenterV1alpha1::ComputeEngineSoleTenantMigrationTarget, decorator: Google::Apis::MigrationcenterV1alpha1::ComputeEngineSoleTenantMigrationTarget::Representation
      
          property :compute_engine_target, as: 'computeEngineTarget', class: Google::Apis::MigrationcenterV1alpha1::ComputeEngineMigrationTarget, decorator: Google::Apis::MigrationcenterV1alpha1::ComputeEngineMigrationTarget::Representation
      
          property :fit, as: 'fit', class: Google::Apis::MigrationcenterV1alpha1::FitDescriptor, decorator: Google::Apis::MigrationcenterV1alpha1::FitDescriptor::Representation
      
          property :gke_target, as: 'gkeTarget', class: Google::Apis::MigrationcenterV1alpha1::GoogleKubernetesEngineMigrationTarget, decorator: Google::Apis::MigrationcenterV1alpha1::GoogleKubernetesEngineMigrationTarget::Representation
      
          collection :issues, as: 'issues', class: Google::Apis::MigrationcenterV1alpha1::Issue, decorator: Google::Apis::MigrationcenterV1alpha1::Issue::Representation
      
          property :vmware_engine_target, as: 'vmwareEngineTarget', class: Google::Apis::MigrationcenterV1alpha1::VmwareEngineMigrationTarget, decorator: Google::Apis::MigrationcenterV1alpha1::VmwareEngineMigrationTarget::Representation
      
        end
      end
      
      class Money
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :currency_code, as: 'currencyCode'
          property :nanos, as: 'nanos'
          property :units, :numeric_string => true, as: 'units'
        end
      end
      
      class MySqlPlugin
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :plugin, as: 'plugin'
          property :version, as: 'version'
        end
      end
      
      class MySqlProperty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :numeric_value, :numeric_string => true, as: 'numericValue'
          property :property, as: 'property'
        end
      end
      
      class MySqlSchemaDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :storage_engines, as: 'storageEngines', class: Google::Apis::MigrationcenterV1alpha1::MySqlStorageEngineDetails, decorator: Google::Apis::MigrationcenterV1alpha1::MySqlStorageEngineDetails::Representation
      
        end
      end
      
      class MySqlStorageEngineDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encrypted_table_count, as: 'encryptedTableCount'
          property :engine, as: 'engine'
          property :table_count, as: 'tableCount'
        end
      end
      
      class MySqlVariable
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :category, as: 'category'
          property :value, as: 'value'
          property :variable, as: 'variable'
        end
      end
      
      class MysqlDatabaseDeployment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :plugins, as: 'plugins', class: Google::Apis::MigrationcenterV1alpha1::MySqlPlugin, decorator: Google::Apis::MigrationcenterV1alpha1::MySqlPlugin::Representation
      
          collection :properties, as: 'properties', class: Google::Apis::MigrationcenterV1alpha1::MySqlProperty, decorator: Google::Apis::MigrationcenterV1alpha1::MySqlProperty::Representation
      
          property :resource_groups_count, as: 'resourceGroupsCount'
          collection :variables, as: 'variables', class: Google::Apis::MigrationcenterV1alpha1::MySqlVariable, decorator: Google::Apis::MigrationcenterV1alpha1::MySqlVariable::Representation
      
        end
      end
      
      class NetworkAdapterDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :adapter_type, as: 'adapterType'
          property :addresses, as: 'addresses', class: Google::Apis::MigrationcenterV1alpha1::NetworkAddressList, decorator: Google::Apis::MigrationcenterV1alpha1::NetworkAddressList::Representation
      
          property :mac_address, as: 'macAddress'
        end
      end
      
      class NetworkAdapterList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :network_adapters, as: 'networkAdapters', class: Google::Apis::MigrationcenterV1alpha1::NetworkAdapterDetails, decorator: Google::Apis::MigrationcenterV1alpha1::NetworkAdapterDetails::Representation
      
        end
      end
      
      class NetworkAddress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :assignment, as: 'assignment'
          property :bcast, as: 'bcast'
          property :fqdn, as: 'fqdn'
          property :ip_address, as: 'ipAddress'
          property :subnet_mask, as: 'subnetMask'
        end
      end
      
      class NetworkAddressList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :addresses, as: 'addresses', class: Google::Apis::MigrationcenterV1alpha1::NetworkAddress, decorator: Google::Apis::MigrationcenterV1alpha1::NetworkAddress::Representation
      
        end
      end
      
      class NetworkConnection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :local_ip_address, as: 'localIpAddress'
          property :local_port, as: 'localPort'
          property :pid, :numeric_string => true, as: 'pid'
          property :process_name, as: 'processName'
          property :protocol, as: 'protocol'
          property :remote_ip_address, as: 'remoteIpAddress'
          property :remote_port, as: 'remotePort'
          property :state, as: 'state'
        end
      end
      
      class NetworkConnectionList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::MigrationcenterV1alpha1::NetworkConnection, decorator: Google::Apis::MigrationcenterV1alpha1::NetworkConnection::Representation
      
        end
      end
      
      class NetworkUsageSample
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :average_egress_bps, as: 'averageEgressBps'
          property :average_ingress_bps, as: 'averageIngressBps'
        end
      end
      
      class NfsExport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :export_directory, as: 'exportDirectory'
          collection :hosts, as: 'hosts'
        end
      end
      
      class NfsExportList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::MigrationcenterV1alpha1::NfsExport, decorator: Google::Apis::MigrationcenterV1alpha1::NfsExport::Representation
      
        end
      end
      
      class OpenFileDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :command, as: 'command'
          property :file_path, as: 'filePath'
          property :file_type, as: 'fileType'
          property :user, as: 'user'
        end
      end
      
      class OpenFileList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::MigrationcenterV1alpha1::OpenFileDetails, decorator: Google::Apis::MigrationcenterV1alpha1::OpenFileDetails::Representation
      
        end
      end
      
      class OperatingSystemPricingPreferences
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rhel, as: 'rhel', class: Google::Apis::MigrationcenterV1alpha1::OperatingSystemPricingPreferencesOperatingSystemPricing, decorator: Google::Apis::MigrationcenterV1alpha1::OperatingSystemPricingPreferencesOperatingSystemPricing::Representation
      
          property :sles, as: 'sles', class: Google::Apis::MigrationcenterV1alpha1::OperatingSystemPricingPreferencesOperatingSystemPricing, decorator: Google::Apis::MigrationcenterV1alpha1::OperatingSystemPricingPreferencesOperatingSystemPricing::Representation
      
          property :sles_for_sap, as: 'slesForSap', class: Google::Apis::MigrationcenterV1alpha1::OperatingSystemPricingPreferencesOperatingSystemPricing, decorator: Google::Apis::MigrationcenterV1alpha1::OperatingSystemPricingPreferencesOperatingSystemPricing::Representation
      
          property :windows, as: 'windows', class: Google::Apis::MigrationcenterV1alpha1::OperatingSystemPricingPreferencesOperatingSystemPricing, decorator: Google::Apis::MigrationcenterV1alpha1::OperatingSystemPricingPreferencesOperatingSystemPricing::Representation
      
        end
      end
      
      class OperatingSystemPricingPreferencesOperatingSystemPricing
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :commitment_plan, as: 'commitmentPlan'
          property :license_type, as: 'licenseType'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::MigrationcenterV1alpha1::Status, decorator: Google::Apis::MigrationcenterV1alpha1::Status::Representation
      
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
          property :verb, as: 'verb'
        end
      end
      
      class OutputFile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :csv_output_file, as: 'csvOutputFile', class: Google::Apis::MigrationcenterV1alpha1::CsvOutputFile, decorator: Google::Apis::MigrationcenterV1alpha1::CsvOutputFile::Representation
      
          property :file_size_bytes, as: 'fileSizeBytes'
          property :xlsx_output_file, as: 'xlsxOutputFile', class: Google::Apis::MigrationcenterV1alpha1::XlsxOutputFile, decorator: Google::Apis::MigrationcenterV1alpha1::XlsxOutputFile::Representation
      
        end
      end
      
      class OutputFileList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::MigrationcenterV1alpha1::OutputFile, decorator: Google::Apis::MigrationcenterV1alpha1::OutputFile::Representation
      
        end
      end
      
      class PayloadFile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data, :base64 => true, as: 'data'
          property :name, as: 'name'
        end
      end
      
      class PerformanceSample
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cpu, as: 'cpu', class: Google::Apis::MigrationcenterV1alpha1::CpuUsageSample, decorator: Google::Apis::MigrationcenterV1alpha1::CpuUsageSample::Representation
      
          property :disk, as: 'disk', class: Google::Apis::MigrationcenterV1alpha1::DiskUsageSample, decorator: Google::Apis::MigrationcenterV1alpha1::DiskUsageSample::Representation
      
          property :memory, as: 'memory', class: Google::Apis::MigrationcenterV1alpha1::MemoryUsageSample, decorator: Google::Apis::MigrationcenterV1alpha1::MemoryUsageSample::Representation
      
          property :network, as: 'network', class: Google::Apis::MigrationcenterV1alpha1::NetworkUsageSample, decorator: Google::Apis::MigrationcenterV1alpha1::NetworkUsageSample::Representation
      
          property :sample_time, as: 'sampleTime'
        end
      end
      
      class PhysicalPlatformDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hyperthreading, as: 'hyperthreading'
          property :location, as: 'location'
        end
      end
      
      class PlatformDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aws_ec2_details, as: 'awsEc2Details', class: Google::Apis::MigrationcenterV1alpha1::AwsEc2PlatformDetails, decorator: Google::Apis::MigrationcenterV1alpha1::AwsEc2PlatformDetails::Representation
      
          property :azure_vm_details, as: 'azureVmDetails', class: Google::Apis::MigrationcenterV1alpha1::AzureVmPlatformDetails, decorator: Google::Apis::MigrationcenterV1alpha1::AzureVmPlatformDetails::Representation
      
          property :generic_details, as: 'genericDetails', class: Google::Apis::MigrationcenterV1alpha1::GenericPlatformDetails, decorator: Google::Apis::MigrationcenterV1alpha1::GenericPlatformDetails::Representation
      
          property :physical_details, as: 'physicalDetails', class: Google::Apis::MigrationcenterV1alpha1::PhysicalPlatformDetails, decorator: Google::Apis::MigrationcenterV1alpha1::PhysicalPlatformDetails::Representation
      
          property :vmware_details, as: 'vmwareDetails', class: Google::Apis::MigrationcenterV1alpha1::VmwarePlatformDetails, decorator: Google::Apis::MigrationcenterV1alpha1::VmwarePlatformDetails::Representation
      
        end
      end
      
      class PostgreSqlDatabaseDeployment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :properties, as: 'properties', class: Google::Apis::MigrationcenterV1alpha1::PostgreSqlProperty, decorator: Google::Apis::MigrationcenterV1alpha1::PostgreSqlProperty::Representation
      
          collection :settings, as: 'settings', class: Google::Apis::MigrationcenterV1alpha1::PostgreSqlSetting, decorator: Google::Apis::MigrationcenterV1alpha1::PostgreSqlSetting::Representation
      
        end
      end
      
      class PostgreSqlExtension
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :extension, as: 'extension'
          property :version, as: 'version'
        end
      end
      
      class PostgreSqlProperty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :numeric_value, :numeric_string => true, as: 'numericValue'
          property :property, as: 'property'
        end
      end
      
      class PostgreSqlSchemaDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :foreign_tables_count, as: 'foreignTablesCount'
          collection :postgresql_extensions, as: 'postgresqlExtensions', class: Google::Apis::MigrationcenterV1alpha1::PostgreSqlExtension, decorator: Google::Apis::MigrationcenterV1alpha1::PostgreSqlExtension::Representation
      
        end
      end
      
      class PostgreSqlSetting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bool_value, as: 'boolValue'
          property :int_value, :numeric_string => true, as: 'intValue'
          property :real_value, as: 'realValue'
          property :setting, as: 'setting'
          property :source, as: 'source'
          property :string_value, as: 'stringValue'
          property :unit, as: 'unit'
        end
      end
      
      class PreferenceSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :database_preferences, as: 'databasePreferences', class: Google::Apis::MigrationcenterV1alpha1::DatabasePreferences, decorator: Google::Apis::MigrationcenterV1alpha1::DatabasePreferences::Representation
      
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :region_preferences, as: 'regionPreferences', class: Google::Apis::MigrationcenterV1alpha1::RegionPreferences, decorator: Google::Apis::MigrationcenterV1alpha1::RegionPreferences::Representation
      
          property :update_time, as: 'updateTime'
          property :virtual_machine_preferences, as: 'virtualMachinePreferences', class: Google::Apis::MigrationcenterV1alpha1::VirtualMachinePreferences, decorator: Google::Apis::MigrationcenterV1alpha1::VirtualMachinePreferences::Representation
      
        end
      end
      
      class RegionPreferences
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :preferred_regions, as: 'preferredRegions'
        end
      end
      
      class Relation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :dst_asset, as: 'dstAsset'
          property :name, as: 'name'
          property :src_asset, as: 'srcAsset'
          property :type, as: 'type'
        end
      end
      
      class RemoveAssetsFromGroupRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_missing, as: 'allowMissing'
          property :assets, as: 'assets', class: Google::Apis::MigrationcenterV1alpha1::AssetList, decorator: Google::Apis::MigrationcenterV1alpha1::AssetList::Representation
      
          property :request_id, as: 'requestId'
        end
      end
      
      class Report
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :state, as: 'state'
          property :summary, as: 'summary', class: Google::Apis::MigrationcenterV1alpha1::ReportSummary, decorator: Google::Apis::MigrationcenterV1alpha1::ReportSummary::Representation
      
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
        end
      end
      
      class ReportAssetFramesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ReportConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          collection :group_preferenceset_assignments, as: 'groupPreferencesetAssignments', class: Google::Apis::MigrationcenterV1alpha1::ReportConfigGroupPreferenceSetAssignment, decorator: Google::Apis::MigrationcenterV1alpha1::ReportConfigGroupPreferenceSetAssignment::Representation
      
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
        end
      end
      
      class ReportConfigGroupPreferenceSetAssignment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :group, as: 'group'
          property :preference_set, as: 'preferenceSet'
        end
      end
      
      class ReportSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :all_assets_stats, as: 'allAssetsStats', class: Google::Apis::MigrationcenterV1alpha1::ReportSummaryAssetAggregateStats, decorator: Google::Apis::MigrationcenterV1alpha1::ReportSummaryAssetAggregateStats::Representation
      
          property :database_stats, as: 'databaseStats', class: Google::Apis::MigrationcenterV1alpha1::ReportSummaryAssetAggregateStats, decorator: Google::Apis::MigrationcenterV1alpha1::ReportSummaryAssetAggregateStats::Representation
      
          collection :group_findings, as: 'groupFindings', class: Google::Apis::MigrationcenterV1alpha1::ReportSummaryGroupFinding, decorator: Google::Apis::MigrationcenterV1alpha1::ReportSummaryGroupFinding::Representation
      
          property :virtual_machine_stats, as: 'virtualMachineStats', class: Google::Apis::MigrationcenterV1alpha1::ReportSummaryAssetAggregateStats, decorator: Google::Apis::MigrationcenterV1alpha1::ReportSummaryAssetAggregateStats::Representation
      
        end
      end
      
      class ReportSummaryAssetAggregateStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :asset_age, as: 'assetAge', class: Google::Apis::MigrationcenterV1alpha1::ReportSummaryChartData, decorator: Google::Apis::MigrationcenterV1alpha1::ReportSummaryChartData::Representation
      
          property :core_count_histogram, as: 'coreCountHistogram', class: Google::Apis::MigrationcenterV1alpha1::ReportSummaryHistogramChartData, decorator: Google::Apis::MigrationcenterV1alpha1::ReportSummaryHistogramChartData::Representation
      
          property :database_types, as: 'databaseTypes', class: Google::Apis::MigrationcenterV1alpha1::ReportSummaryChartData, decorator: Google::Apis::MigrationcenterV1alpha1::ReportSummaryChartData::Representation
      
          property :memory_bytes_histogram, as: 'memoryBytesHistogram', class: Google::Apis::MigrationcenterV1alpha1::ReportSummaryHistogramChartData, decorator: Google::Apis::MigrationcenterV1alpha1::ReportSummaryHistogramChartData::Representation
      
          property :memory_utilization, as: 'memoryUtilization', class: Google::Apis::MigrationcenterV1alpha1::ReportSummaryChartData, decorator: Google::Apis::MigrationcenterV1alpha1::ReportSummaryChartData::Representation
      
          property :memory_utilization_chart, as: 'memoryUtilizationChart', class: Google::Apis::MigrationcenterV1alpha1::ReportSummaryUtilizationChartData, decorator: Google::Apis::MigrationcenterV1alpha1::ReportSummaryUtilizationChartData::Representation
      
          property :operating_system, as: 'operatingSystem', class: Google::Apis::MigrationcenterV1alpha1::ReportSummaryChartData, decorator: Google::Apis::MigrationcenterV1alpha1::ReportSummaryChartData::Representation
      
          property :storage_bytes_histogram, as: 'storageBytesHistogram', class: Google::Apis::MigrationcenterV1alpha1::ReportSummaryHistogramChartData, decorator: Google::Apis::MigrationcenterV1alpha1::ReportSummaryHistogramChartData::Representation
      
          property :storage_utilization, as: 'storageUtilization', class: Google::Apis::MigrationcenterV1alpha1::ReportSummaryChartData, decorator: Google::Apis::MigrationcenterV1alpha1::ReportSummaryChartData::Representation
      
          property :storage_utilization_chart, as: 'storageUtilizationChart', class: Google::Apis::MigrationcenterV1alpha1::ReportSummaryUtilizationChartData, decorator: Google::Apis::MigrationcenterV1alpha1::ReportSummaryUtilizationChartData::Representation
      
          property :total_assets, :numeric_string => true, as: 'totalAssets'
          property :total_cores, :numeric_string => true, as: 'totalCores'
          property :total_memory_bytes, :numeric_string => true, as: 'totalMemoryBytes'
          property :total_storage_bytes, :numeric_string => true, as: 'totalStorageBytes'
        end
      end
      
      class ReportSummaryChartData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_points, as: 'dataPoints', class: Google::Apis::MigrationcenterV1alpha1::ReportSummaryChartDataDataPoint, decorator: Google::Apis::MigrationcenterV1alpha1::ReportSummaryChartDataDataPoint::Representation
      
        end
      end
      
      class ReportSummaryChartDataDataPoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :label, as: 'label'
          property :value, as: 'value'
        end
      end
      
      class ReportSummaryDatabaseFinding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allocated_asset_count, :numeric_string => true, as: 'allocatedAssetCount'
          property :total_assets, :numeric_string => true, as: 'totalAssets'
        end
      end
      
      class ReportSummaryGroupFinding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :asset_aggregate_stats, as: 'assetAggregateStats', class: Google::Apis::MigrationcenterV1alpha1::ReportSummaryAssetAggregateStats, decorator: Google::Apis::MigrationcenterV1alpha1::ReportSummaryAssetAggregateStats::Representation
      
          property :asset_type, as: 'assetType'
          property :database_type, as: 'databaseType'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :group, as: 'group'
          property :overlapping_asset_count, :numeric_string => true, as: 'overlappingAssetCount'
          collection :preference_set_findings, as: 'preferenceSetFindings', class: Google::Apis::MigrationcenterV1alpha1::ReportSummaryGroupPreferenceSetFinding, decorator: Google::Apis::MigrationcenterV1alpha1::ReportSummaryGroupPreferenceSetFinding::Representation
      
        end
      end
      
      class ReportSummaryGroupPreferenceSetFinding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :database_finding, as: 'databaseFinding', class: Google::Apis::MigrationcenterV1alpha1::ReportSummaryDatabaseFinding, decorator: Google::Apis::MigrationcenterV1alpha1::ReportSummaryDatabaseFinding::Representation
      
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :machine_finding, as: 'machineFinding', class: Google::Apis::MigrationcenterV1alpha1::ReportSummaryMachineFinding, decorator: Google::Apis::MigrationcenterV1alpha1::ReportSummaryMachineFinding::Representation
      
          property :machine_preferences, as: 'machinePreferences', class: Google::Apis::MigrationcenterV1alpha1::VirtualMachinePreferences, decorator: Google::Apis::MigrationcenterV1alpha1::VirtualMachinePreferences::Representation
      
          property :monthly_cost_compute, as: 'monthlyCostCompute', class: Google::Apis::MigrationcenterV1alpha1::Money, decorator: Google::Apis::MigrationcenterV1alpha1::Money::Representation
      
          property :monthly_cost_database_backup, as: 'monthlyCostDatabaseBackup', class: Google::Apis::MigrationcenterV1alpha1::Money, decorator: Google::Apis::MigrationcenterV1alpha1::Money::Representation
      
          property :monthly_cost_database_licensing, as: 'monthlyCostDatabaseLicensing', class: Google::Apis::MigrationcenterV1alpha1::Money, decorator: Google::Apis::MigrationcenterV1alpha1::Money::Representation
      
          property :monthly_cost_gcve_protected, as: 'monthlyCostGcveProtected', class: Google::Apis::MigrationcenterV1alpha1::Money, decorator: Google::Apis::MigrationcenterV1alpha1::Money::Representation
      
          property :monthly_cost_network_egress, as: 'monthlyCostNetworkEgress', class: Google::Apis::MigrationcenterV1alpha1::Money, decorator: Google::Apis::MigrationcenterV1alpha1::Money::Representation
      
          property :monthly_cost_os_license, as: 'monthlyCostOsLicense', class: Google::Apis::MigrationcenterV1alpha1::Money, decorator: Google::Apis::MigrationcenterV1alpha1::Money::Representation
      
          property :monthly_cost_other, as: 'monthlyCostOther', class: Google::Apis::MigrationcenterV1alpha1::Money, decorator: Google::Apis::MigrationcenterV1alpha1::Money::Representation
      
          property :monthly_cost_portable_vmware_license, as: 'monthlyCostPortableVmwareLicense', class: Google::Apis::MigrationcenterV1alpha1::Money, decorator: Google::Apis::MigrationcenterV1alpha1::Money::Representation
      
          property :monthly_cost_storage, as: 'monthlyCostStorage', class: Google::Apis::MigrationcenterV1alpha1::Money, decorator: Google::Apis::MigrationcenterV1alpha1::Money::Representation
      
          property :monthly_cost_total, as: 'monthlyCostTotal', class: Google::Apis::MigrationcenterV1alpha1::Money, decorator: Google::Apis::MigrationcenterV1alpha1::Money::Representation
      
          property :preference_set, as: 'preferenceSet', class: Google::Apis::MigrationcenterV1alpha1::PreferenceSet, decorator: Google::Apis::MigrationcenterV1alpha1::PreferenceSet::Representation
      
          property :preferred_region, as: 'preferredRegion'
          property :pricing_track, as: 'pricingTrack'
          property :sole_tenant_finding, as: 'soleTenantFinding', class: Google::Apis::MigrationcenterV1alpha1::ReportSummarySoleTenantFinding, decorator: Google::Apis::MigrationcenterV1alpha1::ReportSummarySoleTenantFinding::Representation
      
          property :top_priority, as: 'topPriority'
          property :vmware_engine_finding, as: 'vmwareEngineFinding', class: Google::Apis::MigrationcenterV1alpha1::ReportSummaryVmWareEngineFinding, decorator: Google::Apis::MigrationcenterV1alpha1::ReportSummaryVmWareEngineFinding::Representation
      
        end
      end
      
      class ReportSummaryHistogramChartData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :buckets, as: 'buckets', class: Google::Apis::MigrationcenterV1alpha1::ReportSummaryHistogramChartDataBucket, decorator: Google::Apis::MigrationcenterV1alpha1::ReportSummaryHistogramChartDataBucket::Representation
      
        end
      end
      
      class ReportSummaryHistogramChartDataBucket
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, :numeric_string => true, as: 'count'
          property :lower_bound, :numeric_string => true, as: 'lowerBound'
          property :upper_bound, :numeric_string => true, as: 'upperBound'
        end
      end
      
      class ReportSummaryMachineFinding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allocated_asset_count, :numeric_string => true, as: 'allocatedAssetCount'
          collection :allocated_disk_types, as: 'allocatedDiskTypes'
          collection :allocated_regions, as: 'allocatedRegions'
          collection :machine_series_allocations, as: 'machineSeriesAllocations', class: Google::Apis::MigrationcenterV1alpha1::ReportSummaryMachineSeriesAllocation, decorator: Google::Apis::MigrationcenterV1alpha1::ReportSummaryMachineSeriesAllocation::Representation
      
        end
      end
      
      class ReportSummaryMachineSeriesAllocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allocated_asset_count, :numeric_string => true, as: 'allocatedAssetCount'
          property :machine_series, as: 'machineSeries', class: Google::Apis::MigrationcenterV1alpha1::MachineSeries, decorator: Google::Apis::MigrationcenterV1alpha1::MachineSeries::Representation
      
        end
      end
      
      class ReportSummarySoleTenantFinding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allocated_asset_count, :numeric_string => true, as: 'allocatedAssetCount'
          collection :allocated_regions, as: 'allocatedRegions'
          collection :node_allocations, as: 'nodeAllocations', class: Google::Apis::MigrationcenterV1alpha1::ReportSummarySoleTenantNodeAllocation, decorator: Google::Apis::MigrationcenterV1alpha1::ReportSummarySoleTenantNodeAllocation::Representation
      
        end
      end
      
      class ReportSummarySoleTenantNodeAllocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allocated_asset_count, :numeric_string => true, as: 'allocatedAssetCount'
          property :node, as: 'node', class: Google::Apis::MigrationcenterV1alpha1::SoleTenantNodeType, decorator: Google::Apis::MigrationcenterV1alpha1::SoleTenantNodeType::Representation
      
          property :node_count, :numeric_string => true, as: 'nodeCount'
        end
      end
      
      class ReportSummaryUtilizationChartData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :free, :numeric_string => true, as: 'free'
          property :used, :numeric_string => true, as: 'used'
        end
      end
      
      class ReportSummaryVmWareEngineFinding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allocated_asset_count, :numeric_string => true, as: 'allocatedAssetCount'
          collection :allocated_regions, as: 'allocatedRegions'
          collection :node_allocations, as: 'nodeAllocations', class: Google::Apis::MigrationcenterV1alpha1::ReportSummaryVmWareNodeAllocation, decorator: Google::Apis::MigrationcenterV1alpha1::ReportSummaryVmWareNodeAllocation::Representation
      
        end
      end
      
      class ReportSummaryVmWareNode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
        end
      end
      
      class ReportSummaryVmWareNodeAllocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allocated_asset_count, :numeric_string => true, as: 'allocatedAssetCount'
          property :node_count, :numeric_string => true, as: 'nodeCount'
          property :vmware_node, as: 'vmwareNode', class: Google::Apis::MigrationcenterV1alpha1::ReportSummaryVmWareNode, decorator: Google::Apis::MigrationcenterV1alpha1::ReportSummaryVmWareNode::Representation
      
        end
      end
      
      class RunAssetsExportJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_id, as: 'requestId'
        end
      end
      
      class RunAssetsExportJobResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :assets_export_job_execution, as: 'assetsExportJobExecution', class: Google::Apis::MigrationcenterV1alpha1::AssetsExportJobExecution, decorator: Google::Apis::MigrationcenterV1alpha1::AssetsExportJobExecution::Representation
      
        end
      end
      
      class RunImportJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_id, as: 'requestId'
        end
      end
      
      class RunningProcess
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attributes, as: 'attributes'
          property :cmdline, as: 'cmdline'
          property :exe_path, as: 'exePath'
          property :pid, :numeric_string => true, as: 'pid'
          property :user, as: 'user'
        end
      end
      
      class RunningProcessList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :processes, as: 'processes', class: Google::Apis::MigrationcenterV1alpha1::RunningProcess, decorator: Google::Apis::MigrationcenterV1alpha1::RunningProcess::Representation
      
        end
      end
      
      class RunningService
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cmdline, as: 'cmdline'
          property :exe_path, as: 'exePath'
          property :name, as: 'name'
          property :pid, :numeric_string => true, as: 'pid'
          property :start_mode, as: 'startMode'
          property :state, as: 'state'
          property :status, as: 'status'
        end
      end
      
      class RunningServiceList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :services, as: 'services', class: Google::Apis::MigrationcenterV1alpha1::RunningService, decorator: Google::Apis::MigrationcenterV1alpha1::RunningService::Representation
      
        end
      end
      
      class RuntimeNetworkInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connections, as: 'connections', class: Google::Apis::MigrationcenterV1alpha1::NetworkConnectionList, decorator: Google::Apis::MigrationcenterV1alpha1::NetworkConnectionList::Representation
      
          property :netstat, as: 'netstat'
          property :netstat_time, as: 'netstatTime', class: Google::Apis::MigrationcenterV1alpha1::DateTime, decorator: Google::Apis::MigrationcenterV1alpha1::DateTime::Representation
      
        end
      end
      
      class Selinux
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :mode, as: 'mode'
        end
      end
      
      class SendDiscoveryClientHeartbeatRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :errors, as: 'errors', class: Google::Apis::MigrationcenterV1alpha1::Status, decorator: Google::Apis::MigrationcenterV1alpha1::Status::Representation
      
          property :version, as: 'version'
        end
      end
      
      class Settings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :customer_consent_for_google_sales_to_access_migration_center, as: 'customerConsentForGoogleSalesToAccessMigrationCenter'
          property :disable_cloud_logging, as: 'disableCloudLogging'
          property :name, as: 'name'
          property :preference_set, as: 'preferenceSet'
        end
      end
      
      class SignedUri
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file, as: 'file'
          property :uri, as: 'uri'
        end
      end
      
      class SignedUriDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_format, as: 'fileFormat'
        end
      end
      
      class SignedUris
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :signed_uris, as: 'signedUris', class: Google::Apis::MigrationcenterV1alpha1::SignedUri, decorator: Google::Apis::MigrationcenterV1alpha1::SignedUri::Representation
      
        end
      end
      
      class SoftwareInsight
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :detected_software, as: 'detectedSoftware', class: Google::Apis::MigrationcenterV1alpha1::DetectedSoftware, decorator: Google::Apis::MigrationcenterV1alpha1::DetectedSoftware::Representation
      
        end
      end
      
      class SoleTenancyPreferences
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :commitment_plan, as: 'commitmentPlan'
          property :cpu_overcommit_ratio, as: 'cpuOvercommitRatio'
          property :host_maintenance_policy, as: 'hostMaintenancePolicy'
          collection :node_types, as: 'nodeTypes', class: Google::Apis::MigrationcenterV1alpha1::SoleTenantNodeType, decorator: Google::Apis::MigrationcenterV1alpha1::SoleTenantNodeType::Representation
      
          property :os_pricing_preferences, as: 'osPricingPreferences', class: Google::Apis::MigrationcenterV1alpha1::OperatingSystemPricingPreferences, decorator: Google::Apis::MigrationcenterV1alpha1::OperatingSystemPricingPreferences::Representation
      
        end
      end
      
      class SoleTenantNodeType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :node_name, as: 'nodeName'
        end
      end
      
      class Source
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :error_frame_count, as: 'errorFrameCount'
          property :is_managed, as: 'isManaged'
          property :name, as: 'name'
          property :pending_frame_count, as: 'pendingFrameCount'
          property :priority, as: 'priority'
          property :state, as: 'state'
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
        end
      end
      
      class SqlServerDatabaseDeployment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :features, as: 'features', class: Google::Apis::MigrationcenterV1alpha1::SqlServerFeature, decorator: Google::Apis::MigrationcenterV1alpha1::SqlServerFeature::Representation
      
          collection :server_flags, as: 'serverFlags', class: Google::Apis::MigrationcenterV1alpha1::SqlServerServerFlag, decorator: Google::Apis::MigrationcenterV1alpha1::SqlServerServerFlag::Representation
      
          collection :trace_flags, as: 'traceFlags', class: Google::Apis::MigrationcenterV1alpha1::SqlServerTraceFlag, decorator: Google::Apis::MigrationcenterV1alpha1::SqlServerTraceFlag::Representation
      
        end
      end
      
      class SqlServerFeature
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :feature_name, as: 'featureName'
        end
      end
      
      class SqlServerSchemaDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :clr_object_count, as: 'clrObjectCount'
        end
      end
      
      class SqlServerServerFlag
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :server_flag_name, as: 'serverFlagName'
          property :value, as: 'value'
          property :value_in_use, as: 'valueInUse'
        end
      end
      
      class SqlServerTraceFlag
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :scope, as: 'scope'
          property :trace_flag_name, as: 'traceFlagName'
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
      
      class TimeZone
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :version, as: 'version'
        end
      end
      
      class UpdateAssetRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :asset, as: 'asset', class: Google::Apis::MigrationcenterV1alpha1::Asset, decorator: Google::Apis::MigrationcenterV1alpha1::Asset::Representation
      
          property :request_id, as: 'requestId'
          property :update_mask, as: 'updateMask'
        end
      end
      
      class UploadFileInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :headers, as: 'headers'
          property :signed_uri, as: 'signedUri'
          property :uri_expiration_time, as: 'uriExpirationTime'
        end
      end
      
      class VMwareEngineMachinePreferences
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_machine_series, as: 'allowedMachineSeries', class: Google::Apis::MigrationcenterV1alpha1::MachineSeries, decorator: Google::Apis::MigrationcenterV1alpha1::MachineSeries::Representation
      
          property :protected_nodes, as: 'protectedNodes'
          property :storage_only_nodes, as: 'storageOnlyNodes'
        end
      end
      
      class ValidateImportJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_id, as: 'requestId'
        end
      end
      
      class ValidationReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :file_validations, as: 'fileValidations', class: Google::Apis::MigrationcenterV1alpha1::FileValidationReport, decorator: Google::Apis::MigrationcenterV1alpha1::FileValidationReport::Representation
      
          collection :job_errors, as: 'jobErrors', class: Google::Apis::MigrationcenterV1alpha1::ImportError, decorator: Google::Apis::MigrationcenterV1alpha1::ImportError::Representation
      
        end
      end
      
      class VirtualMachineArchitectureDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bios, as: 'bios', class: Google::Apis::MigrationcenterV1alpha1::BiosDetails, decorator: Google::Apis::MigrationcenterV1alpha1::BiosDetails::Representation
      
          property :cpu_architecture, as: 'cpuArchitecture'
          property :cpu_manufacturer, as: 'cpuManufacturer'
          property :cpu_name, as: 'cpuName'
          property :cpu_socket_count, as: 'cpuSocketCount'
          property :cpu_thread_count, as: 'cpuThreadCount'
          property :firmware, as: 'firmware'
          property :hyperthreading, as: 'hyperthreading'
          property :vendor, as: 'vendor'
        end
      end
      
      class VirtualMachineDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :core_count, as: 'coreCount'
          property :create_time, as: 'createTime'
          property :disk_partitions, as: 'diskPartitions', class: Google::Apis::MigrationcenterV1alpha1::DiskPartitionDetails, decorator: Google::Apis::MigrationcenterV1alpha1::DiskPartitionDetails::Representation
      
          property :guest_os, as: 'guestOs', class: Google::Apis::MigrationcenterV1alpha1::GuestOsDetails, decorator: Google::Apis::MigrationcenterV1alpha1::GuestOsDetails::Representation
      
          property :memory_mb, as: 'memoryMb'
          property :os_family, as: 'osFamily'
          property :os_name, as: 'osName'
          property :os_version, as: 'osVersion'
          property :platform, as: 'platform', class: Google::Apis::MigrationcenterV1alpha1::PlatformDetails, decorator: Google::Apis::MigrationcenterV1alpha1::PlatformDetails::Representation
      
          property :power_state, as: 'powerState'
          property :vcenter_folder, as: 'vcenterFolder'
          property :vcenter_url, as: 'vcenterUrl'
          property :vcenter_vm_id, as: 'vcenterVmId'
          property :vm_architecture, as: 'vmArchitecture', class: Google::Apis::MigrationcenterV1alpha1::VirtualMachineArchitectureDetails, decorator: Google::Apis::MigrationcenterV1alpha1::VirtualMachineArchitectureDetails::Representation
      
          property :vm_disks, as: 'vmDisks', class: Google::Apis::MigrationcenterV1alpha1::VirtualMachineDiskDetails, decorator: Google::Apis::MigrationcenterV1alpha1::VirtualMachineDiskDetails::Representation
      
          property :vm_name, as: 'vmName'
          property :vm_network, as: 'vmNetwork', class: Google::Apis::MigrationcenterV1alpha1::VirtualMachineNetworkDetails, decorator: Google::Apis::MigrationcenterV1alpha1::VirtualMachineNetworkDetails::Representation
      
          property :vm_uuid, as: 'vmUuid'
        end
      end
      
      class VirtualMachineDiskDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disks, as: 'disks', class: Google::Apis::MigrationcenterV1alpha1::DiskEntryList, decorator: Google::Apis::MigrationcenterV1alpha1::DiskEntryList::Representation
      
          property :hdd_total_capacity_bytes, :numeric_string => true, as: 'hddTotalCapacityBytes'
          property :hdd_total_free_bytes, :numeric_string => true, as: 'hddTotalFreeBytes'
          property :lsblk_json, as: 'lsblkJson'
        end
      end
      
      class VirtualMachineNetworkDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_gw, as: 'defaultGw'
          property :network_adapters, as: 'networkAdapters', class: Google::Apis::MigrationcenterV1alpha1::NetworkAdapterList, decorator: Google::Apis::MigrationcenterV1alpha1::NetworkAdapterList::Representation
      
          property :primary_ip_address, as: 'primaryIpAddress'
          property :primary_mac_address, as: 'primaryMacAddress'
          property :public_ip_address, as: 'publicIpAddress'
        end
      end
      
      class VirtualMachinePreferences
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :commitment_plan, as: 'commitmentPlan'
          property :compute_engine_preferences, as: 'computeEnginePreferences', class: Google::Apis::MigrationcenterV1alpha1::ComputeEnginePreferences, decorator: Google::Apis::MigrationcenterV1alpha1::ComputeEnginePreferences::Representation
      
          property :network_cost_parameters, as: 'networkCostParameters', class: Google::Apis::MigrationcenterV1alpha1::VirtualMachinePreferencesNetworkCostParameters, decorator: Google::Apis::MigrationcenterV1alpha1::VirtualMachinePreferencesNetworkCostParameters::Representation
      
          property :region_preferences, as: 'regionPreferences', class: Google::Apis::MigrationcenterV1alpha1::RegionPreferences, decorator: Google::Apis::MigrationcenterV1alpha1::RegionPreferences::Representation
      
          property :sizing_optimization_custom_parameters, as: 'sizingOptimizationCustomParameters', class: Google::Apis::MigrationcenterV1alpha1::VirtualMachinePreferencesSizingOptimizationCustomParameters, decorator: Google::Apis::MigrationcenterV1alpha1::VirtualMachinePreferencesSizingOptimizationCustomParameters::Representation
      
          property :sizing_optimization_strategy, as: 'sizingOptimizationStrategy'
          property :sole_tenancy_preferences, as: 'soleTenancyPreferences', class: Google::Apis::MigrationcenterV1alpha1::SoleTenancyPreferences, decorator: Google::Apis::MigrationcenterV1alpha1::SoleTenancyPreferences::Representation
      
          property :target_product, as: 'targetProduct'
          property :vmware_engine_preferences, as: 'vmwareEnginePreferences', class: Google::Apis::MigrationcenterV1alpha1::VmwareEnginePreferences, decorator: Google::Apis::MigrationcenterV1alpha1::VmwareEnginePreferences::Representation
      
        end
      end
      
      class VirtualMachinePreferencesNetworkCostParameters
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :estimated_egress_traffic_percentage, as: 'estimatedEgressTrafficPercentage'
        end
      end
      
      class VirtualMachinePreferencesSizingOptimizationCustomParameters
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aggregation_method, as: 'aggregationMethod'
          property :cpu_usage_percentage, as: 'cpuUsagePercentage'
          property :memory_usage_percentage, as: 'memoryUsagePercentage'
          property :storage_multiplier, as: 'storageMultiplier'
        end
      end
      
      class VmwareEngineMigrationTarget
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class VmwareEnginePreferences
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :commitment_plan, as: 'commitmentPlan'
          property :cpu_overcommit_ratio, as: 'cpuOvercommitRatio'
          property :license_discount_percentage, as: 'licenseDiscountPercentage'
          property :machine_preferences, as: 'machinePreferences', class: Google::Apis::MigrationcenterV1alpha1::VMwareEngineMachinePreferences, decorator: Google::Apis::MigrationcenterV1alpha1::VMwareEngineMachinePreferences::Representation
      
          property :memory_overcommit_ratio, as: 'memoryOvercommitRatio'
          property :service_type, as: 'serviceType'
          property :storage_deduplication_compression_ratio, as: 'storageDeduplicationCompressionRatio'
        end
      end
      
      class VmwarePlatformDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :esx_hyperthreading, as: 'esxHyperthreading'
          property :esx_version, as: 'esxVersion'
          property :osid, as: 'osid'
          property :vcenter_version, as: 'vcenterVersion'
        end
      end
      
      class XlsxOutputFile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :signed_uri, as: 'signedUri', class: Google::Apis::MigrationcenterV1alpha1::SignedUri, decorator: Google::Apis::MigrationcenterV1alpha1::SignedUri::Representation
      
        end
      end
    end
  end
end
