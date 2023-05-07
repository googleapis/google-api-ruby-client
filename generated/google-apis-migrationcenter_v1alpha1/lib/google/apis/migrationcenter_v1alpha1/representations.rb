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
      
      class AwsEc2PlatformDetails
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
      
      class CpuUsageSample
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
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DateTime
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
      
      class ListAssetsResponse
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
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationMetadata
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
      
      class PreferenceSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionPreferences
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
      
      class ReportSummaryUtilizationChartData
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
      
      class Settings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Source
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
      
      class VmwareDiskConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwareEngineMigrationTarget
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwarePlatformDetails
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
          property :insight_list, as: 'insightList', class: Google::Apis::MigrationcenterV1alpha1::InsightList, decorator: Google::Apis::MigrationcenterV1alpha1::InsightList::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :performance_data, as: 'performanceData', class: Google::Apis::MigrationcenterV1alpha1::AssetPerformanceData, decorator: Google::Apis::MigrationcenterV1alpha1::AssetPerformanceData::Representation
      
          collection :sources, as: 'sources'
          property :update_time, as: 'updateTime'
          property :virtual_machine_details, as: 'virtualMachineDetails', class: Google::Apis::MigrationcenterV1alpha1::VirtualMachineDetails, decorator: Google::Apis::MigrationcenterV1alpha1::VirtualMachineDetails::Representation
      
        end
      end
      
      class AssetFrame
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attributes, as: 'attributes'
          hash :labels, as: 'labels'
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
      
      class AwsEc2PlatformDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location, as: 'location'
          property :machine_type_label, as: 'machineTypeLabel'
        end
      end
      
      class AzureVmPlatformDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location, as: 'location'
          property :machine_type_label, as: 'machineTypeLabel'
          property :provisioning_state, as: 'provisioningState'
        end
      end
      
      class BatchDeleteAssetsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_missing, as: 'allowMissing'
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
        end
      end
      
      class CpuUsageSample
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :utilized_percentage, as: 'utilizedPercentage'
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
          property :vmware_config, as: 'vmwareConfig', class: Google::Apis::MigrationcenterV1alpha1::VmwareDiskConfig, decorator: Google::Apis::MigrationcenterV1alpha1::VmwareDiskConfig::Representation
      
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
      
      class GenericPlatformDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
          collection :errors, as: 'errors', class: Google::Apis::MigrationcenterV1alpha1::ImportError, decorator: Google::Apis::MigrationcenterV1alpha1::ImportError::Representation
      
          property :row_number, as: 'rowNumber'
          property :vm_name, as: 'vmName'
          property :vm_uuid, as: 'vmUuid'
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
          property :migration_insight, as: 'migrationInsight', class: Google::Apis::MigrationcenterV1alpha1::MigrationInsight, decorator: Google::Apis::MigrationcenterV1alpha1::MigrationInsight::Representation
      
        end
      end
      
      class InsightList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :insights, as: 'insights', class: Google::Apis::MigrationcenterV1alpha1::Insight, decorator: Google::Apis::MigrationcenterV1alpha1::Insight::Representation
      
          property :update_time, as: 'updateTime'
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
          property :compute_engine_target, as: 'computeEngineTarget', class: Google::Apis::MigrationcenterV1alpha1::ComputeEngineMigrationTarget, decorator: Google::Apis::MigrationcenterV1alpha1::ComputeEngineMigrationTarget::Representation
      
          property :fit, as: 'fit', class: Google::Apis::MigrationcenterV1alpha1::FitDescriptor, decorator: Google::Apis::MigrationcenterV1alpha1::FitDescriptor::Representation
      
          property :gke_target, as: 'gkeTarget', class: Google::Apis::MigrationcenterV1alpha1::GoogleKubernetesEngineMigrationTarget, decorator: Google::Apis::MigrationcenterV1alpha1::GoogleKubernetesEngineMigrationTarget::Representation
      
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
      
      class PreferenceSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
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
      
          collection :group_findings, as: 'groupFindings', class: Google::Apis::MigrationcenterV1alpha1::ReportSummaryGroupFinding, decorator: Google::Apis::MigrationcenterV1alpha1::ReportSummaryGroupFinding::Representation
      
        end
      end
      
      class ReportSummaryAssetAggregateStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :asset_age, as: 'assetAge', class: Google::Apis::MigrationcenterV1alpha1::ReportSummaryChartData, decorator: Google::Apis::MigrationcenterV1alpha1::ReportSummaryChartData::Representation
      
          property :core_count_histogram, as: 'coreCountHistogram', class: Google::Apis::MigrationcenterV1alpha1::ReportSummaryHistogramChartData, decorator: Google::Apis::MigrationcenterV1alpha1::ReportSummaryHistogramChartData::Representation
      
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
      
      class ReportSummaryGroupFinding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :asset_aggregate_stats, as: 'assetAggregateStats', class: Google::Apis::MigrationcenterV1alpha1::ReportSummaryAssetAggregateStats, decorator: Google::Apis::MigrationcenterV1alpha1::ReportSummaryAssetAggregateStats::Representation
      
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :overlapping_asset_count, :numeric_string => true, as: 'overlappingAssetCount'
          collection :preference_set_findings, as: 'preferenceSetFindings', class: Google::Apis::MigrationcenterV1alpha1::ReportSummaryGroupPreferenceSetFinding, decorator: Google::Apis::MigrationcenterV1alpha1::ReportSummaryGroupPreferenceSetFinding::Representation
      
        end
      end
      
      class ReportSummaryGroupPreferenceSetFinding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :machine_finding, as: 'machineFinding', class: Google::Apis::MigrationcenterV1alpha1::ReportSummaryMachineFinding, decorator: Google::Apis::MigrationcenterV1alpha1::ReportSummaryMachineFinding::Representation
      
          property :machine_preferences, as: 'machinePreferences', class: Google::Apis::MigrationcenterV1alpha1::VirtualMachinePreferences, decorator: Google::Apis::MigrationcenterV1alpha1::VirtualMachinePreferences::Representation
      
          property :monthly_cost_compute, as: 'monthlyCostCompute', class: Google::Apis::MigrationcenterV1alpha1::Money, decorator: Google::Apis::MigrationcenterV1alpha1::Money::Representation
      
          property :monthly_cost_network_egress, as: 'monthlyCostNetworkEgress', class: Google::Apis::MigrationcenterV1alpha1::Money, decorator: Google::Apis::MigrationcenterV1alpha1::Money::Representation
      
          property :monthly_cost_os_license, as: 'monthlyCostOsLicense', class: Google::Apis::MigrationcenterV1alpha1::Money, decorator: Google::Apis::MigrationcenterV1alpha1::Money::Representation
      
          property :monthly_cost_other, as: 'monthlyCostOther', class: Google::Apis::MigrationcenterV1alpha1::Money, decorator: Google::Apis::MigrationcenterV1alpha1::Money::Representation
      
          property :monthly_cost_storage, as: 'monthlyCostStorage', class: Google::Apis::MigrationcenterV1alpha1::Money, decorator: Google::Apis::MigrationcenterV1alpha1::Money::Representation
      
          property :monthly_cost_total, as: 'monthlyCostTotal', class: Google::Apis::MigrationcenterV1alpha1::Money, decorator: Google::Apis::MigrationcenterV1alpha1::Money::Representation
      
          property :preferred_region, as: 'preferredRegion'
          property :pricing_track, as: 'pricingTrack'
          property :top_priority, as: 'topPriority'
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
      
      class ReportSummaryUtilizationChartData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :free, :numeric_string => true, as: 'free'
          property :used, :numeric_string => true, as: 'used'
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
      
      class Settings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :preference_set, as: 'preferenceSet'
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
          property :uri, as: 'uri'
          property :uri_expiration_time, as: 'uriExpirationTime'
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
      
          property :region_preferences, as: 'regionPreferences', class: Google::Apis::MigrationcenterV1alpha1::RegionPreferences, decorator: Google::Apis::MigrationcenterV1alpha1::RegionPreferences::Representation
      
          property :sizing_optimization_strategy, as: 'sizingOptimizationStrategy'
        end
      end
      
      class VmwareDiskConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backing_type, as: 'backingType'
          property :rdm_compatibility_mode, as: 'rdmCompatibilityMode'
          property :shared, as: 'shared'
          property :vmdk_disk_mode, as: 'vmdkDiskMode'
        end
      end
      
      class VmwareEngineMigrationTarget
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class VmwarePlatformDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :esx_version, as: 'esxVersion'
          property :osid, as: 'osid'
          property :vcenter_version, as: 'vcenterVersion'
        end
      end
    end
  end
end
